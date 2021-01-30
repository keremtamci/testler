# deneme
lines.txt'e verilen domainleri crt.sh'dan geçirip muhtemel çalışan sublar ayıklanır.
crt.sh'dan alınan fazla (*.) bilgiler temizlenir.
waybackurls e aktarılıp , pathler keşfedilir.
httpx tool ile çalışan urller belirlenir ve son olarak grep ile gereksiz dosyalar ayıklanır.

Bu tool'u manuel kullanmak istiyorum sadece waybacks'e aktardığım urllerde şöyle bir problem var.

Örnek olarak :

site1.com/app/file.php?id=1&viewtype=xml

site1.com/app/file.php?id=2&viewtype=xml

site1.com/app/file.php?id=3&viewtype=xml

site1.com/app/request.php?id=1

site1.com/app/request.php?id=2

site1.com/app/request.php?id=3

Yukarıda değişen tek durum id değerinin farklı olması ve ben zafiyet aradığım için farklı idleri waybacksurl gönderip işlemi uzatmak istemiyorum.

Aşağıdaki iki urle sahip olmak istiyorum :

site1.com/app/request.php?id=1

site1.com/app/request.php?id=2&viewtype=xml

x.phpden sonra gelen parametrelerin kontrolü,aynı parametreye sahip olanların çıkartılması
ve aralarından 1 tanesinin >> .txt'e eklenmesini beklemekteyim.

Tek sitede değil tüm sorgulanan domain ve sublarda parametre ve uniq işlemlerinin gerçekleşmesini sizden istemekteyim.

Gereksinimler : 

Tekrar çalıştırılırken kalan txtler ve birinci.sh'ın silinmesi gerekiyor. Deneme sürecinde bu şekilde kullanıyorum.

httpx
lines.txt
curl
