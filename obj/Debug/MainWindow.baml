   M S B A M L   `   `   `  ����F  BWpfTreeView, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MultiSelectTreeViewMultiSelectTreeView  5   	   )clr-namespace:WpfTreeViewWpfTreeView  5   	       WpfTreeView.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2mstv!clr-namespace:MultiSelectTreeView     5   	   +localclr-namespace:WpfTreeView     5   	   -   5        $��Light"�5	   	   $��12(�5
   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	    � WindowStartupLocation$ CenterScreen=�60    � Title$ Project Browser��5   	   $	��350��6"   $	��525��6/    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $G Apack://application:,,,/WpfTreeView;component/Resources/Theme.xaml?�6%   %    5      .��5      � $��10q�6    � ColumnDefinitions 5   
   �� 5      $��2* �6   �� 5      $��* �6    � RowDefinitions 5    
   �� 5!      $��* �6   �� 5"      $
��Auto �6   .+�5&   
   -   'MultiSelectTreeView.MultiSelectTreeView  -   5          Name$ 
FolderView��5'      $��4q�5(      $��0��5)      $��0��5*      
������ 	   SelectedItems	 5,      �� *SelectedItems+��5-      �� *Items+��50      �� 51      
 �� 
TargetType"
 Q�6      MyTreeViewItemStyle �� BasedOn# [  6;   .�52      ��  �� Property �@Q�
IsExpanded �� Value 63   �� *
IsExpanded+ �� Mode$ TwoWay=��� 53       �@ IsItemSelected 6P   �� *
IsSelected+$ TwoWay=� �� Triggers 54      P� 55       P� Property �@ IsItemSelected P� Value . . �56      ��  � �� �	#FFcce8ff6;   57      59      ��5;      �� 5<       �� ItemsSource 6+   �� *
Children+.R�5=      ��  �� Orientation$ 
Horizontal=�6!   .+�5>      �� $��16��6    $��3q�6+   $��Center=�66   ��5?   %   �� *	ImageName+(   "WpfTreeView.HeaderToImageConverter   Instance �� 	Converter# Z �� 5A      $��2 0 0 0q�6$   $��Center=�65   ��6P   �� *Name+5B      5C      5E      �� 5F   
   $��1��6   $��0��6!   $��0 10 0 0q�61   ��6C   �� *SelectedItems.Count+$ OneWay=� �� StringFormat$ Selected Folders: {0}��6�   �� 5I   
   $��1��6   $��2��6%   $
��10 0q�66   .+�5J      �� $��0 5 5 10q�6   .��6'   Folder filter:67   �� 5K      -   5         ��Name$ Filter��5K        	EnterText#��[ 6&   .��6I   Enter filter words ..6`   5L      � 5M   
   $��2��6   $��2��6!   $��Right=�65   $��0,30,0,0q�6Q   .+�5N      �� -   5        $��btnDialogOk��5N   R     SimpleButtonStyle#���  6    �� 	IsDefault . .��6   _Ok6�   �� 5O      #���  6    �� IsCancel . $��5,0,0,0q�6Q   $��25��6b   .��6n   	_Cancel6w   5P      5Q      5R      