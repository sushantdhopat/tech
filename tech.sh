#! /bin/bash
#Author=sushantdhopat

file=$1

cat $file | nuclei -t /root/nuclei-templates/technologies/apache | tee apache-domains.txt

if [ "apache-domains.txt" == 0 ]; then
  echo "no any apache domains found"
else
  ffuf -u W2/W1 -w /root/fuzz.txt:W1,apache-domain.txt:W2 -fc 204,301,302,307,401,403,405,500 -fs 0 -acc www | tee valid-apache-files
fi

cat $file | nuclei -t /root/nuclei-templates/technologies/aem-cms.yaml | tee aem-domains.txt

if [ "aem-domains.txt" == 0 ]; then
  echo "no any aem domains found"
else
  ffuf -u W2/W1 -w /root/fuzz.txt:W1,aem-domains.txt:W2 -fc 204,301,302,307,401,403,405,500 -fs 0 -acc www | tee valid-aem-files
fi

cat $file | nuclei -t /root/nuclei-templates/technologies/oracle | tee oracle-domains.txt

if [ "oracle-domains.txt" == 0 ]; then
  echo "no any oracle domains found"
else
  ffuf -u W2/W1 -w /root/fuzz.txt:W1,oracle-domain.txt:W2 -fc 204,301,302,307,401,403,405,500 -fs 0 -acc www | tee valid-oracle-files
fi

cat $file | nuclei -t /root/nuclei-templates/technologies/microsoft | tee microsoft-domains.txt

if [ "microsoft-domains.txt" == 0 ]; then
  echo "no any microsoft domains found"
else
  ffuf -u W2/W1 -w /root/fuzz.txt:W1,microsoft-domain.txt:W2 -fc 204,301,302,307,401,403,405,500 -fs 0 -acc www | tee valid-microsoft-files
fi

cat $file | nuclei -t /root/nuclei-templates/technologies/php-detect.yaml | tee php-domains.txt

if [ "php-domains.txt" == 0 ]; then
  echo "no any php domains found"
else
  ffuf -u W2/W1 -w /root/fuzz.txt:W1,php-domain.txt:W2 -fc 204,301,302,307,401,403,405,500 -fs 0 -acc www | tee valid-php-files
fi

cat $file | nuclei -t /root/nuclei-templates/technologies/nginx | tee nginx-domains.txt

if [ "nginx-domains.txt" == 0 ]; then
  echo "no any nginx domains found"
else
  ffuf -u W2/W1 -w /root/fuzz.txt:W1,nginx-domain.txt:W2 -fc 204,301,302,307,401,403,405,500 -fs 0 -acc www | tee valid-nginx-files
fi
