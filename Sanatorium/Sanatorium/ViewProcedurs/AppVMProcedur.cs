using Sanatorium.Database;
using Sanatorium.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sanatorium.ViewProcedurs
{
    public class AppVMProcedur:BaseModel
    {

        private Procedur _selectedProcedurs;
        public Procedur SelectedProcedurs
        {
            get => _selectedProcedurs;
            set
            {
                _selectedProcedurs = value;
                OnPropertyChanged(nameof(SelectedProcedurs));
            }
        }

        private ObservableCollection<Procedur> _procedur;
        public ObservableCollection<Procedur> Procedurs
        {
            get => _procedur;
            set
            {
                _procedur = value;
                OnPropertyChanged(nameof(Procedurs));
            }
        }

        public AppVMProcedur()
        {
            Procedurs = new ObservableCollection<Procedur>();
            LoadDate();
        }



        public void LoadDate()
        {
            Procedurs.Clear();
            using (SanatoriumEntities1 db = new SanatoriumEntities1())
            {
                var _productList = db.Procedur.Include("Patient").Include("Doctor").ToList();
                _productList.ForEach(p => Procedurs.Add(p));
            }
        }

    }
}
