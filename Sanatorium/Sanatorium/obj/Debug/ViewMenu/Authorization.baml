   M S B A M L   `   `   `  ����E  ASanatorium, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Sanatorium.ViewMenuSanatorium.ViewMenu  5   	   '    !Sanatorium.ViewMenu.Authorization   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Sanatorium.ViewMenu     5   	     � Title$  Авторизация��5      $	��450��5	   	   $	��700��6   $��12(�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      � 
�������.+�5   
   �� $	��400��6   $��15q�6    
�������$��Center=�5       �� Padding$ 30q�6,   $	��700��69    �� CornerRadius$ 30��6H    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63      ShadowDepth$ 0Q�6E   ._�5      �� .+�5      �� $��Авторизация��6   $��30(�6/   $
��Bold"�6=   $��0 0 0 20q�6O   � 5      $��0 0 0 20q�6   5      �� 5      $��Normal$�6   $��Comic Sans MS)�6,   .��6H   Введите логин5      �� 5      -   5         ��Name$ 
txboxLogin��5      �� 5      $��Normal$�6   $��Comic Sans MS)�6+   .��6G   Введите пароль5       G� 5!      -   5        	 G�Name$	 
txPassword��5!      �� 5#      -   5        
 ��Name$
 Enter��5#   B   $"��Войти в кабинет��6   $
��0 20q�64   ���#673ab7
�������6z   �� 5$      -   5        $��btnReg��5$   p   $��Регистрация��6   ���#673ab7
�������$	��Top=�6X   5%      5&      5'      5(      5)      