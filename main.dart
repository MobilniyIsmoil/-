// import 'package:flutter/material.dart';
// import 'package:testuchun00111/salom.dart';
//
// import 'Main_01.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: ZValueCalculator(), //TrainFlightList(),//MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
//
// import 'Main_01.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: TrainFlightList(),
//   ));
// }

//??? Bu tets uchun edi???///

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CalculatorScreen(),
//     );
//   }
// }
//
// class CalculatorScreen extends StatefulWidget {
//   @override
//   _CalculatorScreenState createState() => _CalculatorScreenState();
// }
//
// class _CalculatorScreenState extends State<CalculatorScreen> {
//   int selectedFormula = 1; // Изначально выбрана первая формула
//   TextEditingController nController = TextEditingController();
//   double result = 0.0;
//
//   void calculateResult() {
//     int n = int.tryParse(nController.text) ?? 0;
//
//     setState(() {
//       // Реализуйте вычисление значения выражения в зависимости от выбранной формулы
//       // В данном примере, просто используем формулу суммы обратных чисел от 1 до N
//       result = calculateSum(n);
//     });
//   }
//
//   double calculateSum(int n) {
//     double sum = 0.0;
//     for (int i = 1; i <= n; i++) {
//       sum += 1 / i;
//     }
//     return sum;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calculator App'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             DropdownButton(
//               value: selectedFormula,
//               items: [
//                 DropdownMenuItem(
//                   value: 1,
//                   child: Text('Формула 1'),
//                 ),
//                 DropdownMenuItem(
//                   value: 2,
//                   child: Text('Формула 2'),
//                 ),
//                 // Добавьте другие формулы по необходимости
//               ],
//               onChanged: (value) {
//                 setState(() {
//                   selectedFormula = value as int;
//                 });
//               },
//             ),
//             TextField(
//               controller: nController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: 'Введите значение N'),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: calculateResult,
//               child: Text('Вычислить'),
//             ),
//             SizedBox(height: 16),
//             Text('Результат: $result'),
//           ],
//         ),
//       ),
//     );
//   }
// }


/////// bu lb _ 08 /////


//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CalculatorScreen(),
//     );
//   }
// }
//
// class CalculatorScreen extends StatefulWidget {
//   @override
//   _CalculatorScreenState createState() => _CalculatorScreenState();
// }
//
// class _CalculatorScreenState extends State<CalculatorScreen> {
//   int selectedFormula = 1; // Изначально выбрана первая формула
//   TextEditingController nController = TextEditingController();
//   double result = 0.0;
//
//   void calculateResult() {
//     int n = int.tryParse(nController.text) ?? 0;
//
//     setState(() {
//       // Реализуйте вычисление значения выражения в зависимости от выбранной формулы
//       switch (selectedFormula) {
//         case 1:
//           result = calculateSum(n);
//           break;
//         case 2:
//           result = calculateProductSum(n);
//           break;
//       // Добавьте другие формулы по необходимости
//       }
//     });
//   }
//
//   double calculateSum(int n) {
//     double sum = 0.0;
//     for (int i = 1; i <= n; i++) {
//       sum += 1 / i;
//     }
//     return sum;
//   }
//
//   double calculateProductSum(int n) {
//     double sum = 0.0;
//     for (int i = 1; i <= n; i++) {
//       sum += (2 * i) / (calculateFactorial(i));
//     }
//     return sum;
//   }
//
//   int calculateFactorial(int num) {
//     if (num == 0 || num == 1) {
//       return 1;
//     } else {
//       return num * calculateFactorial(num - 1);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calculator App '),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             DropdownButton(
//               value: selectedFormula,
//               items: [
//                 DropdownMenuItem(
//                   value: 1,
//                   child: Text('Формула 1'),
//                 ),
//                 DropdownMenuItem(
//                   value: 2,
//                   child: Text('Формула 2'),
//                 ),
//                 // Добавьте другие формулы по необходимости
//               ],
//               onChanged: (value) {
//                 setState(() {
//                   selectedFormula = value as int;
//                 });
//               },
//             ),
//             TextField(
//               controller: nController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: 'Введите значение N'),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: calculateResult,
//               child: Text('Вычислить'),
//             ),
//             SizedBox(height: 16),
//             Text('Результат: $result'),
//           ],
//         ),
//       ),
//     );
//   }
// }

