#!/bin/bash
touch birinci.sh
touch 1subdomain.txt
touch subdomainsonuc.txt
touch sonuc.txt
touch sonasama.txt
touch grepsonrasi.txt
touch grepphp1.txt
touch grepphpson.txt
echo "#!/bin/bash
while IFS= read -r line; do
    curl --connect-timeout 15 --max-time 20 --retry 5 -fsSL \"https://crt.sh/?CN=%25.\$line\" | sort -n | uniq -c | grep -o -P '(?<=\<TD\>).*(?=\<\/TD\>)' | sed -e '/white-space:normal/d'
done < "lines.txt"" >> birinci.sh
sh birinci.sh >> 1subdomain.txt
cat 1subdomain.txt | sed 's/\*\+//g' >> subdomainsonuc.txt
sort subdomainsonuc.txt -u >> subsonuc.txt
cat subsonuc.txt| waybackurls > sonuc.txt
echo "Buradaki islem icerige bagli olarak uzun surecek..."
cat sonuc.txt | httpx --status-code -silent >> sonasama.txt
cat sonasama.txt | grep -v .css | grep -v .png | grep -v .jpg | grep -v .gif | grep -v .xls | grep -v .docs | grep -v 404 | grep -v pdf >> bitti.txt
echo "cat bitti.txt inceleyin."
