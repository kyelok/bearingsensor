using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Browser;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Media;
using Telerik.Windows.Controls;
using System.Threading;
using XTS.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Exposes functionality to the javascript
    /// </summary>
    public class XTSScriptableKeyboard
    {
        public XTSScriptableKeyboard()
        {
            HtmlPage.RegisterScriptableObject("XTSKeyboardJavascript", this);
        }

        private string currentText = "";
        public string CurrentText
        {
            get
            {
                // Code to be executed
                string code = string.Format("GetCurrentText('{0}');", Settings.SETTINGS_CONTENTID);
                HtmlPage.Window.Eval(code);
                return this.currentText; // Will be updated during the execution of "code"
            }
        }
        [ScriptableMember]
        public void SetCurrentText(string text)
        {
            this.currentText = text;
        }

        [ScriptableMember]
        public void ShowKeyboard(bool show)
        {
            if (show)
            {
                InputKeyboard.DisplayJS(false);
            }
            else
            {
                InputKeyboard.Hide();
            }
        }

        [ScriptableMember]
        public void ShowNumericKeyboard(bool show)
        {
            if (show)
            {
                InputKeyboard.DisplayJS(true);
            }
            else
            {
                InputKeyboard.Hide();
            }
        }
    }

    public partial class InputKeyboard : RadWindow
    {
        #region Submit/Enter/Return button handling
        /// <summary>
        /// Callback delegate for when user presses the submit/enter button
        /// </summary>
        public delegate void XTSKeyboardEnterCallback();

        public enum XTSKeyboardEnterKey
        {
            Enter,
            Submit,
            Go,
            Login,
            Next,
            OK
        }

        private XTSKeyboardEnterCallback enterCallback = null;

        private XTSKeyboardEnterKey enterKey
        {
            set
            {
                string text = "Enter";
                switch (value)
                {
                    case XTSKeyboardEnterKey.Submit:
                        {
                            text = XTS.LocalizedResources.GetResourceString("XTSStringKeyboardSubmit");
                            break;
                        }
                    case XTSKeyboardEnterKey.Go:
                        {
                            text = XTS.LocalizedResources.GetResourceString("XTSStringKeyboardGo");
                            break;
                        }
                    case XTSKeyboardEnterKey.Login:
                        {
                            text = XTS.LocalizedResources.GetResourceString("XTSStringKeyboardLogin");
                            break;
                        }
                    case XTSKeyboardEnterKey.OK:
                        {
                            text = XTS.LocalizedResources.GetResourceString("XTSStringKeyboardOK");
                            break;
                        }
                    case XTSKeyboardEnterKey.Next:
                        {
                            text = XTS.LocalizedResources.GetResourceString("XTSStringKeyboardNext");
                            break;
                        }
                    case XTSKeyboardEnterKey.Enter:
                    default:
                        {
                            // Do nothing
                            break;
                        }
                }
                this.Return.Content = text;
            }
        }

        #endregion // Submit/Enter/Return button handling

        private bool isJavaScript = false;

        private static XTSScriptableKeyboard javascriptInterface = new XTSScriptableKeyboard();

        private static Color textColor = (Color)Application.Current.Resources["ColorAMOTText"];
        private static Color backgroundColor = (Color)Application.Current.Resources["ColorAMOTButton"];

        private static string DEFAULT_KEYS = XTS.LocalizedResources.GetResourceString("XTSStringKeyboardDefaultKeys");
        private static string DEFAULT_ALTKEYS = XTS.LocalizedResources.GetResourceString("XTSStringKeyboardDefaultAltKeys");

        private string[] lines;
        private string[] altlines;

        private string keys = null;
        private string altKeys = null;

        private List<CharacterLookup> characterList;
        private List<Button> keyboardButtons; 

        private object parentInput;
        private bool isNumeric;

        #region Constructors
        /// <summary>
        /// Constructor for InputKeyboard. 
        /// Sets up a map for extra symbols
        /// </summary>
        public InputKeyboard()
            : this(InputKeyboard.DEFAULT_KEYS, InputKeyboard.DEFAULT_ALTKEYS)
        { }

        /// <summary>
        /// Constructor for InputKeyboard,
        /// Displays the keyboard replacing the default keys.
        /// </summary>
        /// <param name="keys"></param>
        public InputKeyboard(string keys)
            : this(keys, InputKeyboard.DEFAULT_ALTKEYS)
        { }

        /// <summary>
        /// Constructor for InputKeyboard,
        /// Displays the keyboard replacing the default keys and alt keys. 
        /// </summary>
        /// <param name="keys"></param>
        /// <param name="alt_keys"></param>
        public InputKeyboard(string keys, string alt_keys)
        {
            InitializeComponent();

            this.keys = keys;
            this.altKeys = alt_keys;
            InitKeyboard();
        }
        #endregion // Constructors

        #region Show/hide keyboard
        private static InputKeyboard instance = null;

        public static void DisplayJS(bool numeric)
        {
            if (InputKeyboard.instance == null)
            {
                    // create!
                    InputKeyboard.instance = new InputKeyboard();
            }
            InputKeyboard.instance.ShowKeyboard(null, numeric, XTSKeyboardEnterKey.Enter, null, true);
        }

        public static void Display(object parent, bool numeric, XTSKeyboardEnterKey enterKey, XTSKeyboardEnterCallback enterCallback)
        {
            if (InputKeyboard.instance == null)
            {
                // create!
                InputKeyboard.instance = new InputKeyboard();
            }
            InputKeyboard.instance.ShowKeyboard(parent, numeric, enterKey, enterCallback, false);
        }

        public static void Hide()
        {
            if (InputKeyboard.instance != null)
            {
                InputKeyboard.instance.HideKeyboard();
            }
        }

        private delegate void ShowKeyboardDelegate(object parent, bool numeric, XTSKeyboardEnterKey enterKey, XTSKeyboardEnterCallback enterCallback, bool isJavaScirpt);
        public void ShowKeyboard(object parent, bool numeric, XTSKeyboardEnterKey enterKey, XTSKeyboardEnterCallback enterCallback, bool isJavaScript)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                //Reset keybaord to default:
                this.LShift.IsChecked = false;
                this.RShift.IsChecked = false;
                this.AltText.IsChecked = false;

                this.parentInput = parent;
                this.enterKey = enterKey;
                this.enterCallback = enterCallback;
                this.isJavaScript = isJavaScript;

                if (this.isNumeric != numeric)
                {
                    this.isNumeric = numeric;
                    // Setup needed
                    SetupKeyboard(AltText.IsChecked.Value);
                }

                MainPage mp = MainPage.GetInstance() as MainPage;
                this.Top = mp.ActualHeight - this.Height;
                this.Left = (mp.ActualWidth / 2) - (this.Width / 2);

                // Only show if currently not visible
                if (!this.IsOpen)
                {
                    Show();
                }
                else
                {
                    this.Visibility = System.Windows.Visibility.Visible;
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new ShowKeyboardDelegate(this.ShowKeyboard), new object[] { parent, numeric, enterKey, enterCallback, isJavaScript });
            }
        }

        public void HideKeyboard()
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                // Reset enter key
                this.enterKey = XTSKeyboardEnterKey.Enter;
                this.enterCallback = null;

                // We have to close rather than just set invisible to keep
                // z-order with other popup windows
                this.Close();
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(this.HideKeyboard);
            }
        }
        #endregion // Show/hide keyboard

        #region Focus Handlers

        public static bool HasFocus()
        {
            return InputKeyboard.instance.IsInFocus();
        }

        /// <summary>
        /// When the keyboard loses focus we check to see the reason
        /// for it. If this is because a new input box has been selected 
        /// then we close. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void InputKeyboard_LostFocus(object sender, RoutedEventArgs e)
        {
            if (!IsInFocus())
            {
                this.Close();
            }
        }

        /// <summary>
        /// Check for when a button loses focus. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void b_LostFocus(object sender, RoutedEventArgs e)
        {
            if (!IsInFocus())
            {
                this.Close();
            }
        }

        /// <summary>
        /// We check to see if a keyboard item is in focus. 
        /// </summary>
        /// <param name="sender"></param>
        /// <returns></returns>
        public bool IsInFocus()
        {
            bool inFocus = false;
            object obj = FocusManager.GetFocusedElement();
            object child = null;

            if (this.isJavaScript)
            {
                inFocus = (obj is RadHtmlPlaceholder);
            }
            else
            {
                if (obj is Button)
                {
                    Button b = obj as Button;
                    child = this.FindName(b.Name);
                }
                else if (obj is ToggleButton)
                {
                    ToggleButton b = obj as ToggleButton;
                    child = this.FindName(b.Name);
                }
                if (child == null && obj != this.parentInput)
                {
                    inFocus = false;
                }
                else
                {
                    inFocus = true;
                }
            }

            return inFocus; 
        }

        #endregion // Focus Handlers

        #region Keyboard Init

        /// <summary>
        /// Initialises properties for the keyboard. 
        /// </summary>
        private void InitKeyboard()
        {
            this.keyboardButtons = new List<Button>();
            this.characterList = new List<CharacterLookup>();

            this.characterList.Add(new CharacterLookup("APOST", "'"));
            this.characterList.Add(new CharacterLookup("COMMA", ","));
            this.characterList.Add(new CharacterLookup("FULLSTOP", "."));
            this.characterList.Add(new CharacterLookup("QUESTION", "?"));
            this.characterList.Add(new CharacterLookup("AT", "@"));
            this.characterList.Add(new CharacterLookup("HASH", "#"));
            this.characterList.Add(new CharacterLookup("POUND", "£"));
            this.characterList.Add(new CharacterLookup("PERCENT", "%"));
            this.characterList.Add(new CharacterLookup("AMPSAND", "&"));
            this.characterList.Add(new CharacterLookup("ASTERIK", "*"));
            this.characterList.Add(new CharacterLookup("MINUS", "-"));
            this.characterList.Add(new CharacterLookup("PLUS", "+"));
            this.characterList.Add(new CharacterLookup("OPENBRACKET", "("));
            this.characterList.Add(new CharacterLookup("CLOSEBRACKET", ")"));
            this.characterList.Add(new CharacterLookup("EXCLAMATION", "!"));
            this.characterList.Add(new CharacterLookup("QUOTE", "\""));
            this.characterList.Add(new CharacterLookup("COLON", ":"));
            this.characterList.Add(new CharacterLookup("SEMICOLON", ";"));
            this.characterList.Add(new CharacterLookup("BACKSLASH", "\\"));
            this.characterList.Add(new CharacterLookup("DOLLAR", "$"));
            this.characterList.Add(new CharacterLookup("UNDERSCORE", "_"));
            this.characterList.Add(new CharacterLookup("TILDE", "~"));

            this.LostFocus += new RoutedEventHandler(InputKeyboard_LostFocus);

            this.Header = null;
            this.BorderThickness = new Thickness(0, 0, 0, 0);

            SetupKeyboard(false);
        }

        /// <summary>
        /// Sets up the keyboard, we check to see if we are in Alt mode
        /// if so we display the altkeys instead of the default keys.
        /// 
        /// If the textbox is a Numeric textbox we instead show that. 
        /// </summary>
        /// <param name="isAlt"></param>
        private void SetupKeyboard(bool isAlt)
        {
            if (this.isNumeric)
            {
                this.AlphaKeyboard.Visibility = System.Windows.Visibility.Collapsed;
                this.NumericKeyboard.Visibility = System.Windows.Visibility.Visible;

                this.Width = 177;
                this.Height = 252; 
            }
            else
            {
                this.AlphaKeyboard.Visibility = System.Windows.Visibility.Visible;
                this.NumericKeyboard.Visibility = System.Windows.Visibility.Collapsed;
                
                string[] currentKeys;

                this.lines = this.keys.Split('-');
                this.altlines = this.altKeys.Split('-');

                this.keyboardButtons.Clear();
                this.Line1Keys.Children.Clear();
                this.Line2Keys.Children.Clear();
                this.Line3Keys.Children.Clear();

                if (!isAlt)
                {
                    currentKeys = this.lines;
                }
                else
                {
                    currentKeys = this.altlines;
                }

                ParseString(currentKeys[0], this.Line1Keys);
                ParseString(currentKeys[1], this.Line2Keys);
                ParseString(currentKeys[2], this.Line3Keys);

                this.Width = 640;
                this.Height = 252;

                if (this.isJavaScript)
                {
                    this.CaratLeft.Visibility = Visibility.Collapsed;
                    this.CaratRight.Visibility = Visibility.Collapsed;
                }
                else
                {
                    this.CaratLeft.Visibility = Visibility.Visible;
                    this.CaratRight.Visibility = Visibility.Visible;
                }
            }
        }

        /// <summary>
        /// We parse the keyboard string that comes in and create buttons
        /// with the content set. 
        /// </summary>
        /// <param name="line"></param>
        /// <param name="panel"></param>
        private void ParseString(string line, StackPanel panel)
        {
            string[] characters = line.Split(',');

            foreach (string s in characters)
            {
                string label = null;

                // Search character list for this 
                foreach (CharacterLookup cl in this.characterList)
                {
                    if (cl.Key.Equals(s))
                    {
                        label = cl.Character;
                        break;
                    }
                }
                if (label == null)
                {
                    label = s;
                }

                Button b = new Button();

                b.Content = label;
                b.IsTabStop = false;

                b.Margin = new Thickness(4, 0, 0, 0);
                b.Width = 44;
                b.Height = 44;

                b.Style = Application.Current.Resources["ButtonStyleAMOT"] as Style;
                b.ContentTemplate = Application.Current.Resources["ContentTemplateAMOTButton"] as DataTemplate;

                b.Foreground = new SolidColorBrush(InputKeyboard.textColor);
                b.Background = new SolidColorBrush(InputKeyboard.backgroundColor);

                b.LostFocus += new RoutedEventHandler(b_LostFocus);

                b.Click += new RoutedEventHandler(b_Click);

                b.Name = s;

                panel.Children.Add(b);
                this.keyboardButtons.Add(b);
            }
        }

        #endregion // Keyboard Init

        #region Keyboard Button Presses
        /// <summary>
        /// Callback for each keyboard button click we check to see
        /// if any special modifiers have been applied (e.g shift) and
        /// reset the keyboard. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void b_Click(object sender, RoutedEventArgs e)
        {
            Button b = sender as Button;
            if (this.isJavaScript)
            {
                // Code to be executed
                string code = string.Format("UpdateTextComponent('{0}', '{1}');", Settings.SETTINGS_CONTENTID,
                    InputKeyboard.javascriptInterface.CurrentText + b.Content);
                HtmlPage.Window.Eval(code);
            }
            else
            {
                InputBox ib = this.parentInput as InputBox;
                int selectionStart = ib.SelectionStart + 1;
                ib.SelectedText = (string)b.Content;

                if (this.LShift.IsChecked.Value || this.RShift.IsChecked.Value)
                {
                    foreach (Button bListItem in keyboardButtons)
                    {
                        string value = bListItem.Content as string;
                        bListItem.Content = value.ToLower();
                    }

                    this.LShift.IsChecked = false;
                    this.RShift.IsChecked = false;
                }

                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new InputBox.FocusDelegate(ib.Focus), new object[] { selectionStart, 0 });
            }
        }

        /// <summary>
        /// If backspace is clicked we delete the text
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void BackSpace_Click(object sender, RoutedEventArgs e)
        {
            if (this.isJavaScript)
            {
                // Code to be executed
                string currentText = InputKeyboard.javascriptInterface.CurrentText;
                if (currentText.Length > 0)
                {
                    string code = string.Format("UpdateTextComponent('{0}', '{1}');", Settings.SETTINGS_CONTENTID,
                        currentText.Remove(currentText.Length-1, 1));
                    HtmlPage.Window.Eval(code);
                }
            }
            else
            {
                InputBox ib = this.parentInput as InputBox;
                int selectionStart = ib.SelectionStart;
                if (ib.Text.Length > 0)
                {
                    if (selectionStart > 0)
                    {
                        selectionStart--;
                        ib.Select(selectionStart, 1);
                        ib.SelectedText = "";
                    }
                    //ib.Text = ib.Text.Remove(ib.Text.Length - 1);
                }
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new InputBox.FocusDelegate(ib.Focus), new object[] { selectionStart, 0 });
            }
        }

        /// <summary>
        /// If return is clicked we add a new line
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Return_Click(object sender, RoutedEventArgs e)
        {
            InputBox ib = this.parentInput as InputBox;

            if (!ib.AcceptsReturn || ib.IsPassword)
            {
                this.Close();
            }
            else
            {
                ib.SelectedText = "\n";
            }

            if (this.enterCallback != null)
            {
                this.enterCallback();
            }
        }

        /// <summary>
        /// If shift is clicked we modify the keys to their upper equivilant. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Shift_Click(object sender, RoutedEventArgs e)
        {
            ToggleButton tb = sender as ToggleButton;

            if (sender == this.RShift)
            {
                this.LShift.IsChecked = this.RShift.IsChecked;
            }
            else if (sender == this.LShift)
            {
                this.RShift.IsChecked = this.LShift.IsChecked;
            }
            
            if (tb.IsChecked.Value)
            {
                foreach (Button b in keyboardButtons)
                {
                    string value = b.Content as string;
                    b.Content = value.ToUpper(); 
                }
            }
            else
            {
                foreach (Button b in keyboardButtons)
                {
                    string value = b.Content as string;
                    b.Content = value.ToLower();
                }
            }
        }

        /// <summary>
        /// If Space is clicked we insert a space. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Space_Click(object sender, RoutedEventArgs e)
        {
            InputBox ib = this.parentInput as InputBox;
            ib.SelectedText = " ";
        }

        /// <summary>
        /// Togglebutton to control showing Alternative text or not. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AltText_Click(object sender, RoutedEventArgs e)
        {
            ToggleButton s = sender as ToggleButton;

            if (s.IsChecked.Value)
            {
                SetupKeyboard(true);
            }
            else
            {
                SetupKeyboard(false);
            }
        }

        /// <summary>
        /// Moves the Carat Left by one
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CaratLeft_Click(object sender, RoutedEventArgs e)
        {
            InputBox ib = this.parentInput as InputBox;
            if (ib.SelectionStart > 0)
            {
                int selectionStart = ib.SelectionStart - 1;
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new InputBox.FocusDelegate(ib.Focus), new object[] { selectionStart, 0 });
            }
        }

        /// <summary>
        /// Moves the Carat right by one
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CaratRight_Click(object sender, RoutedEventArgs e)
        {
            InputBox ib = this.parentInput as InputBox;
            int selectionStart = ib.SelectionStart + 1;
            System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new InputBox.FocusDelegate(ib.Focus), new object[] { selectionStart, 0 });
        }
