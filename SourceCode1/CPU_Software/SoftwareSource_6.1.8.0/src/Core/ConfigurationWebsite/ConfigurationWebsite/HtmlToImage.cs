/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using System;

namespace ConfigurationWebsite
{
    /// <summary>
    /// Class to renderer a HTML page to an image
    /// </summary>
    public class HtmlToImage
    {
        Bitmap m_Bitmap;
        string m_Url;
        int m_BrowserWidth, m_BrowserHeight, m_ThumbnailWidth, m_ThumbnailHeight;

        /// <summary>
        /// Constructs the class
        /// </summary>
        /// <param name="Url">URL of the page to renderer</param>
        /// <param name="BrowserWidth">The width of the browser</param>
        /// <param name="BrowserHeight">The height of the browser</param>
        /// <param name="ThumbnailWidth">The width of the image</param>
        /// <param name="ThumbnailHeight">The height of the image</param>
        public HtmlToImage(string Url, int BrowserWidth, int BrowserHeight, int ThumbnailWidth, int ThumbnailHeight)
        {
            m_Url = Url;
            m_BrowserHeight = BrowserHeight;
            m_BrowserWidth = BrowserWidth;
            m_ThumbnailWidth = ThumbnailWidth;
            m_ThumbnailHeight = ThumbnailHeight;
        }

        /// <summary>
        /// Renders a HTML file to a image
        /// </summary>
        /// <param name="Url">URL of the tile to renderer</param>
        /// <param name="BrowserWidth">Width of the browser</param>
        /// <param name="BrowserHeight">Height of the browser</param>
        /// <param name="ThumbnailWidth">Width of the target image</param>
        /// <param name="ThumbnailHeight">Height of the target image</param>
        /// <returns></returns>
        public static Bitmap GetWebSiteThumbnail(string Url, int BrowserWidth, int BrowserHeight, int ThumbnailWidth, int ThumbnailHeight)
        {
            HtmlToImage thumbnailGenerator = new HtmlToImage(Url, BrowserWidth, BrowserHeight, ThumbnailWidth, ThumbnailHeight);
            return thumbnailGenerator.GenerateWebSiteThumbnailImage();
        }

        /// <summary>
        /// Generates the image
        /// </summary>
        /// <returns>A Bitmap holding the image of the redered file</returns>
        private Bitmap GenerateWebSiteThumbnailImage()
        {
            Thread m_thread = new Thread(new ThreadStart(StartWebSiteThumbnailImage));
            m_thread.SetApartmentState(ApartmentState.STA);
            m_thread.Start();
            m_thread.Join();
            return m_Bitmap;
        }

        /// <summary>
        /// Starts the image being rendered and waits for it to complete
        /// </summary>
        private void StartWebSiteThumbnailImage()
        {
            WebBrowser webBrowser = new WebBrowser();
            webBrowser.ScrollBarsEnabled = false;
            Uri uriOfPage = new Uri(string.Format("file:///{0}", m_Url),UriKind.Absolute);
            webBrowser.Navigate(uriOfPage);
            webBrowser.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(WebBrowser_DocumentCompleted);
            while (webBrowser.ReadyState != WebBrowserReadyState.Complete)
            {
                Application.DoEvents();
            }
            webBrowser.Dispose();
        }

        /// <summary>
        /// Waits for completion of the rendering
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void WebBrowser_DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
        {
            WebBrowser webBrowser = (WebBrowser)sender;
            webBrowser.ClientSize = new Size(this.m_BrowserWidth, this.m_BrowserHeight);
            webBrowser.ScrollBarsEnabled = false;
            m_Bitmap = new Bitmap(webBrowser.Bounds.Width, webBrowser.Bounds.Height);
            webBrowser.BringToFront();
            webBrowser.DrawToBitmap(m_Bitmap, webBrowser.Bounds);
            m_Bitmap = (Bitmap)m_Bitmap.GetThumbnailImage(m_ThumbnailWidth, m_ThumbnailHeight, null, IntPtr.Zero);
        }
    }
}