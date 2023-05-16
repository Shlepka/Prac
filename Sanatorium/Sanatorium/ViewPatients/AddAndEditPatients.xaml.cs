using Sanatorium.Database;
using Sanatorium.ViewMenu;
using Sanatorium.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
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
using System.Xml.Linq;

namespace Sanatorium.ViewPatients
{
    /// <summary>
    /// Логика взаимодействия для AddAndEditPatients.xaml
    /// </summary>
    public partial class AddAndEditPatients : Window
    {

        // public static class D
        //{
        //    public static String ArrivalText { get; set; }
        //    public static String  DepartureText { get; set; }

        //}

        private Patient patient = new Patient();
        public AddAndEditPatients(Patient selectpatient)
        {
            InitializeComponent();
            DataContext = patient;
            DataComboBox();

            foreach (var item in App.Current.Windows)
            {
                if (item is Patients)
                {
                    Owner = (Window)item;
                }
            }

            if (selectpatient != null)
            {
                DataContext = selectpatient;
            }
            else
            {
                var newProduct = new Patient();
                newProduct.VisitId = new Visit().Id;
                newProduct.GenderId = new Gender().Id;
                DataContext = newProduct;
            }

        }

        private void DataComboBox()
        {
            using (var db = new SanatoriumEntities1())
            {
                cmbVisit.ItemsSource = db.Visit.ToList();
                cmbGender.ItemsSource = db.Gender.ToList();
               
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as Patient).VisitId = (cmbVisit.SelectedItem as Visit).Id;
            (DataContext as Patient).GenderId = (cmbGender.SelectedItem as Gender).Id;
           
            try
            {
                using (var db = new SanatoriumEntities1())
                {
                    db.Patient.AddOrUpdate(DataContext as Patient);
                    db.SaveChanges();
                    ((Owner as Patients).DataContext as AppVM).LoadDate(); MessageBox.Show("Данные сохранены", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Ошибка", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Vist_Click(object sender, RoutedEventArgs e)
        {
            var date = new DatePatients();
            date.Show();

        }

        private void cmbVisit_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void cmbGender_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}

