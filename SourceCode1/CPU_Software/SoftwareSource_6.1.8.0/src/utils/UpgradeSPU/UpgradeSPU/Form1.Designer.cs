namespace UpgradeSPU
{
    partial class Form1
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
            this.label1 = new System.Windows.Forms.Label();
            this.comports = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.baudrates = new System.Windows.Forms.ComboBox();
            this.upgrade = new System.Windows.Forms.Button();
            this.upgradeProgress = new System.Windows.Forms.ProgressBar();
            this.upgradeFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.openFile = new System.Windows.Forms.Button();
            this.filename = new System.Windows.Forms.TextBox();
            this.updateStatus = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(21, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(242, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "AMOT SPU Upgrade Tool";
            // 
            // comports
            // 
            this.comports.FormattingEnabled = true;
            this.comports.Location = new System.Drawing.Point(128, 77);
            this.comports.Name = "comports";
            this.comports.Size = new System.Drawing.Size(140, 21);
            this.comports.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(43, 81);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "COM Port:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(38, 119);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Baud Rate:";
            // 
            // baudrates
            // 
            this.baudrates.FormattingEnabled = true;
            this.baudrates.Location = new System.Drawing.Point(126, 115);
            this.baudrates.Name = "baudrates";
            this.baudrates.Size = new System.Drawing.Size(142, 21);
            this.baudrates.TabIndex = 4;
            // 
            // upgrade
            // 
            this.upgrade.Location = new System.Drawing.Point(97, 214);
            this.upgrade.Name = "upgrade";
            this.upgrade.Size = new System.Drawing.Size(75, 23);
            this.upgrade.TabIndex = 5;
            this.upgrade.Text = "Upgrade";
            this.upgrade.UseVisualStyleBackColor = true;
            this.upgrade.Click += new System.EventHandler(this.upgrade_Click);
            // 
            // upgradeProgress
            // 
            this.upgradeProgress.Location = new System.Drawing.Point(12, 281);
            this.upgradeProgress.Name = "upgradeProgress";
            this.upgradeProgress.Size = new System.Drawing.Size(260, 23);
            this.upgradeProgress.TabIndex = 6;
            // 
            // upgradeFileDialog
            // 
            this.upgradeFileDialog.DefaultExt = "fr2";
            this.upgradeFileDialog.Filter = "\"SPU Firmware files|*.fr2|All files|*.*\"";
            // 
            // openFile
            // 
            this.openFile.Location = new System.Drawing.Point(12, 167);
            this.openFile.Name = "openFile";
            this.openFile.Size = new System.Drawing.Size(75, 23);
            this.openFile.TabIndex = 7;
            this.openFile.Text = "Upgrade File";
            this.openFile.UseVisualStyleBackColor = true;
            this.openFile.Click += new System.EventHandler(this.openFile_Click);
            // 
            // filename
            // 
            this.filename.Enabled = false;
            this.filename.Location = new System.Drawing.Point(97, 168);
            this.filename.Name = "filename";
            this.filename.Size = new System.Drawing.Size(175, 20);
            this.filename.TabIndex = 8;
            // 
            // updateStatus
            // 
            this.updateStatus.Location = new System.Drawing.Point(13, 247);
            this.updateStatus.Name = "updateStatus";
            this.updateStatus.Size = new System.Drawing.Size(259, 20);
            this.updateStatus.TabIndex = 9;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 328);
            this.Controls.Add(this.updateStatus);
            this.Controls.Add(this.filename);
            this.Controls.Add(this.openFile);
            this.Controls.Add(this.upgradeProgress);
            this.Controls.Add(this.upgrade);
            this.Controls.Add(this.baudrates);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.comports);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "AMOT SPU Upgrade Tool";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comports;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox baudrates;
        private System.Windows.Forms.Button upgrade;
        private System.Windows.Forms.ProgressBar upgradeProgress;
        private System.Windows.Forms.OpenFileDialog upgradeFileDialog;
        private System.Windows.Forms.Button openFile;
        private System.Windows.Forms.TextBox filename;
        private System.Windows.Forms.TextBox updateStatus;
    }
}

