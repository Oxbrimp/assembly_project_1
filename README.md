# This is a x86-64 Assembly Program
 Written by Aria Gharachorlou

# This program relies heavily on FASM 
https://flatassembler.net/

# To seamlessly execute this program, complete the following : 
1. Download the Flat Assembler ( FASM ) & Unzip in desired directory
2. Copy the directory path
3. Type 'Edit the system environment variables' in the windows search bar
4. Under System variables find 'Path' and select it, clicking edit
5. Click 'New' and add a the path [PATH] inside
6. Press "ok" and confirm for all open windows
7. If done correctly, open powershell with administrator privileges. 
8. Exit all powershell terminals, including VS
9. Type into it 'fasm' and a (non-error) output should appear
10. Go back to system properties -> Environment Variables, add a new (system / user ) variable called 'INCLUDE', set its value to the folder containing win32a.inc in your fasm directory
11. Restart all terminals again, **and continue to 'Run main.asm' steps below** - to test if the above was successful, by typing in 'echo $env:INCLUDE' you should see the directory of the INCLUDE of FASM


# To Run main.asm
1. if steps above done, skip to (2) / OR / Enter the path of [fasm.exe] in build.bat, such that you have [$PATH] main.asm main.exe
2. Double-click build.bat in file explorer  / OR / run it via cmd by typing it 'build.bat' while in the correct directory
3. Once the main.exe file is created, double click it via file explorer / OR / .\main.exe on the terminal 
