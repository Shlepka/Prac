   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Sanatorium.ViewDoctorsSanatorium.ViewDoctors  5   	   .    (Sanatorium.ViewDoctors.AddAndEditDoctors   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:Sanatorium.ViewDoctors     5   	     � WindowStartupLocation$  CenterOwner=�5   	    � Title$ AddAndEditPatients��5	      $	��560��6$   $	��600��61   .��5
      � $��10q�6   $��Center=�5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5      $
��Auto �5      �� 5       $
��Auto �5!      �� 5"      $
��Auto �5#      .+�5&   
   �� .+�5'      �� $��Фамилия :��5(      �� 5)      ��5*      �� *DoctorSurname+5+      �� 5,   
   $��1��5-      .+�5.      �� $��Имя:��5/      �� 50      ��51      �� *
DoctorName+52      �� 53   
   $��2��54      .+�55      �� $��Отчество:��56      �� 57      ��58      �� *DoctorPatronymic+59      �� 5:   
   $��6��5;      .+�5<      �� $��Телефон:��5=      �� 5>      ��5?      �� *Phone+5@      �� 5A   
   $��7��5B      .+�5C      �� $!��Специальность:��5D      �� 5E      -   5        $��cmbSpeciality��5F       �� DisplayMemberPath$ 
Speciality��5E      5F      5G      �� 5I   
   -   5        $��btnSave��5J      $��9��5L       � ToolTip$ 8��5M      $��10q�5N      $��Сохранить��5O      �� 5P   
   -   5        $��btnBack��5Q      $��11��5S      $ 8��5T      $��10q�5U      $��Отмена��5V      5X      5Y      