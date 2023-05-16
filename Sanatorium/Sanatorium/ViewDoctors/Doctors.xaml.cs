using Sanatorium.Database;
using Sanatorium.ViewMenu;
using Sanatorium.ViewModel;
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

namespace Sanatorium.ViewDoctors
{
    /// <summary>
    /// Логика взаимодействия для Doctors.xaml
    /// </summary>
    public partial class Doctors : Window
    {
        public Doctors()
        {
            InitializeComponent();
            DataContext = new AppVMDoctor();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            var newDoctors = new AddAndEditDoctors(null);
            newDoctors.Show();
        }

        private void btn_Del_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                using (var db = new SanatoriumEntities1())
                {
                    var idForDelete = (DataContext as AppVMDoctor).SelectedDoctors.DoctorId;

                    var objectForDelete = db.Doctor.FirstOrDefault(x => x.DoctorId == idForDelete);

                    db.Doctor.Remove(objectForDelete);

                    db.SaveChanges();

                    (DataContext as AppVMDoctor).LoadDate();
                }
            }
            catch
            {

            }
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            var back = new UserPageWindow();
            back.Show();
            this.Close();
        }

        //private void btn_Edit_Click(object sender, RoutedEventArgs e)
        //{
        //    var editdoctor = new AddAndEditDoctors((DataContext as AppVMDoctor).SelectedDoctors);

        //    editdoctor.Show();
        //}




    }
}

//        private void btnNew_Click(object sender, RoutedEventArgs e)
//        {
//            var newProduct = new EditOrNewWIndow(null);
//            newProduct.Show();
//        }

//        private void btnEdit_Click(object sender, RoutedEventArgs e)
//        {
//            var editwindow = new EditOrNewWIndow((DataContext as AppVM).SelectedProducts);

//            editwindow.Show();


//        }

//        private void btnDel_Click(object sender, RoutedEventArgs e)
//        {
//            try
//            {
//                using (var db = new MaterialShop())
//                {
//                    var idForDelete = (DataContext as AppVM).SelectedProducts.ProductArticleNumber;

//                    var objectForDelete = db.Product.FirstOrDefault(x => x.ProductArticleNumber == idForDelete);

//                    db.Product.Remove(objectForDelete);

//                    db.SaveChanges();

//                    (DataContext as AppVM).LoadDate();
//                }
//            }
//            catch
//            {

//            }
//        }

//        private void TextBox_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
//        {
//            (DataContext as AppVM).Search((sender as TextBox).Text);
//        }
//    }
//}
