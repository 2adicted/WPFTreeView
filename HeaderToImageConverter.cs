using System;
using System.Globalization;
using System.Linq;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace WpfTreeView
{
    /// <summary>
    /// Converts a full path to a specific image type of a drive, folder or file
    /// </summary>
    [ValueConversion(typeof(DirectoryItemType), typeof(BitmapImage))]
    public class HeaderToImageConverter : IValueConverter
    {
        public static HeaderToImageConverter Instance = new HeaderToImageConverter();

        /// <summary>
        /// Converts windows icon to bitmap image for wpf to use 
        /// https://stackoverflow.com/questions/952080/how-do-you-select-the-right-size-icon-from-a-multi-resolution-ico-file-in-wpf/7024970#7024970
        /// </summary>
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            //return new BitmapImage(new Uri($"pack://application:,,,/Images/{value}.ico"));
            //return BitmapFrame.Create(new Uri($"pack://application:,,,/Images/{value}.ico"));

            string Source = $"pack://application:,,,/Resources/Images/{value}.ico";

            var decoder = BitmapDecoder.Create(new Uri(Source),
                                               BitmapCreateOptions.DelayCreation,
                                               BitmapCacheOption.OnDemand);

            var result = decoder.Frames.SingleOrDefault(f => f.Width == 16);
            return result;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
