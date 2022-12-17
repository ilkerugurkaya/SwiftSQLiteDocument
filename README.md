# SwiftSQLiteDocument
LÜTFEN OKU
Bu repomda Swift'te SQLite komutları nasıl çalışır onu göstereceğim.

PLEASE READ
In this repo I will show you how SQLite commands work in Swift.

Öncelikle Xcode uygulamasında SQLite framework'unu eklememiz gerekiyor. Bunun için aşağıdaki adımları takip edin.
1. Adım: Projemizde klasörler dizinin en üstünde bulunan (AppStore logosuna benzeyen) klasöre tıklıyoruz.
2. Adım: Açılan sayfada General bölümünün aşağı taraflarında Frameworks, Libraries, and Embedded Content bölümüne gelip artıya basıyoruz.
3. Adım: Açılan panelde sqlite yazıyoruz.
4. Adım: libsqlite3.tbd yazana basıp add diyoruz.
5. Adım: Xcode proje dosyamıza sqlite framework'u eklenmiş oldu.

First we need to add the SQLite framework in the Xcode application. For this, follow the steps below.
Step 1: Click on the folder (similar to the AppStore logo) located at the top of the folders directory in our project.
Step 2: On the page that opens, we come to the Frameworks, Libraries, and Embedded Content section at the bottom of the General section and press the plus.
Step 3: In the panel that opens, we write sqlite.
Step 4: Press libsqlite3.tbd and click add.
Step 5: The sqlite framework has been added to our Xcode project file.

Daha sonra github repomda bulunan fmdp klasörünün içindeki dosyaları Xcode proje klasörünün içine atıyoruz.
Çıkan panelde Copy items if needed ve Create folder references kutucuklarını işaretliyoruz.
Eğer sizde Add to targets kısmında kutucuk işaretli değilse proje isminiz olan kutucuğu seçiniz. (test yazanların dışındaki kutucuk)
Sonra ekran bir uyarı çıkacak Would you like to configure an Objective-C bridging header? olan uyarıda Create Bridging Header seçeneğini işaretliyoruz.
Böylece fmdp dosyaları proje dosyamıza eklenmiş oldu.

Then we put the files in the fmdp folder in my github repo into the Xcode project folder.
In the panel that appears, we tick the Copy items if needed and Create folder references boxes.
If you do not have the checkbox in the Add to targets section, select the box with your project name. (box outside of testers)
Then the screen will display a warning Would you like to configure an Objective-C bridging header? We tick the Create Bridging Header option in the warning.
Thus, fmdp files have been added to our project file.

Şimdi sırada köprü dosyasının kodlanması var.
Köprü dosyasının içine --> #import "FMDB.h" <-- içinde yazılı olan kodu yapıştırıyoruz.
Buradaki işlem bu kadar.

Now it's time to encode the bridge file.
Paste the code written in --> #import "FMDB.h" <-- into the bridge file.
That's the deal here.

Sıradaki adım ise bilgisayarınıza DB Browser uygulamasını indirmek. 
Bu siteden indirebilirsiniz --> https://sqlitebrowser.org/
Uygulamayı açtıktan sonra yeni veritabanını seçiyoruz.
Tablo adını istediğiniz ismi yapabilirsiniz ama kodlama kısmında doğru yazdığınıza emin olun.
Alan ekleme diyip isimlerini giriyorsunuz. Parametreleri seçiyorsunuz ve kaydet diyip çıkıyorsunuz.
Xcode proje klasörüne sürükleyip bırakıyorsunuz ve açılan panelde şu işlemleri yapıyorsunuz.
Çıkan panelde Copy items if needed ve Create folder references kutucuklarını işaretliyoruz.
Eğer sizde Add to targets kısmında kutucuk işaretli değilse proje isminiz olan kutucuğu seçiniz. (test yazanların dışındaki kutucuk)
Daha sonra eklendiğini kontrol etmek için klasörler dizinin en üstünde bulunan (AppStore logosuna benzeyen) klasöre tıklıyoruz.
Build Phases bölümüne gelip Copy Bundle resources kısmında veritabanımızın ismini görürsek eğer düzgün bir şekilde klasöre yüklenmiş demektir.
Örnek veritabanı resmi aşağıdaki gibidir.

The next step is to download the DB Browser application to your computer.
You can download it from this site --> https://sqlitebrowser.org/
After opening the application, we select the new database.
You can make the table name whatever you want, but make sure you write it correctly in the coding section.
You say add fields and enter their names. You select the parameters and save and exit.
You drag and drop to the Xcode project folder and do the following in the panel that opens.
In the panel that appears, we tick the Copy items if needed and Create folder references boxes.
If you do not have the checkbox in the Add to targets section, select the box with your project name. (box outside of testers)
Then we click on the folder at the top of the folders directory (which looks like the AppStore logo) to check that it has been added.
If we come to the Build Phases section and see the name of our database in the Copy Bundle resources section, it means that it has been properly uploaded to the folder.
The sample database image is as follows.

<img width="1710" alt="Ekran Resmi 2022-11-29 21 52 11" src="https://user-images.githubusercontent.com/112544173/204625138-8d7df0cd-887b-4b75-b8a6-ae92d12f29c2.png">

Geri kalan kodlamalar repodaki dosyalarda mevcut. ViewController üzerinden çalıştırılıyor, yorum satırları halinde olan metodların nasıl kullanılacağını gösteriyor. Kisilerdao dosyasının içinde SQLite kullanımı filan. Eğer sorunuz olursa buradan, instagram adım: @_kayailker yerlerinden bana ulaşıp sorabilirsiniz. Eğer çalışmayan yer olursa yardımcı olmaya çalışırım. Kolay gelsin.

The rest of the encodings are available in the files in the repo. It is run through the ViewController, it shows how to use the methods that are in the form of comments. The use of SQLite inside the Kisilerdao file. If you have any questions, you can contact me from here, my instagram name: @_kayailker and ask. If there is a place that doesn't work, I'll try to help. Good luck with.


