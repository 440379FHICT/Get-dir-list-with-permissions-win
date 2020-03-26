import subprocess
import schedule
import time
import os

def getPermissions():
    ##Get current folder
    path = os.getcwd()
    
    subprocess.Popen(['powershell',
                      path + '\Folder.ps1'], shell=False)

schedule.every(1).minutes.do(getPermissions)

while True: 
    schedule.run_pending() 
    time.sleep(1) 

