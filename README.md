# chocolatey
Chocolatey offline installation (c:\dev\Chocolatey)

## Tools needed : FolderChangesView (choco package), MSI2XML/XML2MSI (choco package), insted (choco package)

### Chocolatey
C:\ProgramData\chocolatey\config\chocolatey.config
  <sources>
    <source id="test" value="" disabled="false" priority="0" />
  </sources>
choco source add --name test
choco source remove --name test

### chocolateyGUI 
C:\Users\sguclu\AppData\Local\Chocolatey\ChocolateyGui.exe_Url_oqqrttjgsgsfj3psms1wjw4lcyeoz1us\0.13.2.0\user.config
<?xml version="1.0" encoding="utf-8"?>
<configuration>
    <userSettings>
        <ChocolateyGui.Properties.Settings>
            <setting name="sources" serializeAs="Xml">
                <value>
                    <ArrayOfString xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                        <string>Chocolatey-modified|https://chocolatey.org/api/v2</string>
                        <string>test2|https://chocolatey.org/api/v2/</string>
                        <string>new_test|http://www.google.com</string>
                    </ArrayOfString>
                </value>
            </setting>
        </ChocolateyGui.Properties.Settings>
    </userSettings>
</configuration>
