using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EmbeddedBrowser
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            Form1_SizeChanged(this, null);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            webBrowser1.Navigate(textBox1.Text);
        }

        private void webBrowser1_ProgressChanged(object sender, WebBrowserProgressChangedEventArgs e)
        {
            toolStripStatusLabel1.Text = webBrowser1.StatusText;
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Return)
            {
                button1_Click(this, new EventArgs());
            }
        }

        private void Form1_SizeChanged(object sender, EventArgs e)
        {
            this.Text = string.Format("Web Browser Test Window. Size: {0}x{1}px", webBrowser1.Width, webBrowser1.Height);
        }
    }
}
