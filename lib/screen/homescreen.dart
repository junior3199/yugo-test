import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController = new TextEditingController();
  List<String> images = [
    "jet1",
    "jet2",
    "jet3",
    "jet4",
    "jet5",
    "jet6",
    "jet7"
  ];
  List<String> names = [
    "Special Jet 1",
    "Special Jet 2",
    "Special Jet 3",
    "Special Jet 4",
    "Special Jet 5",
    "Special Jet 6",
    "Special Jet 7"
  ];
  int _value = 1;
  int _value1 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Hi, William",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Welcome to your Member's Club",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  // Container(
                  //   decoration: BoxDecoration(color: Colors.white),
                  // child:
                  TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFFA9A9A9),
                        // size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
              centerTitle: true,
              floating: false,
              toolbarHeight: 207.0,
              // expandedHeight: 200.0,
              flexibleSpace: Image.asset(
                "assets/images/Ombre-Sky-Red.jpg",
                fit: BoxFit.fill,
              ),
            ),
           
          ];
        },
        body: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "YOUR COMMUNITIES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                  color: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    isExpanded: true,
                    isDense: true,
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("Aviator"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Second Item"),
                        value: 2,
                      ),
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    icon: ImageIcon(
                      AssetImage(
                        "assets/images/output-onlinepngtools.png",
                      ),
                    ),
                    focusColor: Color(
                      0xFFCEAC81,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                  color: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    isExpanded: true,
                    isDense: true,
                    value: _value1,
                    items: [
                      DropdownMenuItem(
                        child: Text("Discovery"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Second Item"),
                        value: 2,
                      ),
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value1 = value;
                      });
                    },
                    icon: ImageIcon(
                      AssetImage(
                        "assets/images/output-onlinepngtools.png",
                      ),
                    ),
                    focusColor: Color(
                      0xFFCEAC81,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "PRIVATE JET COMMUNITIES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                   
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 6,
                              child: Image.asset(
                                "assets/images/${images[index]}.jpg",
                                fit: BoxFit.fill,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Text(
                                  "${names[index]}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, i) {
                      return SizedBox(width: 10);
                    },
                    itemCount: 7,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