////??? bu LB _ 09 ???///

//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Expression Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ExpressionCalculatorApp(),
//     );
//   }
// }
//
// class ExpressionCalculatorApp extends StatefulWidget {
//   @override
//   _ExpressionCalculatorAppState createState() => _ExpressionCalculatorAppState();
// }
//
// class _ExpressionCalculatorAppState extends State<ExpressionCalculatorApp> {
//   int selectedN = 1;
//   int selectedK = 1;
//   int a = 0;
//   int b = 0;
//   double result = 0.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Expression Calculator  IsMoiL'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             DropdownButton(
//               value: selectedN,
//               onChanged: (newValue) {
//                 setState(() {
//                   selectedN = newValue!;
//                 });
//               },
//               items: <int>[1, 2, 3, 4, 5].map((int value) {
//                 return DropdownMenuItem<int>(
//                   value: value,
//                   child: Text('N: $value'),
//                 );
//               }).toList(),
//             ),
//             DropdownButton(
//               value: selectedK,
//               onChanged: (newValue) {
//                 setState(() {
//                   selectedK = newValue!;
//                 });
//               },
//               items: <int>[1, 2, 3, 4, 5].map((int value) {
//                 return DropdownMenuItem<int>(
//                   value: value,
//                   child: Text('K: $value'),
//                 );
//               }).toList(),
//             ),
//             TextField(
//               keyboardType: TextInputType.number,
//               onChanged: (value) {
//                 setState(() {
//                   a = int.parse(value);
//                 });
//               },
//               decoration: InputDecoration(labelText: 'a'),
//             ),
//             TextField(
//               keyboardType: TextInputType.number,
//               onChanged: (value) {
//                 setState(() {
//                   b = int.parse(value);
//                 });
//               },
//               decoration: InputDecoration(labelText: 'b'),
//             ),
//             Text(
//               'Result: $result',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   result = calculateExpressionFormula(selectedN, selectedK, a, b);
//                 });
//               },
//               child: Text('Calculate'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   double calculateExpressionFormula(int N, int K, int a, int b) {
//     // Implement the formula calculation here
//     double result = 0.0;
//     // ...
//
//     return result;
//   }
//}

///??? lb_09////
///
// ///
// import 'package:flutter/material.dart';
// import 'database_helper.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Book Database')),
//         body: MyDatabase(),
//       ),
//     );
//   }
// }
//
// class MyDatabase extends StatefulWidget {
//   @override
//   _MyDatabaseState createState() => _MyDatabaseState();
// }
//
// class _MyDatabaseState extends State<MyDatabase> {
//   DatabaseHelper helper = DatabaseHelper.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             onPressed: () async {
//               Map<String, dynamic> book = {
//                 'title': 'Book Title',
//                 'edition': 1,
//                 'author': 'Book Author',
//                 'resource_type': 'Book'
//               };
//               await helper.insertBook(book);
//             },
//             child: Text('Add Book'),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               Map<String, dynamic> book = {
//                 'title': 'Book Title',
//                 'edition': 1,
//                 'author': 'Book Author',
//                 'resource_type': 'Book'
//               };
//               await helper.insertBook(book);
//             },
//             child: Text('Add Jurnal'),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SecondRoute()),)
//               Map<String, dynamic> book = {
//                 'title': 'Book Title',
//                 'edition': 1,
//                 'author': 'Book Author',
//                 'resource_type': 'Book'
//               };
//               await helper.insertBook(book);
//             },
//             child: Text('Add Elresurs'),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               List<Map<String, dynamic>> books = await helper.getBooks();
//               books.forEach((book) {
//                 print('Book: $book');
//               });
//             },
//             child: Text('Get Books'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SecondRoute {
//   const SecondRoute();
// }

