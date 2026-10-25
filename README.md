# 🕌 İbadet Günlüğüm – Flutter Row ve Column Uygulaması

Flutter ile geliştirilen **İbadet Günlüğüm**, `Row` ve `Column` widget'larının kullanımını uygulamalı olarak öğrenmek amacıyla hazırlanmış örnek bir mobil uygulamadır.

Uygulama; günün duasını, örnek namaz vakitlerini ve günlük iyilik hatırlatmasını tek bir ekranda bir araya getirir. Özellikle Flutter ile mobil uygulama geliştirmeyi öğrenen öğrenciler için temel arayüz tasarımı ve widget yerleşimi konularında eğitici bir örnek sunar.

## 📚 Eğitim Makalesi

Uygulamanın geliştirilmesinde kullanılan `Row` ve `Column` widget'ları hakkında ayrıntılı açıklamalar, örnek kodlar ve uygulama adımları için blog makalesini inceleyebilirsiniz.

🔗 [Flutter’da Row ve Column Widget’ları – Pardus Üzerinde Flutter Dersleri](https://pardusflutter.blogspot.com/2026/10/flutterda-row-ve-column-widgetlar.html)

## 🎯 Projenin Amacı

Bu projenin amacı, Flutter'da arayüz bileşenlerinin yatay ve dikey olarak nasıl düzenlendiğini gerçekçi bir uygulama örneği üzerinden göstermektir.

Uygulama sayesinde öğrenciler:

- `Row` widget'ı ile bileşenleri yatay olarak sıralamayı,
- `Column` widget'ı ile bileşenleri dikey olarak yerleştirmeyi,
- `Expanded` ile kullanılabilir alanı yönetmeyi,
- `SizedBox` ile bileşenler arasında boşluk oluşturmayı,
- `Card` ve `Padding` ile düzenli arayüzler tasarlamayı,
- Yeniden kullanılabilir özel widget oluşturmayı,
- `StatelessWidget` ve `MaterialApp` yapılarını kullanmayı öğrenebilir.

## ✨ Uygulama Özellikleri

- 🕌 **Karşılama Alanı:** Cami simgesi, başlık ve açıklama.
- 🤲 **Günün Duası:** “Rabbi zidni ilma” duası, Türkçe anlamı ve ayet bilgisi.
- 🕒 **Namaz Vakitleri:** İmsak, öğle, ikindi, akşam ve yatsı vakitlerini gösteren kartlar.
- 💚 **Günün İyiliği:** Öğrencileri yardımseverliğe ve güzel söz söylemeye teşvik eden hatırlatma.
- 🔔 **Etkileşimli Buton:** “Tamam” butonuna basıldığında bir `SnackBar` mesajı gösterilir.
- 🎨 **Material 3 Tasarımı:** Yeşil renk teması ve Flutter Material bileşenleri.

> **Not:** Uygulamadaki namaz vakitleri örnek amaçlıdır. Gerçek namaz vakitleri konuma ve tarihe göre değişir; uygulama şu anda canlı namaz vakti verisi kullanmamaktadır.

## 🛠️ Kullanılan Teknolojiler

| Teknoloji / Widget | Kullanım amacı |
|---|---|
| Flutter | Mobil uygulama geliştirme |
| Dart | Uygulamanın programlama dili |
| Material 3 | Modern arayüz tasarımı |
| `MaterialApp` | Uygulamanın temel yapısı |
| `Scaffold` | Ekran yerleşimi |
| `Row` | Yatay bileşen yerleşimi |
| `Column` | Dikey bileşen yerleşimi |
| `Expanded` | Kalan yatay alanı kullanma |
| `SizedBox` | Bileşenler arasında boşluk oluşturma |
| `Card` | İçerikleri kart biçiminde sunma |
| `Padding` | İç boşlukları düzenleme |
| `SingleChildScrollView` | İçeriğin kaydırılmasını sağlama |
| `SnackBar` | Kullanıcıya kısa bildirim gösterme |
| `StatelessWidget` | Değişmeyen arayüz bileşenleri oluşturma |

## 📂 Proje Yapısı

Projenin temel dosya yapısı aşağıdaki gibidir:

```text
ibadet-gunlugum/
├── lib/
│   └── main.dart
├── pubspec.yaml
└── README.md
```

- `lib/main.dart`: Uygulamanın başlangıç noktası ve arayüz bileşenleri.
- `pubspec.yaml`: Flutter projesinin yapılandırma dosyası.
- `README.md`: Proje açıklaması ve kurulum rehberi.

## 🚀 Kurulum ve Çalıştırma

### 1. Gereksinimler

- Flutter SDK
- Dart SDK (Flutter ile birlikte gelir)
- Visual Studio Code veya Android Studio
- Android emülatörü ya da fiziksel bir cihaz

### 2. Projeyi GitHub'dan indirin

Terminali açın ve aşağıdaki komutu çalıştırın:

```bash
git clone https://github.com/nuritiras/row_column_uygulamasi
```

`<GITHUB_REPO_URL>` bölümünü kendi GitHub depo adresinizle değiştirin.

Ardından proje klasörüne geçin:

```bash
cd ibadet-gunlugum
```

### 3. Bağımlılıkları yükleyin

```bash
flutter pub get
```

### 4. Uygulamayı çalıştırın

```bash
flutter run
```

Uygulama, bağlı cihazda veya seçili emülatörde başlatılacaktır.

## 💻 Kodun Temel Mantığı

### 1. Row ile yatay yerleşim

Uygulamanın başlık bölümünde cami simgesi ile metinler aynı satırda gösterilir.

```dart
Row(
  children: [
    const Icon(Icons.mosque, size: 40),
    const SizedBox(width: 12),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hayırlı Günler'),
          Text('İbadetlerini takip etmeyi unutma.'),
        ],
      ),
    ),
  ],
)
```

Burada `Row`, bileşenleri yan yana yerleştirir. İç içe kullanılan `Column` ise başlık ve açıklamayı alt alta sıralar. `Expanded`, metin grubunun kalan yatay alanı kullanmasını sağlar.

### 2. Column ile dikey yerleşim

Uygulamanın ana içeriği bir `Column` içerisinde düzenlenmiştir.

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Günün Duası'),
    SizedBox(height: 8),
    Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text('Rabbi zidni ilma.'),
      ),
    ),
  ],
)
```

Bu yapı, başlıkların ve içerik kartlarının alt alta yerleştirilmesini sağlar.

### 3. Yeniden kullanılabilir VakitSatiri widget'ı

Namaz vakitlerinin her biri, `VakitSatiri` adlı özel bir `StatelessWidget` ile oluşturulmuştur.

```dart
VakitSatiri(
  ad: 'İmsak',
  saat: '05:12',
  ikon: Icons.wb_twilight,
)
```

Widget'a namazın adı, saati ve simgesi parametre olarak gönderilir. Böylece aynı arayüz yapısı farklı bilgilerle tekrar kullanılabilir.

### 4. SnackBar ile kullanıcı bildirimi

Günün iyiliği kartındaki butona basıldığında kullanıcıya kısa bir bildirim gösterilir. Bu örnek, Flutter'da bir butonun `onPressed` geri çağrısı üzerinden nasıl işlem yapılabileceğini gösterir.

## 🧠 Eğitimde Kullanım

Bu proje, özellikle **Bilişim Teknolojileri alanında mobil uygulama geliştirme dersleri** için kullanılabilir.

Önerilen etkinlikler:

1. `Row` ve `Column` widget'larının görevlerini karşılaştırın.
2. `mainAxisAlignment` ve `crossAxisAlignment` özelliklerini değiştirerek farklı yerleşimleri gözlemleyin.
3. Namaz vakti kartlarına yeni simgeler ve açıklamalar ekleyin.
4. Günün iyiliği mesajını farklı değerler içerecek şekilde düzenleyin.
5. `VakitSatiri` widget'ını kullanarak yeni satırlar oluşturun.
6. Uygulamayı farklı ekran boyutlarında çalıştırarak taşma ve hizalama sorunlarını inceleyin.

## 🌱 Değerler Eğitimi

Uygulama, programlama becerilerinin yanı sıra öğrencilerin günlük yaşamlarında güzel davranışlar geliştirmelerini destekleyen bir içerik sunar.

- **İyilik:** İnsanlara yardım etmenin ve güzel söz söylemenin önemini hatırlatır.
- **Düzen ve sorumluluk:** Günlük ibadetler hakkında hatırlatıcı bir ekran sunar.
- **İlim sevgisi:** Günün duası aracılığıyla öğrenmeye ve faydalı bilgi edinmeye teşvik eder.

## 🔧 Geliştirme Fikirleri

Proje, temel Flutter konularını öğrendikten sonra aşağıdaki özelliklerle geliştirilebilir:

- Gerçek namaz vakitlerini bir API üzerinden alma.
- Günlük ibadetleri işaretleyebileceğiniz bir takip sistemi ekleme.
- `StatefulWidget` ve `setState` ile arayüzü etkileşimli hâle getirme.
- Günün duasını ve iyilik mesajını değiştirebilme.
- `SharedPreferences` ile kullanıcı tercihlerini saklama.
- Bildirimler aracılığıyla hatırlatma yapma.
- Koyu tema ve farklı renk seçenekleri ekleme.

## 📖 Kaynak

**Blog:** [Pardus Üzerinde Flutter Dersleri](https://pardusflutter.blogspot.com/2026/10/flutterda-row-ve-column-widgetlar.html)

Bu proje, Flutter'da `Row`, `Column` ve temel Material bileşenlerinin kullanımını uygulamalı olarak öğretmek amacıyla hazırlanmıştır.

## 📄 Lisans

Bu projeyi eğitim ve öğrenme amaçlı kullanabilir, inceleyebilir ve kendi çalışmalarınız için geliştirebilirsiniz. Yeniden dağıtım ve kullanım koşullarını belirlemek için depoya uygun bir açık kaynak lisansı eklemeniz önerilir.

<img width="798" height="1600" alt="image" src="https://github.com/user-attachments/assets/df36bd3c-3598-49e3-b576-7cd73dde09d2" />

