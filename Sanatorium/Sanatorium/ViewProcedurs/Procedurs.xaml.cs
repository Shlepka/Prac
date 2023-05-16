using Sanatorium.ViewDoctors;
using Sanatorium.ViewMenu;
using Sanatorium.ViewPatients;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Sanatorium.ViewProcedurs
{
    /// <summary>
    /// Логика взаимодействия для Procedurs.xaml
    /// </summary>
    public partial class Procedurs : Window
    {
        public Procedurs()
        {
            InitializeComponent();
            DataContext = new AppVMProcedur();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_Del_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            var back = new Patients();
            back.Show();
            this.Close();
        }
    }
}