/// LAbaratoriya 04///
///
// ///
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ResourceListScreen(),
//     );
//   }
// }
//
// class ResourceListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ресурсы LB_04 IsMoiL'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => BookActivity(),
//                 ),
//               );
//             },
//             child: Text('Книги'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => jurnalActivity(),
//                 ),
//               );
//             },
//             child: Text('Журналы'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => elresursActivity(),
//                 ),
//               );
//             },
//             child: Text('Электронные ресурсы'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
// // Модель данных для книги
// class Book {
//   final String title;
//   final String author;
//
//   Book({required this.title, required this.author});
// }
//
// // Активность для работы с книгами
// class BookActivity extends StatelessWidget {
//   final List<Book> books = [
//     Book(title: 'Книга 1', author: 'Автор 1'),
//     Book(title: 'Книга 2', author: 'Автор 2'),
//     // Добавьте свои книги
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Книги'),
//       ),
//       body: ListView.builder(
//         itemCount: books.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(books[index].title),
//             subtitle: Text(books[index].author),
//           );
//         },
//       ),
//     );
//   }
// }
//
//
// // Модель данных для книги
// class jurnal {
//   final String title;
//   final String author;
//
//   jurnal({required this.title, required this.author});
// }
//
// // Активность для работы с jurnal
// class jurnalActivity extends StatelessWidget {
//   final List<Book> books = [
//     Book(title: 'Журналы 1', author: 'Автор 1'),
//     Book(title: 'Журналы 2', author: 'Автор 2'),
//     // Добавьте свои книги
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Журналы'),
//       ),
//       body: ListView.builder(
//         itemCount: books.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(books[index].title),
//             subtitle: Text(books[index].author),
//           );
//         },
//       ),
//     );
//   }
// }
//
//
// // Модель данных для книги
// class elresurs {
//   final String title;
//   final String author;
//
//   elresurs({required this.title, required this.author});
// }
//
// // Активность для работы с книгами
// class elresursActivity extends StatelessWidget {
//   final List<Book> books = [
//     Book(title: 'Электронные ресурсы 1', author: 'Автор 1'),
//     Book(title: 'Электронные ресурсы 2', author: 'Автор 2'),
//     // Добавьте свои книги
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Электронные ресурсы'),
//       ),
//       body: ListView.builder(
//         itemCount: books.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(books[index].title),
//             subtitle: Text(books[index].author),
//           );
//         },
//       ),
//     );
//   }
// }


///   Labaratoriya - 06 ///
///
///

import 'package:flutter/material.dart';

// Класс, представляющий печатное издание
class PrintPublication {
  final String title;
  final String author;
  final int pages;

  PrintPublication({
    required this.title,
    required this.author,
    required this.pages,
  });
}

// Виджет для отображения информации о печатном издании
class PrintPublicationWidget extends StatelessWidget {
  final PrintPublication publication;

  PrintPublicationWidget({required this.publication});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(publication.title),
        subtitle: Text('${publication.author} - ${publication.pages} pages'),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Пример данных о печатных изданиях
    List<PrintPublication> publications = [
      PrintPublication(title: 'Book 1', author: 'Author 1', pages: 200),
      PrintPublication(title: 'Book 2', author: 'Author 2', pages: 150),
      PrintPublication(title: 'Magazine 1', author: 'Editor 1', pages: 50),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Печатные публикации'),
        ),
        body: ListView.builder(
          itemCount: publications.length,
          itemBuilder: (context, index) {
            return PrintPublicationWidget(publication: publications[index]);
          },
        ),
      ),
    );
  }
}
