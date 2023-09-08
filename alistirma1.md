#HAFTASONU ALIŞTIRMASI
<details>
<summary>Aşağıdaki Komutların Her Birinin Ne İşe Yaradığını Açıklayın ve Kullanımına İlişkin Örnekler Verin:

  * touch
  * ls
  * rm
  * cat
  * cp
  * mkdir
  * pwd
  * cd
</summary><br>

  * touch - Dosyanın zaman damgasını günceller. Daha yaygın olarak dosyalar oluşturmak için kullanılır.
  * ls - Dosyaları ve dizinleri listeler.
  * rm - Dosyaları ve dizinleri siler.
  * cat - Dosyaları oluşturur, görüntüler ve birleştirir.
  * cp - Dosyaları ve dizinleri kopyalar.
  * mkdir - Dizinler oluşturur.
  * pwd - Şu anki çalışma dizinini yazdırır (kullanıcının şu anda nerede olduğu yolu).
  * cd - Dizin değiştirir.
</details>

<details>
<summary>Aşağıdaki Komutların Her Birinin Ne Yaptığını Açıklayın:

  * cd /
  * cd ~
  * cd
  * cd ..
  * cd .
  * cd -

</summary><br>

* cd / -> kök dizinine geç
* cd ~ -> ev dizinine geç
* cd -> ev dizinine geç
* cd .. -> şu anki dizininin bir üstündeki (ebeveyn) dizinine geç
* cd . -> şu anda olduğun dizinde kal
* cd - -> en son ziyaret ettiğin yola geri dön.

</details>

<details>
<summary> Bazı Komutlar -r/-R Bayrağı ile Çalıştırılabilir. Bu Bayrak Ne İşe Yarar? Bir Örnek Verin:</summary><br>

- -r (veya bazı komutlarda -R) bayrağı, belirli bir komutun yinelemeli olarak çalıştırılmasına izin verir. Örneğin, aşağıdaki ağacın tüm dosyalarını yineleyerek listelemek mümkündür (`ls -R`):

    /dir1/
      dir2/
        file1
        file2
      dir3/
        file3

    Tüm dosyaları listelemek için `ls -R /dir1` komutunu çalıştırabilirsiniz.

</details>

<details>

<summary>`ls -l` Komutunun çıktısındaki Her Alanı Açıklayın:</summary><br>

* Dosya izinleri, bağlantı sayısı, sahibin adı, sahibin grup adı, dosya boyutu, son değiştirilme zamanı ve dizin/dosya adını gösterir
</details>

<details>
<summary>Gizli Dosyalar/Dizinler Nedir? Onları Nasıl Listelersiniz?</summary><br>

- Bunlar, standart bir `ls` doğrudan listeleme işleminden sonra doğrudan görüntülenmeyen dosyalardır. Örnek olarak, .bashrc gibi bazı komut dosyalarını çalıştırmak için kullanılır. Ayrıca, ev sahibi makinenizdeki hizmetlerle ilgili yapılandırmayı saklayan .KUBECONFIG gibi dosyaları da içerebilirler. Bunları listelemek için kullanılan komut `ls -a`dır.
</details>

<details>
<summary>Programlar İçin Giriş ve Çıkış Açısından > ve < Ne İşe Yarar?</summary><br>
  - Bu işlem, stdin (standart giriş) ve stdout (standart çıkış) kullanarak belirli bir dosya için giriş ve çıkış alır.
</details>

<details>
<summary>Aşağıdaki Komutların Her Birinin Ne İşe Yaradığını Açıklayın ve Örnekler Verin:

  * sed
  * grep
  * cut
</summary><br>

  * sed - Bir akış düzenleyici. Dosyadaki bir kelimeyi değiştirmek gibi çeşitli amaçlar için kullanılabilir. Örnek: `sed -i s/osman/orhan/g`
  * grep - Bir arama aracı. Bir dosyada metin aramak, saymak veya eşleştirmek için kullanılır:
    - Bir dosyada belirli bir kelimeyi içeren her satırı aramak için: `grep 'kelime' dosya.md`
    - Bir dosyada belirli bir dizenin kaç kez göründüğünü toplamak için: `grep -c 'Bu bir yazidir' dosya.md`
  * cut - Bir dosyanın her satırının seçilen bölümlerini kesmek için kullanılan bir araçtır:
    - Sözdizimi: `cut SEÇENEK [DOSYA]`
      - Bir dosyadaki bir kelimenin ilk iki baytını kesmek için: `cut -b 1-2 dosya.md`, çıktı: `os`
</details>

<details>
<summary>Dosya veya Dizin Adını Nasıl Değiştirirsiniz?*</summary><br>

  - `mv` komutunu kullanarak.
</details>

<details>
<summary>Aşağıdaki Senaryolar İçin Hangi Komutu Kullanırdınız (ve Nasıl)?**

  * Dosyalar içeren bir klasörü silin
  * Bir dosyanın içeriğini görüntüleyin
  * /tmp/x dosyasına herkes için erişim sağlayın
  * Çalışma dizinini kullanıcı ana dizinine değiştirin
  * Dosya /tmp/y içindeki "osman" kelimesinin her görünümünü "orhan" ile değiştirin
</summary><br>

  - `rm -rf dir`
  - `cat or less`
  - `chmod 777 /tmp/x`
  - `cd ~`
  - `sed -i s/osman/orhan/g /tmp/y`
</details>

<details>
<summary>Belirli bir komutun yolu nedir? Nasıl kontrol edersiniz?</summary><br>

  * whereis
  * which
</details>

<details>
<summary>Bu iki komut arasındaki fark nedir? Aynı sonucu mu verecek?

