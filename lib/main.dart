import 'package:flutter/material.dart';


void main() => runApp(RussianPamirDictionaryApp());

class RussianPamirDictionaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Цвет темы
        brightness: Brightness.light, // Светлая тема
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark, // Темная тема
      ),
      home: DictionaryHomePage(),
    );
  }
}

class DictionaryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text('Русско-Памирский Словарь',
          style: const TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      //Меню
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage('https://s3.envato.com/files/243311193/2T4A7742.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.blue,
              ),
              child: Text(
                'Меню',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              iconColor: Colors.blue,
              title: Text('Памирские Языки'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      PamirLanguage()), // Открыть страницу Памирские языки
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.abc),
              iconColor: Colors.blue,
              title: Text('Алфавит'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      Alphabet()), // Открыть страница Алфавит
                );
              },
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.favorite),
              iconColor: Colors.blue,
              title: Text('Избранное'),
              onTap: () {
                // Открыть страницу избранного
              },
            ),
            ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.blue,
                title: Text('Настройки'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        setting()), // Открыть страницу настройка
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.star),
              iconColor: Colors.blue,
              title: Text('Оценить'),
              onTap: () {
                // Оценит приложение
              },
            ),

            Divider(height: 0),
          ],
        ),
      ),


      //Список Слова

      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              scrolledUnderElevation: 500.0,
              titleSpacing: 15.0,
              backgroundColor: Colors.transparent,

              title: SearchAnchor.bar(
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<Widget>.generate(
                    5,
                        (int index) {
                      return ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text('Fkj $index'),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}




/////////////////////////////////////////////////////////////////////////////////////

                                    //  Cтраница Памирские языки

class PamirLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text('Памирские Языки'),
      ),
      body: ListView(

        children: const <Widget>[

          ListTile(
            leading: Icon(Icons.book) ,
            title: Text('Шугнанский Язык.',  style:TextStyle (fontSize: 20),),
            subtitle: Text("Шугна́нский язы́к (шугн. хуг̌ну̊н зив, хуг̌ну̊нӣ; xuγ̌nůn ziv, xuγ̌nůnī или xuγnöne zev[1][2], тадж. забони шуғнонӣ[3][4]) — язык шугнанцев. Относится к памирским языкам, подгруппе иранских языков. Распространён в исторической области Шугнан: в Горно-Бадахшанской АО Таджикистана и в провинции Бадахшан Афганистана. Есть несколько диалектов, в том числе баджувский и шахдаринский. Ближайшими родственниками шугнанского являются рушанский, хуфский, бартангский, рошорвский и сарыкольский языки. Англоязычная академическая традиция считает эти языки диалектами шугнанскогоПерейти к разделу «Лингвогеография». "
                "Вследствие географического соседства и относительного родства, шугнанский испытал значительное влияние таджикского языка, заметное в фонетике, грамматике и лексике ..."),
          ),


          Divider(height: 0),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Рушанский Язык  ' ,  style:TextStyle (fontSize: 20),),
            subtitle: Text("До конца XX века рушанский язык являлся бесписьменным. В начале 1990-х годов был разработан рушанский алфавит на основе кириллицы, ..."),
          ),
          Divider(height: 0),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Ваханский язык'  ,  style:TextStyle (fontSize: 20),
            ),
            subtitle: Text("Ваха́нский язы́к — язык ваханцев, одного из памирских народов. Распространён в качестве языка бытового общения на границе между Таджикистаном и Афганистаном по верхнему течению реки Пяндж "
                "(на территории исторической провинции Вахан), в северных районах Пакистана и в китайской части Восточного Памира (Синьцзян-Уйгурский автономный район). "),
          ),
        ],
      ),
    );
  }
}




////////////////////////////////////////  Алфавит  /////////////////////////////////////////////

                                   // Открыть страница Алфавит

class Alphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text('Алфавит'),
      ),
      body: ListView(

        children: const <Widget>[

          ListTile(
            leading: CircleAvatar(child: Text('A')),
          ),
          Divider(height:0),
          ListTile(
            leading: CircleAvatar(child: Text('А̄')),
          ),
          Divider(height:0),
          ListTile(
            leading: CircleAvatar(child: Text('Б')),
          ),
          Divider(height:0),
          ListTile(
            leading: CircleAvatar(child: Text('А̄')),
          ),
          Divider(height:0),
          ListTile(
            leading: CircleAvatar(child: Text('А̄')),
          ),
          Divider(height:0),
          ListTile(
            leading: CircleAvatar(child: Text('А̄')),
          ),
          Divider(height:0),
          ListTile(
            leading: CircleAvatar(child: Text('А̄')),
          ),

        ],
      ),


    );
  }
}
/////////////////////////////////////////////////////////////////////////////////////

                               // Открыть страницу настройка

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройка'),
      ),
      body: Center(
        child: Text('Привет Мир'),
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////




