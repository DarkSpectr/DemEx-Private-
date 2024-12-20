﻿using DemSerDar.Classes;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DemSerDar.Pages
{
    /// <summary>
    /// Логика взаимодействия для ListPartners.xaml
    /// </summary>
    public partial class ListPartners : Page
    {
        public ListPartners()
        {
            InitializeComponent();

            partnerList.ItemsSource = DemEXEntities.GetContext().Partners_import.ToList();
        }

        private void GoBackBtn_Click(object sender, RoutedEventArgs e)
        {
            FrameClass.frmobj.Navigate(new MainPage());
        }
    }
}
