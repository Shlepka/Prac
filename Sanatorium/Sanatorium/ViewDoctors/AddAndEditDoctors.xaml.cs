﻿using Sanatorium.Database;
using Sanatorium.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
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
    /// Логика взаимодействия для AddAndEditDoctors.xaml
    /// </summary>
    public partial class AddAndEditDoctors : Window
    {

        private Doctor doctor = new Doctor( );
       

        public AddAndEditDoctors(Doctor chosendoctor)
        {
            InitializeComponent();
            DataContext = doctor;
            DataComboBox();

            foreach (var item in App.Current.Windows)
            {
                if (item is Doctors)
                {
                    Owner = (Window)item;
                }
            }

            if (chosendoctor != null)
            {
                DataContext = chosendoctor;
            }
            else
            {
                var newDoctor = new Doctor();
                newDoctor.SpecialityId = new Speciality().Id;
                      
                DataContext = newDoctor;
            }


        }

        public void SelectedCombo()
        {
            (DataContext as Doctor).SpecialityId = (cmbSpeciality.SelectedItem as Speciality).Id;
        }
        private void DataComboBox()
        {
            using (var db = new SanatoriumEntities1())
            {
                cmbSpeciality.ItemsSource = db.Speciality.ToList();
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            SelectedCombo();
            try
            {
                using (var db = new SanatoriumEntities1())
                {
                    db.Doctor.AddOrUpdate(DataContext as Doctor);
                    db.SaveChanges();
                    ((Owner as Doctors).DataContext as AppVM).LoadDate();
                    Close();
                }
            }
            catch
            {

            }
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

   
    }
}
