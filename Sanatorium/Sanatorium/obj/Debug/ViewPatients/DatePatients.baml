   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Sanatorium.ViewPatientsSanatorium.ViewPatients  5   	   *    $Sanatorium.ViewPatients.DatePatients   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:Sanatorium.ViewPatients     5   	     � Title$*  $Внести сроки визита��5      $	��339��6$   $	��553��61   .��5	      � .+�5
   
   �� $��Дата приезда��6   $
��Left=�6'   $��	37,87,0,0q�6B   $	��Top=�6U   �� 5   
   $��Дата отъезда��6   $
��Left=�6'   $��
37,129,0,0q�6B   $	��Top=�6V   �� 5   
   $��
Визит��6   $
��Left=�6    $��
37,178,0,0q�6;   $	��Top=�6O   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dateArrival��5      $
��Left=�6*   $��23��6E   $��
271,87,0,0q�6Q      DisplayDate$ 3/1/2023��5         DisplayDateStart$ 3/1/2023X�6,      DisplayDateEnd$ 	3/31/2024X�6H   $	��Top=�5      $	��229��6*     5   
   -   5        $ dateDeparture��5      $
��Left=�6,   $��24��6G   $��271,129,0,0q�6S   $ 3/1/2023��5      $ 3/1/2023X�6-   $ 	3/31/2024X�6I   $	��Top=�5      $	��229��6*   �� 5   
   -   5         ��Name$ btnSave��5      $��Сохранить��6"   $
��Left=�66   $��120,246,0,0q�6Q   $	��Top=�6f   $	��161��6~   ���#673ab7
�������6�   �� 5   
   -   5        $ 	btnCancel��5      $��Отмена��6$   $
��Left=�65   $��306,246,0,0q�6P   $	��Top=�6e   $	��194��6}   ���#673ab7
�������6�   5      5      