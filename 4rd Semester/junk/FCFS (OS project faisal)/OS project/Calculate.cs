using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace OS_project
{
    public partial class Calculate : UserControl
    {
        public Calculate()
        {
            InitializeComponent();
        }

        private void Add_Process_Click(object sender, EventArgs e)
        {

        }

        private void gunaAdvenceButton1_Click(object sender, EventArgs e)
        {

        }

        private void show_steps_Click(object sender, EventArgs e)
        {
            this.Hide();
            steps cal = new steps();
            cal.Show();
            cal.BringToFront();

        }

        private void Calculate_Load(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