#endregion // Keyboard Button Presses

        #region Reposition Childwindow to not overlay keyboard
        private const int KEYBOARD_HEIGHT = 252;

        /// <summary>
        /// Move the specified window so that it doesn't obstruct the on screen keyboard
        /// </summary>
        /// <param name="window">The child window to move</param>
        public static void MoveChildWindow(ChildWindow window)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();

            //Dispatch the methods so that they will be scheduled to
            //run once all current UI operations have completed.
            //This will guarantee that the window is visible before we try and move it.
            mp.Dispatcher.BeginInvoke(() =>
            {
                if (System.Windows.Media.VisualTreeHelper.GetChildrenCount(window) > 0)
                {
                    FrameworkElement root = System.Windows.Media.VisualTreeHelper.GetChild(window, 0) as FrameworkElement;
                    FrameworkElement contentRoot = (FrameworkElement)root.FindName("ContentRoot");

                    // Calculate the distance between window bottom and page bottom
                    double pageHeight = mp.ActualHeight;
                    double windowHeight = contentRoot.ActualHeight;

                    double spaceBelow = (pageHeight - windowHeight) / 2;

                    if (spaceBelow < InputKeyboard.KEYBOARD_HEIGHT)
                    {
                        // We need to move the window up from the bottom
                        // Note: We set the TOP margin to negative so that the childwindow size isn't adjusted
                        contentRoot.Margin = new Thickness(0, -InputKeyboard.KEYBOARD_HEIGHT, 0, InputKeyboard.KEYBOARD_HEIGHT);
                        contentRoot.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
                    }
                }
                else
                {
                    // TODO: Handle this error!  The window should be created when this function is called.
                    //throw new System.InvalidOperationException("InputKeyboard.MoveChildWindow- Window must be a valid childwindow");
                }
            });

        }
        #endregion // Reposition Childwindow to not overlay keyboard

        private void InputKeyboard_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            if (this.parentInput != null)
			{
				if (!this.isJavaScript)
				{
                    InputBox ib = this.parentInput as InputBox;
                    System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new InputBox.FocusDelegate(ib.Focus), new object[] { -1, 0 });
				}
			}
        }
    }

    /// <summary>
    /// Class to store a Character and it's lookup code.
    /// </summary>
    /// <remarks>TODO: Replace with a dictionary?</remarks>
    public class CharacterLookup
    {
        public string Key {get; set;}
        public string Character { get; set; }

        public CharacterLookup(string key, string character)
        {
            this.Key = key;
            this.Character = character; 
        }
    }
}
