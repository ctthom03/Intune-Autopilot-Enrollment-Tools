# Intune-Autopilot-Enrollment-Tools
Scripts and other tools I used to help with adding multiple devices to Intune Autopilot easier. 

Intructions to export the hash from multiple Windows devices for Windows Autopilot Enrollment:

1.	Preparation: 
	Load the .ps1 file onto a USB thumb drive. 
	Create a folder named "Hash Files" on the thumb drive. 
2.	Initial Setup: 
	Connect the Windows 11 laptop to the internet during the Out-Of-Box Experience (OOBE).
	Once connected to Wi-Fi, do not click the Next button. 
3.	Running the Script: 
	Insert the USB thumb drive with the script file and the "Hash Files" folder. o 	Press Shift+F10 to open Command Prompt. 
	Press Win+R, type "PowerShell ISE", and press Ctrl+Shift+Enter to open PowerShell ISE with administrative privileges. 
	In the PowerShell ISE window, type Set-ExecutionPolicy Unrestricted and press Enter. ▪ 	If a confirmation dialog appears, click "Yes". 
4.	Executing the PowerShell Script: 
	Click File > Open and navigate to the .ps1 file on the thumb drive. 
	Click the Play button (or press F5) to run the script. 
	Respond to multiple prompts by selecting "Yes to All" where available, otherwise click "Yes". 
5.	Verification: 
	Upon completion, a prompt will indicate the successful export of the hash, ending with the Serial Number. 
	To verify, press Win+E to open File Explorer, navigate to the "Hash Files" folder on the flash drive, and confirm the presence of MyComputerHash.csv. 
	Open the .csv file in Excel and verify that the serial number in the first row matches the exported hash. 
6.	Repeating the Process (if applicable): 
	For additional laptops, remove the thumb drive and repeat steps 2 through 5. 
7.	Importing to Intune: 
	Sign in to Intune. 
	Follow the steps to import a device, selecting MyComputerHash.csv from the thumb drive. 
	Ensure the number of columns matches the number of devices added to the file and that there are no incorrect columns. 
	If everything matches, press Enter to import all devices listed in the file. 
