ffuf -u W2/W1 -w /home/sushant/tech/$1:W1,$2:W2 -recursion -recursion-depth 2 -ac -of json -o ffuf.json
cat ffuf.json | jq -r '.results[] | "\(.length)"+ " " +"\(.url)" + " " + "\(.status)"' | sort -unt " " -k "1,1" | tee result.txt
rm ffuf.json
