   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Sanatorium.ViewPatientsSanatorium.ViewPatients  5   	   &     Sanatorium.ViewPatients.Patients   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:Sanatorium.ViewPatients     5   	     � Title$  Пациенты��5   	   $	��411��5	   	   $	��300��5
   	   $	��400��5   	   $
��1000��5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
dgPatients��5         
IsReadOnly .    AutoGenerateColumns .  $y�Visible=�6U   $
��Left=�5      $	��315��6.   $��	20,40,0,0q�6;   $	��Top=�6N   $	��800��6f   ��5      �� *
Patients+ �� SelectedItem 64   �� *SelectedPatients+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *PatientSurname+  5      $ Имя��6%    62   �� *PatientName+  5      $ Отчество��6%    67   �� *PatientPatronymic+  5      $ Дата приезда��6%    6;   �� *ArrivalDate+  5      $ Дата отъезда��6%    6;   �� *DepartureDate+  5      $# Данные паспорта��6%    6>   �� *
Passport+  5      $ 
Визит��6%    64   �� *Visit.Visit1+  5      $ Телефон��6%    66   �� *Phone+  5      $ Пол��6%    62   �� *Gender.Gender1+5      �� 5   
   -   5        	 ��Name$	 btn_Add��5      $��Добавить��6"   $
��Left=�65   $��
858,40,0,0q�6P   ���#673ab7
�������$	��Top=�5       $	��124��6)   $��31��65   6A   �� 5!   
   -   5        $	 btnEdit��5!      $ ��Редактировать��6"   $
��Left=�6:   $��
858,85,0,0q�6U   ���#673ab7
�������$	��Top=�5"      $	��124��6)   $��31��65   6A   �� 5#   
   -   5        $	 	BtnDelete��5#      $��Удалить��6$   $
��Left=�66   $��858,130,0,0q�6Q   ���#673ab7
�������$	��Top=�5$      $	��124��6)   $��31��65   6A   �� 5&   
   -   5        $	 BtnBack��5&      $��
Назад��6"   $
��Left=�62   $��860,273,0,0q�6M   $	��Top=�5'      $	��124��6)   $��31��65   6A   �� 5(   
   -   5        $	 BtnProcedures��5(      $��Процедуры��6(   $
��Left=�6<   $��860,324,0,0q�6W   $	��Top=�5)      $	��124��6%   $��31��61   ���	#FF9DDBA96Y   5*      5+      