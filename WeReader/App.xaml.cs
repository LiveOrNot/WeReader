using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Windows;
using CefSharp;

namespace WeReader
{
    /// <summary>
    /// App.xaml 的交互逻辑
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            CefSettings settings = new CefSettings();
            settings.IgnoreCertificateErrors = true;
            settings.SetOffScreenRenderingBestPerformanceArgs();
            Cef.Initialize(settings);
            base.OnStartup(e);
        }
    }
}