- echo hello world
- echo "hello world"
</summary><br>
Her iki komut da aynı çıktıyı üretir, yani her iki durumda da "hello world" ifadesini ekrana basar.

Ancak, bu iki komut arasında bazı temel farklar vardır:

echo hello world komutunda, "hello" ve "world" iki ayrı argüman olarak echo komutuna geçirilir.
echo "hello world" komutunda, tırnak işaretleri içindeki "hello world" ifadesi tek bir argüman olarak echo komutuna geçirilir.
Bu örnekte sonuç aynıdır, çünkü echo her iki argümanı arasında boşluk ekleyerek ekrana basar. Ancak, bazı durumlarda tırnak işaretlerinin kullanılması argümanların nasıl işlendiğini etkileyebilir. Bu yüzden doğru durum için doğru komut biçimini kullanmak önemlidir.

</details>

<details>
<summary> (piping) nedir? Bu işlemi nasıl gerçekleştirirsiniz?</summary><br>

Linux'ta bir boru (pipe) kullanmak, bir komutun çıktısını başka bir komutun girdisine göndermenize izin verir. Örneğin: 'cat /etc/services | wc -l'
</details>

<details>
<summary>Aşağıdaki komutlardaki hataları düzeltin:

  * sed "s/1/2/g' /tmp/myFile
  * find . -iname \*.yaml -exec sed -i "s/1/2/g" {} ;
</summary><br>

```
sed 's/1/2/g' /tmp/myFile  
find . -iname "*.yaml" -exec sed -i "s/1/2/g" {} \;
```
</details>

<details>
<summary>Geçmişte hangi komutları çalıştırdığınızı nasıl kontrol edersiniz?</summary><br>

history komutu ya da .bash_history dosyasına bakarsın 
</details>

<details>
<summary> Örneğin "cron" ya da "df" komutunu çalıştırdığınızda "komut bulunamadı" hatası alıyorsunuz. Sorun ne olabilir ve nasıl düzeltilir?"</summary><br>

<p>
Muhtemelen varsayılan/oluşturulan $PATH değişkeni bir şekilde değiştirildi veya geçersiz kılındı ve bu nedenle normalde df komutunun yer alması gereken <code>/bin/</code> dizinini içermiyor.
Bu sorun, yorumlayıcınızın yapılandırma dosyası olan bash_profile'ın veya benzer bir dosyanın yanlış değiştirilmesi sonucu da meydana gelebilir.
Bu sorunu, $PATH değişkeninizi düzelterek çözebilirsiniz:

Düzeltmek için birkaç seçeneğiniz var:

- İhtiyaç duyduğunuz şeyi manuel olarak $PATH değişkeninize eklemek: <code>PATH="$PATH":/user/bin:/..vb</code>
- Dağıtımınızın (distro) varsayılan $PATH değişkenini araştırıp, #1 yöntemiyle kopyala-yapıştır yapabilirsiniz.


Not: Bu tür hataları almanın pek çok yolu vardır: bash_profile'ın veya yorumlayıcınızın başka bir yapılandırma dosyasının yanlış değiştirilmesi; izin sorunları, yanlış derlenmiş yazılım (eğer kendiniz derlediyseniz)... her zaman doğru olacak bir cevap yoktur.

</p>
</details>

<details>
<summary>Uygulamaları periyodik olarak çalıştırmak için ne yapmalısınız? </summary><br>

<code>cron</code> ve <code>at</code> komutlarını kullanarak görevleri planlayabilirsiniz.
cron ile görevler aşağıdaki format kullanılarak planlanır:

- <code>*/30 * * * * bash myscript.sh</code> Bu scripti her 30 dakikada bir çalıştırır.

- <minute> <hour> <day of month> <month> <day of week> <yürütülecek komut>

- Görevler bir cron dosyasında saklanır, bu dosyaya <code>crontab -e</code> kullanarak yazabilirsiniz.
</details>

<details>
<summary>Linux I/O yönlendirmesini açıklayınız</summary><br>
Linux'ta, IO yönlendirmesi bir komutun veya programın varsayılan giriş/çıkış davranışını değiştirmenin bir yoludur. Bu, girişi ve çıkışı farklı kaynaklara/hedeflere, örneğin dosyalara, cihazlara ve diğer komutlara yönlendirmenizi sağlar.

IO yönlendirmesinin bazı yaygın örnekleri:

Standart Çıkışı (stdout) Yönlendirme:
<code>ls > filelist.txt</code>

Standart Hata (stderr) Yönlendirme:
<code>ls /some/nonexistent/directory 2> error.txt</code>

Bir dosyaya ekleme yapma:
<code>echo "merhaba" >> myfile.txt</code>

Girdiyi (stdin) Yönlendirme:
<code>sort < unsorted.txt</code>

Boruları (Pipes) Kullanma: Borular ("|"):
<code>ls | grep ".txt$"</code>  
</details>

<details>
<summary>Linux çıkış yönlendirmesine "stdout" bir örnek yap</summary><br>

<code>ls > ls_output.txt</code>
</details>

<details>
<summary> Linux hata yönlendirmesine "stderr" bir örnek yap</summary><br>

<code>yippiekaiyay 2> ls_output.txt</code>
</details>


<details>
<summary>Bu komutu açıkla. Ne yapar? <code>osman 1>&2 orhan.txt</code></code></summary><br>

osman diye bir uygulama varsa ve çalışırsa stdout çıktısını orhan.txt'e atar. stderr stream'i de stdout'a yönlendirildiği için hatalar da bu dosyaya kaydedilir. 
</details>
