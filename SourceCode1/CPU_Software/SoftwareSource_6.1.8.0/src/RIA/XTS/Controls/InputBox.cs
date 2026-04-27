using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

using XTS.ChildWindows;

namespace XTS.Controls
{
    public class InputBox: TextBox
    {
        private static object kbLock = new object();

        private object topParent = null;
        public object TopParent
        {
            set
            {
                this.topParent = value;
            }
        }

        #region Enter key handling
        private InputKeyboard.XTSKeyboardEnterKey enterKey = InputKeyboard.XTSKeyboardEnterKey.Enter;
        public InputKeyboard.XTSKeyboardEnterKey EnterKey
        {
            set
            {
                this.enterKey = value;
            }
        }
        private InputKeyboard.XTSKeyboardEnterCallback enterCallback = null;
        public InputKeyboard.XTSKeyboardEnterCallback EnterCallback
        {
            set
            {
                this.enterCallback = value;
            }
        }
        #endregion // Enter key handling

        public bool IsNumericOnly
        {
            get;
            set;
        }

        public static readonly DependencyProperty IsNumericOnlyProperty = DependencyProperty.Register(
         "IsNumericOnly",
         typeof(bool),
         typeof(InputBox),
         new PropertyMetadata(null));

        public bool IsSingleLine
        {
            get;
            set;
        }

        public static readonly DependencyProperty IsSingleLineProperty = DependencyProperty.Register(
         "IsSingleLine",
         typeof(bool),
         typeof(InputBox),
         new PropertyMetadata(null));

        public bool IsPassword
        {
            get;
            set;
        }

        public static readonly DependencyProperty IsPasswordProperty = DependencyProperty.Register(
         "IsPassword",
         typeof(bool),
         typeof(InputBox),
         new PropertyMetadata(null));

        private string currentText = "";

        public string PasswordText
        {
            get
            {
                return this.currentText;
            }
        }

        public InputBox()
        {
            this.LostFocus   += new RoutedEventHandler(this.InputBoxLostFocus);
            this.GotFocus    += new RoutedEventHandler(this.InputBox_GotFocus);
            this.TextChanged += new TextChangedEventHandler(this.InputBox_TextChanged);
        }

        void InputBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (IsPassword)
            {
                TextBox textBox = sender as TextBox;
                if (textBox != null)
                {
                    string editText = textBox.Text;
                    if (editText.Length < this.currentText.Length)
                    {
                        this.currentText = this.currentText.Substring(0, editText.Length);
                    }
                    if (editText != "")
                    {
                        for (int i = 0; i < editText.Length; i++)
                        {
                            if (editText[i] != '\u25CF')
                            {
                                string temp = editText.Remove(i, 1);
                                textBox.Text = temp.Insert(i, "\u25CF");
                                this.currentText = this.currentText.Insert(this.currentText.Length, editText[i].ToString());
                            }
                        }
                    }

                    this.Select(this.currentText.Length, 0);
                }
            }
        }

        private int selectionStart = -1;
        private int selectionLength = 0;

        void InputBox_GotFocus(object sender, RoutedEventArgs e)
        {
            lock (InputBox.kbLock)
            {
                InputKeyboard.Display(this, this.IsNumericOnly, this.enterKey, this.enterCallback);

                if (this.selectionStart >= 0)
                {
                    this.Select(this.selectionStart, this.selectionLength);
                }
                else
                {
                    this.Select(this.Text.Length, 0);
                }
                if ((this.topParent != null) &&
                    (this.topParent is ChildWindow))
                {
                    InputKeyboard.MoveChildWindow(this.topParent as ChildWindow);
                }
            }
        }

        private void InputBoxLostFocus(object sender, RoutedEventArgs e)
        {
            lock (InputBox.kbLock)
            {
                // Only close if the keyboard hasn't taken the focus
                if (!InputKeyboard.HasFocus())
                {
                    // Close keyboard
                    InputKeyboard.Hide();
                }
            }
        }

        public delegate void FocusDelegate(int caratPosition, int selectionCount);

        public void Focus(int selectionStart, int length)
        {
            this.selectionStart = selectionStart;
            this.selectionLength = length;
            this.Focus();
        }
    }
}
