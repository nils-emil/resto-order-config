sed -e "s/\${domain}/$1/" -e "s/\${domainAdmin}/$2/" -e "s/\${apiPort}/$3/" -e "s/\${adminUiPort}/$4/" -e "s/\${clientUiPort}/$5/" ./templates/sites-available/default.conf

