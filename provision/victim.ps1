Write-Output "[*] Setting up victim VM..."

# Download and unzip Sysmon
Invoke-WebRequest -Uri "https://download.sysinternals.com/files/Sysmon.zip" -OutFile "C:\\Sysmon.zip"
Expand-Archive -Path "C:\\Sysmon.zip" -DestinationPath "C:\\Sysmon"

# Download a sample config
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/SwiftOnSecurity/sysmon-config/master/sysmonconfig-export.xml" -OutFile "C:\\sysmon.xml"

# Install Sysmon
C:\\Sysmon\\Sysmon64.exe -accepteula -i C:\\sysmon.xml

Write-Output "[*] Victim setup complete."
