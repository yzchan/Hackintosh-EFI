DefinitionBlock ("", "SSDT", 2, "ACDT", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // XHCI (8086_43ed)
            "XHCI", Package()
            {
                "port-count", Buffer() { 0x14, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "TypeC USB2.0" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "板载WIFI和蓝牙" },
                      },
                      "HS03", Package()
                      {
                          "name", Buffer() { "HS03" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "后面板USB3.0 Hub->USB2.0" },
                      },
                      "HS05", Package()
                      {
                          "name", Buffer() { "HS05" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x05, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "前面板USB3.0->USB2.0" },
                      },
                      "HS07", Package()
                      {
                          "name", Buffer() { "HS07" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x07, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "后面板USB2.0 No.1" },
                      },
                      "HS08", Package()
                      {
                          "name", Buffer() { "HS08" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "后面板USB2.0 No.2" },
                      },
                      "HS09", Package()
                      {
                          "name", Buffer() { "HS09" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x09, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "后面板USB2.0 No.3" },
                      },
                      "HS10", Package()
                      {
                          "name", Buffer() { "HS10" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x0A, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "后面板USB2.0 No.4" },
                      },
                      "HS11", Package()
                      {
                          "name", Buffer() { "HS11" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x0B, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "前面板USB2.0 Hub" },
                      },
                      "HS14", Package()
                      {
                          "name", Buffer() { "HS14" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0E, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "微星RGB灯光控制" },
                      },
                      "SS01", Package()
                      {
                          "name", Buffer() { "SS01" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x11, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "TypeC USB3.0" },
                      },
                      "SS02", Package()
                      {
                          "name", Buffer() { "SS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x12, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "后面板USB3.0 Hub" },
                      },
                      "SS04", Package()
                      {
                          "name", Buffer() { "SS04" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x14, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "前面板USB3.0" },
                      },
                },
            },
        })
    }
}
