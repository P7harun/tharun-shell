#!/bin/bash
# USERID=(id -u)
# if [ $USERID -ne 0 ]
# then
#     sudo su -
# fi
# yum update -y --exclude=kernel*
# yum -y install postfix cyrus-sasl-plain mailx
# systemctl restart postfix 
# systemctl enable postfix
#cd /etc/postfix/
#D=(relayhost = [smtp.gmail.com]:587 smtp_use_tls = yes smtp_sasl_auth_enable = yes smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd smtp_sasl_security_options = noanonymous smtp_sasl_tls_security_options = noanonymous)
sed -e '$ a relayhost = [smtp.gmail.com]:587 smtp_use_tls = yes smtp_sasl_auth_enable = yes smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd smtp_sasl_security_options = noanonymous smtp_sasl_tls_security_options = noanonymous' /etc/postfix/main.cf
# touch /etc/postfix/sasl_passwd  
# cd /etc/postfix/
# echo "enter username"
# read USERNAME
# echo "enter apppassword"
# read APASWORD
# sed -e '$ a [smtp.gmail.com]:587 $USERNAME:APASWORD' sasl_passwd
# postmap sasl_passwd 

# echo "This is a test mail & Date $(date)" | mail -s "gmail shell script is done" tharun186189@gmail.com
