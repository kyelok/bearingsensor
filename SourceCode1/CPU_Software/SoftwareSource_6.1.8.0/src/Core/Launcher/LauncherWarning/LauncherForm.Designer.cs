namespace LauncherWarning
{
    partial class LauncherForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(LauncherForm));
            this.buttonClose = new System.Windows.Forms.Button();
            this.textBoxWarn = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBoxFolder = new System.Windows.Forms.TextBox();
            this.buttonRegist = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.textBoxSerialN = new System.Windows.Forms.TextBox();
            this.buttonOpenFolder = new System.Windows.Forms.Button();
            this.folderBrowserDialog1 = new System.Windows.Forms.FolderBrowserDialog();
            this.SuspendLayout();
            // 
            // buttonClose
            // 
            this.buttonClose.Location = new System.Drawing.Point(362, 334);
            this.buttonClose.Name = "buttonClose";
            this.buttonClose.Size = new System.Drawing.Size(75, 23);
            this.buttonClose.TabIndex = 1;
            this.buttonClose.Text = "Close";
            this.buttonClose.UseVisualStyleBackColor = true;
            this.buttonClose.Click += new System.EventHandler(this.buttonClose_Click);
            // 
            // textBoxWarn
            // 
            this.textBoxWarn.BackColor = System.Drawing.Color.Yellow;
            this.textBoxWarn.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBoxWarn.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxWarn.ForeColor = System.Drawing.Color.Red;
            this.textBoxWarn.Location = new System.Drawing.Point(32, 64);
            this.textBoxWarn.Multiline = true;
            this.textBoxWarn.Name = "textBoxWarn";
            this.textBoxWarn.ReadOnly = true;
            this.textBoxWarn.Size = new System.Drawing.Size(405, 31);
            this.textBoxWarn.TabIndex = 2;
            this.textBoxWarn.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(174, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(99, 26);
            this.label1.TabIndex = 3;
            this.label1.Text = "Warning!";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(29, 314);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(331, 17);
            this.label2.TabIndex = 4;
            this.label2.Text = "4. Send registration file to:  xtswsupport@amot.com";
            // 
            // textBoxFolder
            // 
            this.textBoxFolder.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxFolder.Location = new System.Drawing.Point(32, 215);
            this.textBoxFolder.Name = "textBoxFolder";
            this.textBoxFolder.ReadOnly = true;
            this.textBoxFolder.Size = new System.Drawing.Size(302, 20);
            this.textBoxFolder.TabIndex = 5;
            // 
            // buttonRegist
            // 
            this.buttonRegist.Location = new System.Drawing.Point(362, 275);
            this.buttonRegist.Name = "buttonRegist";
            this.buttonRegist.Size = new System.Drawing.Size(75, 23);
            this.buttonRegist.TabIndex = 6;
            this.buttonRegist.Text = "Generate";
            this.buttonRegist.UseVisualStyleBackColor = true;
            this.buttonRegist.Click += new System.EventHandler(this.buttonRegist_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(29, 136);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(357, 17);
            this.label3.TabIndex = 7;
            this.label3.Text = "Please follow these instructions to register your system:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(29, 159);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(279, 17);
            this.label4.TabIndex = 8;
            this.label4.Text = "1. Insert a virus free USB drive in computer";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(29, 246);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(312, 17);
            this.label5.TabIndex = 9;
            this.label5.Text = "3. Input serial number and click Generate button";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(29, 182);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(269, 17);
            this.label6.TabIndex = 10;
            this.label6.Text = "2. Click Open button to choose USB drive";
            // 
            // textBoxSerialN
            // 
            this.textBoxSerialN.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxSerialN.Location = new System.Drawing.Point(32, 278);
            this.textBoxSerialN.Name = "textBoxSerialN";
            this.textBoxSerialN.Size = new System.Drawing.Size(166, 20);
            this.textBoxSerialN.TabIndex = 11;
            // 
            // buttonOpenFolder
            // 
            this.buttonOpenFolder.Location = new System.Drawing.Point(362, 212);
            this.buttonOpenFolder.Name = "buttonOpenFolder";
            this.buttonOpenFolder.Size = new System.Drawing.Size(75, 23);
            this.buttonOpenFolder.TabIndex = 12;
            this.buttonOpenFolder.Text = "Open";
            this.buttonOpenFolder.UseVisualStyleBackColor = true;
            this.buttonOpenFolder.Click += new System.EventHandler(this.buttonOpenFolder_Click);
            // 
            // LauncherForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(481, 391);
            this.Controls.Add(this.buttonOpenFolder);
            this.Controls.Add(this.textBoxSerialN);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.buttonRegist);
            this.Controls.Add(this.textBoxFolder);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBoxWarn);
            this.Controls.Add(this.buttonClose);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "LauncherForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "XTS-W2 Launcher";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.LauncherForm_FormClosed);
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonClose;
        private System.Windows.Forms.TextBox textBoxWarn;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxFolder;
        private System.Windows.Forms.Button buttonRegist;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textBoxSerialN;
        private System.Windows.Forms.Button buttonOpenFolder;
        private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog1;
    }
}

