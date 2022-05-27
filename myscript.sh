
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo							 "WELCOME TO THE BOMB SCRIPT:"
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo							 "Created by MUTTAHAR REHMAN"
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo
echo "Please choose the given Reconnaissance Tools:"
echo
echo 1.Whois
echo 2.Sublist3r
echo 3.theHarvester
echo 4.Nslookup
echo 5.All
echo
read tool
echo
echo "Please provide valid domain name:"
read url
echo
if [ $tool -eq 1 ];
then
echo "Here is the result of whois tool:"
echo
whois $url 
echo
echo "-----------------------------------------------------------------------------------------------------------------------------------"
elif [ $tool -eq 2 ];
then
echo "Here is the result of sublist3r tool:"
echo
sublist3r -d $url -o subdomain.txt
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo
elif [ $tool -eq 3 ];
then
echo "Here is the result of theHarvester tool:"
echo
theHarvester -d $url -l 500 -b google
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo 
elif [ $tool -eq 4 ];
then
echo "Here is the result of resolution of IP address:"
echo
nslookup $url
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo
elif [ $tool -eq 5 ];
then
echo "Here is the result of all tools step by step:"
echo
whois $url
echo
echo "---------------------------------------------"
echo      "Here is the result of whois tool:"
echo "---------------------------------------------"
echo
sublist3r -d $url
echo
echo "---------------------------------------------"
echo    "Here is the result of sublist3r tool:"
echo "---------------------------------------------"
theHarvester -d $url -l 500 -b google
echo
echo "---------------------------------------------"
echo   "Here is the result of theHarvester tool:"
echo "---------------------------------------------"
echo
nslookup $url
echo "---------------------------------------------"
echo "Here is the result of resolution of IP address:"
echo "---------------------------------------------"
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo "Thanks to used it:"

fi

