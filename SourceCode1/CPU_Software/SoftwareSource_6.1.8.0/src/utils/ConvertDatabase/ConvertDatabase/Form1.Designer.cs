namespace ConvertDatabase
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
            this.newdatabaseFolder = new System.Windows.Forms.TextBox();
            this.newdatabaseButton = new System.Windows.Forms.Button();
            this.convertButton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.progressBar = new System.Windows.Forms.ProgressBar();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.currentDatabase = new System.Windows.Forms.Label();
            this.currentStage = new System.Windows.Forms.Label();
            this.labelVersion = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // newdatabaseFolder
            // 
            this.newdatabaseFolder.Location = new System.Drawing.Point(12, 86);
            this.newdatabaseFolder.Name = "newdatabaseFolder";
            this.newdatabaseFolder.ReadOnly = true;
            this.newdatabaseFolder.Size = new System.Drawing.Size(354, 20);
            this.newdatabaseFolder.TabIndex = 3;
            // 
            // newdatabaseButton
            // 
            this.newdatabaseButton.Location = new System.Drawing.Point(372, 84);
            this.newdatabaseButton.Name = "newdatabaseButton";
            this.newdatabaseButton.Size = new System.Drawing.Size(69, 23);
            this.newdatabaseButton.TabIndex = 4;
            this.newdatabaseButton.Text = "Browse";
            this.newdatabaseButton.UseVisualStyleBackColor = true;
            this.newdatabaseButton.Click += new System.EventHandler(this.button2_Click);
            // 
            // convertButton
            // 
            this.convertButton.Enabled = false;
            this.convertButton.Location = new System.Drawing.Point(188, 112);
            this.convertButton.Name = "convertButton";
            this.convertButton.Size = new System.Drawing.Size(75, 23);
            this.convertButton.TabIndex = 5;
            this.convertButton.Text = "Convert";
            this.convertButton.UseVisualStyleBackColor = true;
            this.convertButton.Click += new System.EventHandler(this.convertButton_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(36, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(381, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "AMOT XTS Database Conversion Tool";
            // 
            // progressBar
            // 
            this.progressBar.Location = new System.Drawing.Point(12, 210);
            this.progressBar.Name = "progressBar";
            this.progressBar.Size = new System.Drawing.Size(429, 23);
            this.progressBar.TabIndex = 10;
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(12, 151);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Database:";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label3
            // 
            this.label3.Location = new System.Drawing.Point(30, 173);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Stage:";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // currentDatabase
            // 
            this.currentDatabase.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.currentDatabase.Location = new System.Drawing.Point(75, 151);
            this.currentDatabase.Name = "currentDatabase";
            this.currentDatabase.Size = new System.Drawing.Size(366, 13);
            this.currentDatabase.TabIndex = 7;
            this.currentDatabase.Text = "<not set>";
            this.currentDatabase.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // currentStage
            // 
            this.currentStage.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.currentStage.Location = new System.Drawing.Point(75, 173);
            this.currentStage.Name = "currentStage";
            this.currentStage.Size = new System.Drawing.Size(366, 34);
            this.currentStage.TabIndex = 9;
            this.currentStage.Text = "<not set>";
            // 
            // labelVersion
            // 
            this.labelVersion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelVersion.Location = new System.Drawing.Point(270, 9);
            this.labelVersion.Name = "labelVersion";
            this.labelVersion.Size = new System.Drawing.Size(171, 18);
            this.labelVersion.TabIndex = 0;
            this.labelVersion.Text = "1.0.0.0";
            this.labelVersion.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 70);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 13);
            this.label4.TabIndex = 2;
            this.label4.Text = "Target Path:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(453, 243);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.labelVersion);
            this.Controls.Add(this.currentStage);
            this.Controls.Add(this.currentDatabase);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.progressBar);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.convertButton);
            this.Controls.Add(this.newdatabaseFolder);
            this.Controls.Add(this.newdatabaseButton);
            this.Name = "Form1";
            this.Text = "AMOT XTS Database Conversion";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox newdatabaseFolder;
        private System.Windows.Forms.Button newdatabaseButton;
        private System.Windows.Forms.Button convertButton;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ProgressBar progressBar;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label currentDatabase;
        private System.Windows.Forms.Label currentStage;
        private System.Windows.Forms.Label labelVersion;
        private System.Windows.Forms.Label label4;
    }
}

