import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
const chapterList = [
  "El rey burgués", "El sátiro sordo","La ninfa","El fardo","El velo de la reina Mab","La canción de oro","El rubí","El palacio del sol","El pájaro azul","Palomas blancas y garzas morenas","En busca de cuadros","Acuarela 1","Paisaje 1","Aguafuerte","La vírgen de la paloma","La cabeza","Acuarela 2","Un retrato de Watteau","La Naturaleza muerta","Al carbón","Paisaje 2","El ideal","La muerte de la emperatriz de China","A una estrella","Primaveral","Estival","Autumnal","Pensamiento de otoño","A un poeta","Anagké","Caupolicán","Venus","De invierno","Leconte de Lisle", "Catulle Mendés","Walt Whitman","J. J. Palma","Salvador Díaz Mirón"
];
const chapterFiles = [
  "elReyBurgues", "elSatiroSordo", "laNinfa", "elFardo", "elVeloDeLaReinaMab", "laCancionDeOro", "elRubi", "elPalacioDelSol", "elPajaroAzul", "palomasBlancasYGarzasMorenas", "enBuscaDeCuadros", "acuarela1", "paisaje1", "aguafuerte", "laVirgenDeLaPaloma", "laCabeza", "acuarela2", "unRetratoDeWatteau", "laNaturalezaMuerta", "alCarbon", "paisaje2", "elIdeal", "laMuerteDeLaEmperatrizDeChina", "aUnaEstrella", "primaveral", "estival", "autumnal", "pensamientoDeOtono", "aUnPoeta", "anagke", "caupolican", "venus", "deInvierno", "leconteDeLisle", "catulleMendes", "waltWhitman", "jjpalma", "salvadorDiazMiron"
];

String chapter;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.blue)
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Azul... Rubén Darío"),
        leading: createShareButton("Descarga el libro Azul... de Rubén Darío, gratis: https://play.google.com/store/apps/details?id=io.libro.ruben_dario.azul", context),
      ),
      body: ListView(
        padding: EdgeInsets.only(right: 60.0, left: 60.0),
        children: [
          createTitle("Azul"),

          createButton(chapterList[0], context),
          createButton(chapterList[1], context),
          createButton(chapterList[2], context),
          createButton(chapterList[3], context),
          createButton(chapterList[4], context),
          createButton(chapterList[5], context),
          createButton(chapterList[6], context),
          createButton(chapterList[7], context),
          createButton(chapterList[8], context),
          createButton(chapterList[9], context),

          createTitle("En chile"),

          createButton(chapterList[10], context),
          createButton(chapterList[11], context),
          createButton(chapterList[12], context),
          createButton(chapterList[13], context),
          createButton(chapterList[14], context),
          createButton(chapterList[15], context),
          createButton(chapterList[16], context),
          createButton(chapterList[17], context),
          createButton(chapterList[18], context),
          createButton(chapterList[19], context),
          createButton(chapterList[20], context),
          createButton(chapterList[21], context),
          createButton(chapterList[22], context),
          createButton(chapterList[23], context),

          createTitle("El año lírico"),

          createButton(chapterList[24], context),
          createButton(chapterList[25], context),
          createButton(chapterList[26], context),
          createButton(chapterList[27], context),
          createButton(chapterList[28], context),
          createButton(chapterList[29], context),

          createTitle("Sonetos"),

          createButton(chapterList[30], context),
          createButton(chapterList[31], context),
          createButton(chapterList[32], context),

          createTitle("Medallones"),

          createButton(chapterList[33], context),
          createButton(chapterList[34], context),
          createButton(chapterList[35], context),
          createButton(chapterList[36], context),
          createButton(chapterList[37], context),

          createTitle("Mas libros gratis"),

          RaisedButton(
            color: Colors.orange,
            child: Text("Prosas Profanas", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            onPressed: _launchURL("https://play.google.com/store/apps/details?id=io.libro.ruben_dario.prosas_profanas")
          ),
          RaisedButton(
            color: Colors.pink,
            child: Text("Cantos de vida y esperanza", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            onPressed: _launchURL("https://play.google.com/store/apps/details?id=io.libro.ruben_dario.cantos_de_vida_y_esperanza")
          ),
          RaisedButton(
            color: Colors.red,
            child: Text("Ecce Homo", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            onPressed: _launchURL("https://play.google.com/store/apps/details?id=io.libro.nietzsche.ecce_homo")
          ),
          RaisedButton(
            color: Colors.yellow[700],
            child: Text("Cantos a la purísima", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            onPressed: _launchURL("https://play.google.com/store/apps/details?id=io.purisima_griteria.letra_de_canciones")
          ),

          createTitle("Extras"),
          
          RaisedButton(
            color: Colors.blue,
            child: Text("Web del desarrollador", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            onPressed: _launchURL("https://www.deybismelendez.com")
          ),

          Container(height: 60.0)
        ],
        
      ),
    );
  }
}

Widget createTitle(String title) {
  return Container( margin: EdgeInsets.all(16.0),child: Text(title,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.blue,
      fontSize: 20.0,
      fontWeight: FontWeight.bold
    ),
  ));
}

Widget createButton(String name, BuildContext context) {
  return RaisedButton(
    color: Colors.blue,
    child: Text(name, style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
    onPressed: () {chapter = name; Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ReadChapter()));},
  );
}

Widget createShareButton(String data, BuildContext context) {
  return IconButton(
    icon: Icon(Icons.share),
    onPressed: (){
      final RenderBox box = context.findRenderObject(); 
      Share.share(data, 
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    },
  );
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
// READ CHAPTER

class ReadChapter extends StatefulWidget {
  ReadChapter({Key key}) : super(key: key);

  @override
  _ReadChapterState createState() => _ReadChapterState();
}

class _ReadChapterState extends State<ReadChapter> {
  String data = " ";
  void beforeChapter() {
    int index = chapterList.indexOf(chapter);
    if (index > 0) {
      chapter = chapterList[index-1];
      loadChapter().then((String value){
        setState(() {
          data = value;
        });
      });
    } else {
      index = 0;
    }
  }
  void nextChapter() {
    int index = chapterList.indexOf(chapter);
    if (index < chapterList.length - 1) {
      chapter = chapterList[index+1];
      loadChapter().then((String value){
        setState(() {
          data = value;
        });
      });
    } else {
      index = chapterList.length - 1;
    }
  }
  @override
  void initState() {
    super.initState();
    loadChapter().then((String value) {
      setState(() {
        data = value;
      });
    });
  }
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () { Navigator.pop(context); },
          icon: Icon(Icons.arrow_back, color: Colors.white,)
        ),
        title: Text(chapter),
        actions: [
          createShareButton(data, context),
          IconButton(icon: Icon(Icons.navigate_before),
            onPressed: () {beforeChapter();},
          ),
          IconButton(icon: Icon(Icons.navigate_next),
            onPressed: () {nextChapter();},
          )
        ],
      ),
      body: Markdown(data: data, padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 60.0, top: 16.0)),
    );
  }
}

Future<String> loadChapter() async {
  return await rootBundle.loadString("assets/md/" + chapterFiles[chapterList.indexOf(chapter)] + ".md");
}