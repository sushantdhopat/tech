#!/bin/bash
#Author=sushantdhopat
rm -rf ffuftest
mkdir ffuftest
file=$1

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/apache | tee ffuftest/apache-domains.txt
cat ffuftest/apache-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/apache.txt
rm -rf ffuftest/apache-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/aem-detect.yaml | tee ffuftest/aem-domains.txt
cat ffuftest/aem-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/aem.txt
rm -rf ffuftest/aem-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/oracle | tee ffuftest/oracle-domains.txt
cat ffuftest/oracle-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/oracle.txt
rm -rf ffuftest/oracle-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/microsoft | tee ffuftest/microsoft-domains.txt
cat ffuftest/microsoft-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/microsoft.txt
rm -rf ffuftest/microsoft-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/php-detect.yaml | tee ffuftest/php-domains.txt
cat ffuftest/php-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/php.txt
rm -rf ffuftest/php-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/nginx | tee ffuftest/nginx-domains.txt
cat ffuftest/nginx-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/nginx.txt
rm -rf ffuftest/nginx-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/adobe | tee ffuftest/adobe-domains.txt
cat ffuftest/adobe-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/adobe.txt
rm -rf ffuftest/adobe-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/default-fastcgi-page.yaml | tee ffuftest/cgi-domains.txt
cat ffuftest/cgi-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/cgi.txt
rm -rf ffuftest/cgi-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/jspxcms-detect.yaml | tee ffuftest/jsp-domains.txt
cat ffuftest/jsp-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/jsp.txt
rm -rf ffuftest/jsp-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/kubernetes | tee ffuftest/kubernetes-domains.txt
cat ffuftest/kubernetes-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/kubernet.txt
rm -rf ffuftest/kubernetes-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/wordpress-detect.yaml | tee ffuftest/wordpress-domains.txt
cat ffuftest/wordpress-domains.txt | grep -Eo 'https?://[^[:space:]]+' | tee ffuftest/wordpress.txt
rm -rf ffuftest/wordpress-domains.txt
