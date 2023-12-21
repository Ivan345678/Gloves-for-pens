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
using AuchanSegment.ServiceData;

namespace AuchanSegment.Pages
{
    /// <summary>
    /// Логика взаимодействия для SegmentPage.xaml
    /// </summary>
    public partial class SegmentPage : Page
    {
        public SegmentPage()
        {
            InitializeComponent();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            
        }


        private void Poisk_btn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var productObj = DbConnect.entObj.Products.FirstOrDefault(x => x.Name == Poisk_txb.Text);
                if (productObj == null)
                {
                    MessageBox.Show("Некорректный штрихкод",
                                  "Уведомления",
                                  MessageBoxButton.OK,
                                  MessageBoxImage.Information);
                }
                else
                {
                    switch (productObj.Segment)
                    {
                        case 1:
                            RecSegment1.Visibility = Visibility.Visible;
                            break;
                        case 2:
                            RecSegment2.Visibility = Visibility.Visible;
                            break;
                        case 3:
                            RecSegment3.Visibility = Visibility.Visible;
                            break;
                        case 4:
                            RecSegment4.Visibility = Visibility.Visible;
                            break;
                        case 5:
                            RecSegment5.Visibility = Visibility.Visible;
                            break;
                        case 6:
                            RecSegment6.Visibility = Visibility.Visible;
                            break;
                        case 7:
                            RecSegment7.Visibility = Visibility.Visible;
                            break;
                        case 8:
                            RecSegment8.Visibility = Visibility.Visible;
                            break;
                        case 9:
                            RecSegment9.Visibility = Visibility.Visible;
                            break;
                        case 10:
                            RecSegment10.Visibility = Visibility.Visible;
                            break;
                        case 11:
                            RecSegment11.Visibility = Visibility.Visible;
                            break;
                        case 12:
                            RecSegment12.Visibility = Visibility.Visible;
                            break;
                    }
                    InformationLabel.Content = productObj.Name + "  " + "Стоимость: " + productObj.Price + "р";
                
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Критический сбой в работе приложения: " + ex.Message.ToString(),
                                "Уведомления",
                                MessageBoxButton.OK,
                                MessageBoxImage.Warning);

            }
        }

        private void Poisk_barkod_btn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int Bar = Convert.ToInt32(Poisk_txb.Text);
                var productObj = DbConnect.entObj.Products.FirstOrDefault(x => x.Barcode == Bar);
                if (productObj == null)
                {
                    MessageBox.Show("Некорректный штрихкод",
                                  "Уведомления",
                                  MessageBoxButton.OK,
                                  MessageBoxImage.Information);
                }
                else
                {
                    switch (productObj.Segment)
                    {
                        case 1:
                            RecSegment1.Visibility = Visibility.Visible;
                            break;
                        case 2:
                            RecSegment2.Visibility = Visibility.Visible;
                            break;
                        case 3:
                            RecSegment3.Visibility = Visibility.Visible;
                            break;
                        case 4:
                            RecSegment4.Visibility = Visibility.Visible;
                            break;
                        case 5:
                            RecSegment5.Visibility = Visibility.Visible;
                            break;
                        case 6:
                            RecSegment6.Visibility = Visibility.Visible;
                            break;
                        case 7:
                            RecSegment7.Visibility = Visibility.Visible;
                            break;
                        case 8:
                            RecSegment8.Visibility = Visibility.Visible;
                            break;
                        case 9:
                            RecSegment9.Visibility = Visibility.Visible;
                            break;
                        case 10:
                            RecSegment10.Visibility = Visibility.Visible;
                            break;
                        case 11:
                            RecSegment11.Visibility = Visibility.Visible;
                            break;
                        case 12:
                            RecSegment12.Visibility = Visibility.Visible;
                            break;
                    }
                    InformationLabel.Content = productObj.Name + "  " + "Стоимость: " + productObj.Price;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Критический сбой в работе приложения: " + ex.Message.ToString(),
                                "Уведомления",
                                MessageBoxButton.OK,
                                MessageBoxImage.Warning);

            }
        }
    }
}
