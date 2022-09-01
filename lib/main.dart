import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List mypictures = [
    "https://th.bing.com/th/id/OIP.Lk9S6dmRyHGdeh6lP0h2qQHaI6?w=185&h=223&c=7&r=0&o=5&pid=1.7",
    "https://th.bing.com/th/id/OIP.0YelKYuW-pJj57uiS1EgngHaJT?w=185&h=232&c=7&r=0&o=5&pid=1.7",
    "https://th.bing.com/th/id/OIP.5D_5eKaHArNWY5l-zO6NngHaHa?w=185&h=185&c=7&r=0&o=5&pid=1.7",
    "https://th.bing.com/th/id/OIP.Mw4BDnhsEXG75xGuSep7igHaLU?w=185&h=283&c=7&r=0&o=5&pid=1.7"
  ];
  List brandnames = [
    "fleece jackets",
    "parka jackets",
    "tarpaulin jackets",
    "Quilted jackets"
  ];
  List myicone = [
    (Icons.favorite),
    (Icons.favorite),
    (Icons.favorite),
    (Icons.favorite)
  ];
  List oldprice = ["500", "600", "300", "750"];
  List newprice = ["250", "300", "150", "400"];

  List informations = [
    " best jacket",
    " best jacket",
    " best jacket",
    " best jacket"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.white],
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(9),
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: ((context, i) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            brandnames[i] = brandnames[i] + " added to cart";
                          });
                        },
                        icon: Icon(Icons.add),
                        label: Text("add to cart"),
                      ),
                    ),
                    ListTile(
                      title: Text("${brandnames[i]}"),
                      leading: Image(
                        image: NetworkImage("${mypictures[i]}"),
                      ),
                      trailing: ElevatedButton.icon(
                        label: Text("add to"),
                        icon: Icon(Icons.favorite),
                        onPressed: () {
                          setState(() {
                            brandnames[i] = brandnames[i] + " added to cart";
                          });
                        },
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            "${oldprice[i]}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "${newprice[i]}",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
