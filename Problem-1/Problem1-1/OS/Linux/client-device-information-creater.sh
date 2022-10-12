
function collectinfo(){

echo Your username is: "$USER"              #Lists your username
echo Your computer name is: "$HOSTNAME"     #Lists your computer name
echo .
echo Your ip addresses are:                 
ip a                                        #Lists ip
echo .
echo .
echo Your memory informations:
free -m                                     #Lists memory informations
echo .
echo .
echo Your harddisk informations:            
df -h                                       #Lists harddisk informations
echo .
echo .
echo Your current working directory is:     
pwd                                         #Shows current working directory
echo .
echo .
echo Your current running processes:
ps aux                                      #Lists currently running processes
echo .
echo .
echo Current network processes:
cat /etc/services                           #Lists network 
}

collectinfo > client-device-information.txt
