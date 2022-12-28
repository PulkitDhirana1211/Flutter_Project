import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Model> items = [
    Model(
        id: "01", name: "Mr. Rahul Kumar", from: "Parent", priority: "medium"),
    Model(
        id: "02",
        name: "Mrs. Vinutha K",
        from: "Teaching Staff",
        priority: "high"),
    Model(
        id: "03",
        name: "Mr. Manish Kumar",
        from: "Non Teaching Staff",
        priority: "low"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        title: const Text(
          "Concerns",
          style: TextStyle(
              color: Color.fromARGB(255, 28, 63, 91),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      trailing: Image.asset("assets/arrow.png",
                          color: const Color.fromARGB(255, 143, 142, 142)),
                      tileColor: const Color.fromARGB(255, 187, 193, 197),
                      title: Text(items[index].name),
                      subtitle: Text(items[index].from),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
