os_name    = "windows"
os_version = "11"
os_arch    = "x86_64"
is_windows = true
# Windows 11 source requires a prompt to select OS to install. This allows the system time to add reg keys to ignore TPM Check before the install begins.
iso_url                 = "https://software-download.microsoft.com/download/sg/22000.194.210913-1444.co_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso"
iso_checksum            = "sha256:e8b1d2a1a85a09b4bf6154084a8be8e3c814894a15a7bcf3e8e63fcfa9a528cb"
parallels_guest_os_type = "win-11"
vbox_guest_os_type      = "Windows11_64"
vmware_guest_os_type    = "windows9srv-64"
boot_command_hyperv     = ["<leftShiftOn><f10><leftShiftOff><wait>reg add HKLM\\SYSTEM\\Setup\\LabConfig /t REG_DWORD /v BypassTPMCheck /d 1<return>reg add HKLM\\SYSTEM\\Setup\\LabConfig /t REG_DWORD /v BypassSecureBootCheck /d 1<return><wait>exit<return><wait><return>"]
boot_command            = ["<leftShiftOn><f10><leftShiftOff><wait>reg add HKLM\\SYSTEM\\Setup\\LabConfig /t REG_DWORD /v BypassTPMCheck /d 1<return>reg add HKLM\\SYSTEM\\Setup\\LabConfig /t REG_DWORD /v BypassSecureBootCheck /d 1<return><wait>exit<return><wait><return>"]
