import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FalSayfasi(),
    );
  }
}

class FalSayfasi extends StatefulWidget {
  const FalSayfasi({Key? key}) : super(key: key);


  @override
  State<FalSayfasi> createState() => _FalSayfasiState();
}

class _FalSayfasiState extends State<FalSayfasi> {

  List<String> tavsiye = ['',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  int yaniIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          centerTitle: true,
          title: Text('GÜNÜN FALI'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(height: 35,),
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/falci.png'),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(height: 25,),

              // ignore: prefer_const_constructors
              
              Card(
                margin: EdgeInsets.symmetric(horizontal: 45.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                      color: Colors.red,
                    ),
                  title: Text('AŞK DURUMU',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                  onTap: () {
                  setState(() {
                    yaniIndex = Random().nextInt(5) + 1;
                  });
                  },
                ),  
              ),
              
              const SizedBox(height: 7,),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 45.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                  ),
                  title: Text('PARA DURUMU',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  onTap: () {
                  setState(() {
                    yaniIndex = Random().nextInt(5) + 6;
                  });
                  },
                ),
              ),
              const SizedBox(height: 7,),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 45.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.spa,
                    color: Colors.blue,
                  ),
                  title: Text('GÜNLÜK TAVSİYE',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  onTap: () {
                  setState(() {
                    yaniIndex = Random().nextInt(5) + 11;
                  });
                  },
                ),
              ),

              const SizedBox(height: 15,),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 45.0),
                color: Colors.transparent,
                child: Text(tavsiye[yaniIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 17,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

