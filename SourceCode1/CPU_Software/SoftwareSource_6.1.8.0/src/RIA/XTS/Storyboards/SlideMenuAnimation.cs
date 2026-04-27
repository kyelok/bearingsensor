using System;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using XTS.Controls;

namespace XTS.Storyboards
{
    public class SlideMenuAnimation
    {
        Storyboard storyboardSlideOutEffect;
        Storyboard storyboardSlideInEffect;
        NavigationPresenter navMenuElement;

        /// <summary>
        /// Setup our SlideMenu effect animations
        /// </summary>
        public SlideMenuAnimation()
        {
            storyboardSlideOutEffect = new Storyboard();
            storyboardSlideInEffect = new Storyboard(); 
        }

        /// <summary>
        /// We setup the animatons setting the start and end positions of the left edge
        /// </summary>
        /// <param name="element">The Menu we wish to animate</param>
        /// <param name="startLeft">start position of the left edge</param>
        /// <param name="endLeft">end position of the left edge</param>
        public void SetupAnimation(NavigationPresenter element, double startLeft, double endLeft)
        {
            navMenuElement = element;

            TimeSpan ts = new TimeSpan(0, 0, 0, 0, 500);

            DoubleAnimation slideOut = new DoubleAnimation();
            slideOut.Duration = new Duration(ts);
            slideOut.AutoReverse = false;
            slideOut.From = startLeft;
            slideOut.To = endLeft;
            Storyboard.SetTarget(slideOut, element);
            Storyboard.SetTargetProperty(slideOut, new PropertyPath("(Canvas.Left)"));
            storyboardSlideOutEffect.Children.Add(slideOut);


            DoubleAnimation opacityOut = new DoubleAnimation();
            opacityOut.Duration = new Duration(ts);
            opacityOut.AutoReverse = false;
            opacityOut.From = 0.0;
            opacityOut.To = 1.0;
            Storyboard.SetTarget(opacityOut, element);
            Storyboard.SetTargetProperty(opacityOut, new PropertyPath("(Opacity)"));
            storyboardSlideOutEffect.Children.Add(opacityOut); 


             DoubleAnimation slideIn = new DoubleAnimation();
            slideIn.Duration = new Duration(ts);
            slideIn.AutoReverse = false;
            slideIn.From = endLeft;
            slideIn.To = startLeft;
            Storyboard.SetTarget(slideIn, element);
            Storyboard.SetTargetProperty(slideIn, new PropertyPath("(Canvas.Left)"));
            storyboardSlideInEffect.Children.Add(slideIn);


            DoubleAnimation opacityIn = new DoubleAnimation();
            opacityIn.Duration = new Duration(ts);
            opacityIn.AutoReverse = false;
            opacityIn.From = 1.0;
            opacityIn.To = 0.0;
            Storyboard.SetTarget(opacityIn, element);
            Storyboard.SetTargetProperty(opacityIn, new PropertyPath("(Opacity)"));
            storyboardSlideInEffect.Children.Add(opacityIn);   
        }

        /// <summary>
        /// Start the slide out animation 
        /// </summary>
        public void SlideOut()
        {
            navMenuElement.Visibility = Visibility.Visible;
            storyboardSlideOutEffect.Begin();
        }

        /// <summary>
        /// Start the slide in animation
        /// </summary>
        public void SlideIn()
        {
            storyboardSlideInEffect.Begin();
            storyboardSlideInEffect.Completed += new EventHandler(storyboardSlideInEffect_Completed);
        }

        /// <summary>
        /// Event callback to notify when the slide in animation is complete 
        /// so we can hide the menu.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void storyboardSlideInEffect_Completed(object sender, EventArgs e)
        {
            navMenuElement.Visibility = Visibility.Collapsed;
        }
    }
}
