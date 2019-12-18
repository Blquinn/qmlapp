using System;
using Qml.Net;
using Qml.Net.Runtimes;

namespace QmlApplication
{
    class Program
    {
        static int Main(string[] args)
        {
            RuntimeManager.DiscoverOrDownloadSuitableQtRuntime();
            
            // QQuickStyle.SetStyle("Material");
            
            using (var app = new QGuiApplication(args))
            {
                using (var engine = new QQmlApplicationEngine())
                {
                    // TODO: Register your .NET types.
                    // Qml.RegisterType<NetObject>("test");

                    engine.Load("Main.qml");
                
                    return app.Exec();
                }
            }
        }
    }
}