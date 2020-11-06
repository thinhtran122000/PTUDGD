namespace CTQuanLyTiecCuoi
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.gvDsSanh = new System.Windows.Forms.DataGridView();
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.label5 = new System.Windows.Forms.Label();
            this.btnSua = new System.Windows.Forms.Button();
            this.cbbSuaLoaiSanh = new System.Windows.Forms.ComboBox();
            this.txtSuaGhiChu = new System.Windows.Forms.TextBox();
            this.txtSuaSoBanTD = new System.Windows.Forms.TextBox();
            this.txtSuaTenSanh = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvDsSanh)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.gvDsSanh);
            this.groupBox1.Location = new System.Drawing.Point(46, 176);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(684, 343);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Danh Sách Sảnh";
            // 
            // btnXoa
            // 
            this.btnXoa.BackColor = System.Drawing.Color.White;
            this.btnXoa.Location = new System.Drawing.Point(770, 332);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(4);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(103, 40);
            this.btnXoa.TabIndex = 6;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = false;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnThem
            // 
            this.btnThem.BackColor = System.Drawing.Color.White;
            this.btnThem.Location = new System.Drawing.Point(770, 270);
            this.btnThem.Margin = new System.Windows.Forms.Padding(4);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(100, 40);
            this.btnThem.TabIndex = 1;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = false;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // gvDsSanh
            // 
            this.gvDsSanh.BackgroundColor = System.Drawing.Color.White;
            this.gvDsSanh.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvDsSanh.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gvDsSanh.Location = new System.Drawing.Point(3, 26);
            this.gvDsSanh.Name = "gvDsSanh";
            this.gvDsSanh.ReadOnly = true;
            this.gvDsSanh.RowHeadersVisible = false;
            this.gvDsSanh.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gvDsSanh.Size = new System.Drawing.Size(678, 314);
            this.gvDsSanh.TabIndex = 0;
            this.gvDsSanh.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gvDsSanh_CellClick);
            this.gvDsSanh.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // errorProvider1
            // 
            this.errorProvider1.ContainerControl = this;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.Blue;
            this.label5.Location = new System.Drawing.Point(285, 26);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(236, 31);
            this.label5.TabIndex = 22;
            this.label5.Text = "CẬP NHẬT SẢNH";
            // 
            // btnSua
            // 
            this.btnSua.BackColor = System.Drawing.Color.White;
            this.btnSua.Location = new System.Drawing.Point(770, 398);
            this.btnSua.Margin = new System.Windows.Forms.Padding(4);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(103, 45);
            this.btnSua.TabIndex = 30;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = false;
            // 
            // cbbSuaLoaiSanh
            // 
            this.cbbSuaLoaiSanh.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbSuaLoaiSanh.FormattingEnabled = true;
            this.cbbSuaLoaiSanh.Location = new System.Drawing.Point(168, 128);
            this.cbbSuaLoaiSanh.Margin = new System.Windows.Forms.Padding(4);
            this.cbbSuaLoaiSanh.Name = "cbbSuaLoaiSanh";
            this.cbbSuaLoaiSanh.Size = new System.Drawing.Size(186, 30);
            this.cbbSuaLoaiSanh.TabIndex = 33;
            // 
            // txtSuaGhiChu
            // 
            this.txtSuaGhiChu.Location = new System.Drawing.Point(544, 80);
            this.txtSuaGhiChu.Margin = new System.Windows.Forms.Padding(4);
            this.txtSuaGhiChu.Name = "txtSuaGhiChu";
            this.txtSuaGhiChu.Size = new System.Drawing.Size(186, 30);
            this.txtSuaGhiChu.TabIndex = 34;
            // 
            // txtSuaSoBanTD
            // 
            this.txtSuaSoBanTD.Location = new System.Drawing.Point(544, 126);
            this.txtSuaSoBanTD.Margin = new System.Windows.Forms.Padding(4);
            this.txtSuaSoBanTD.Name = "txtSuaSoBanTD";
            this.txtSuaSoBanTD.Size = new System.Drawing.Size(186, 30);
            this.txtSuaSoBanTD.TabIndex = 36;
            // 
            // txtSuaTenSanh
            // 
            this.txtSuaTenSanh.Location = new System.Drawing.Point(168, 83);
            this.txtSuaTenSanh.Margin = new System.Windows.Forms.Padding(4);
            this.txtSuaTenSanh.Name = "txtSuaTenSanh";
            this.txtSuaTenSanh.Size = new System.Drawing.Size(186, 30);
            this.txtSuaTenSanh.TabIndex = 32;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(417, 83);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 22);
            this.label4.TabIndex = 39;
            this.label4.Text = "Ghi chú: ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(417, 129);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(120, 22);
            this.label3.TabIndex = 38;
            this.label3.Text = "Số bàn tối đa:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(48, 129);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(92, 22);
            this.label2.TabIndex = 37;
            this.label2.Text = "Loại sảnh:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(45, 83);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 22);
            this.label1.TabIndex = 35;
            this.label1.Text = "Tên sảnh: ";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Azure;
            this.ClientSize = new System.Drawing.Size(927, 546);
            this.Controls.Add(this.cbbSuaLoaiSanh);
            this.Controls.Add(this.txtSuaGhiChu);
            this.Controls.Add(this.txtSuaSoBanTD);
            this.Controls.Add(this.txtSuaTenSanh);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("Times New Roman", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(6);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Cập nhật sảnh";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gvDsSanh)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView gvDsSanh;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.ErrorProvider errorProvider1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.ComboBox cbbSuaLoaiSanh;
        private System.Windows.Forms.TextBox txtSuaGhiChu;
        private System.Windows.Forms.TextBox txtSuaSoBanTD;
        private System.Windows.Forms.TextBox txtSuaTenSanh;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}

