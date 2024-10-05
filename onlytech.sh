#!/bin/bash
#Author=sushantdhopat
rm -rf tech
mkdir tech
file=$1

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/apache | tee tech/apache-domains.txt
cat tech/apache-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/apache.txt
[ -s apache.txt ] && cat apache.txt || rm apache.txt
rm -rf tech/apache-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/aem-detect.yaml | tee tech/aem-domains.txt
cat tech/aem-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/aem.txt
[ -s aem.txt ] && cat aem.txt || rm aem.txt
rm -rf tech/aem-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/oracle | tee tech/oracle-domains.txt
cat tech/oracle-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/oracle.txt
[ -s oracle.txt ] && cat oracle.txt || rm oracle.txt
rm -rf tech/oracle-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/microsoft | tee tech/microsoft-domains.txt
cat tech/microsoft-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/microsoft.txt
[ -s microsoft.txt ] && cat microsoft.txt || rm microsoft.txt
rm -rf tech/microsoft-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/php-detect.yaml | tee tech/php-domains.txt
cat tech/php-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/php.txt
[ -s php.txt ] && cat php.txt || rm php.txt
rm -rf tech/php-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/nginx | tee tech/nginx-domains.txt
cat tech/nginx-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/nginx.txt
[ -s nginx.txt ] && cat nginx.txt || rm nginx.txt
rm -rf tech/nginx-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/adobe | tee tech/adobe-domains.txt
cat tech/adobe-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/adobe.txt
[ -s adobe.txt ] && cat adobe.txt || rm adobe.txt
rm -rf tech/adobe-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/default-fastcgi-page.yaml | tee tech/cgi-domains.txt
cat tech/cgi-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/cgi.txt
[ -s cgi.txt ] && cat cgi.txt || rm cgi.txt
rm -rf tech/cgi-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/jspxcms-detect.yaml | tee tech/jsp-domains.txt
cat tech/jsp-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/jsp.txt
[ -s jsp.txt ] && cat jsp.txt || rm jsp.txt
rm -rf tech/jsp-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/kubernetes | tee tech/kubernetes-domains.txt
cat tech/kubernetes-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/kubernet.txt
[ -s kubernet.txt ] && cat kubernet.txt || rm kubernet.txt
rm -rf tech/kubernetes-domains.txt

cat $file | nuclei -t /Users/sushantdhopat/desktop/nuclei-templates/http/technologies/wordpress-detect.yaml | tee tech/wordpress-domains.txt
cat tech/wordpress-domains.txt | grep -Eo 'https?://[^/[:space:]]+\.[a-zA-Z]+' | tee tech/wordpress.txt
[ -s wordpress.txt ] && cat wordpress.txt || rm wordpress.txt
rm -rf tech/wordpress-domains.txt
