import 'package:flutter/material.dart';
void main() {
  runApp(const IbadetUygulamasi());
}

class IbadetUygulamasi extends StatelessWidget {
  const IbadetUygulamasi({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İbadet Günlüğüm',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: const IbadetEkrani(),
    );
  }
}

class IbadetEkrani extends StatelessWidget {
  const IbadetEkrani({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İbadet Günlüğüm'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Başlık satırı
            Row(
              children: [
                const Icon(
                  Icons.mosque,
                  size: 40,
                  color: Colors.green,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hayırlı Günler',
                        style: Theme.of(context)
                            .textTheme.titleLarge,
                      ),
                      const Text(
                        'İbadetlerini takip etmeyi unutma.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Günün duası
            const Text(
              'Günün Duası',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rabbi zidni ilma.',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Anlamı: Rabbim, ilmimi artır.',
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Tâhâ Suresi, 114. ayet',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Namaz vakitleri
            const Text(
              'Namaz Vakitleri',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const VakitSatiri(
              ad: 'İmsak',
              saat: '05:12',
              ikon: Icons.wb_twilight,
            ),
            const VakitSatiri(
              ad: 'Öğle',
              saat: '12:43',
              ikon: Icons.wb_sunny,
            ),
            const VakitSatiri(
              ad: 'İkindi',
              saat: '16:02',
              ikon: Icons.sunny_snowing,
            ),
            const VakitSatiri(
              ad: 'Akşam',
              saat: '18:35',
              ikon: Icons.wb_twilight,
            ),
            const VakitSatiri(
              ad: 'Yatsı',
              saat: '19:52',
              ikon: Icons.nightlight_round,
            ),
            const SizedBox(height: 24),
            // Günlük iyilik hatırlatması
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Günün İyiliği',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Bugün birine yardım etmeyi '
                      've güzel söz söylemeyi dene.',
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.end,
                      children: [
                        FilledButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'İyilik hatırlatması '
                                  'görüntülendi.',
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.favorite),
                          label: const Text('Tamam'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Namaz vakti satırı
class VakitSatiri extends StatelessWidget {
  final String ad;
  final String saat;
  final IconData ikon;
  const VakitSatiri({
    super.key,
    required this.ad,
    required this.saat,
    required this.ikon,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(ikon, color: Colors.green),
            const SizedBox(width: 12),
            Expanded(
              child: Text(ad),
            ),
            Text(
              saat,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}