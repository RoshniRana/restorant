import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: restorant(),
  ));
}

class restorant extends StatefulWidget {
  const restorant({Key? key}) : super(key: key);

  @override
  State<restorant> createState() => _restorantState();
}

class _restorantState extends State<restorant> {
  List<bool> menu = [];
  String gender = "";
  List price = [];
  List rmenu = [];
  int sum = 0;
  int total = 0;
  String error ="";
  TextEditingController item1 = TextEditingController();
  TextEditingController item2 = TextEditingController();
  TextEditingController item3 = TextEditingController();
  TextEditingController item4 = TextEditingController();
  TextEditingController item5 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    menu = List.filled(5, false);
    item1.text="1";
    item2.text="1";
    item3.text="1";
    item4.text="1";
    item5.text="2";

    // sum=0;
  }

  @override
  Widget build(BuildContext context) {
    if(item1.text.isEmpty && menu[0]){
      // item1.text = "not empty";
      error = "not empty";
    }
    else{error="";}
    return Scaffold(
      appBar: AppBar(
        title: Text("My Restorant"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(child: Text("Gender")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text("male"),
                    Radio(
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = "male";
                          value = gender;
                          total = ((sum * 5) / 100).toInt();
                          total = sum - total;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("female"),
                    Radio(
                      value: "female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = "female";
                          value = gender;
                          total = ((sum * 10) / 100).toInt();
                          total = sum - total;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("other"),
                    Radio(
                      value: "other",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = "$value";
                          total = ((sum * 20) / 100).toInt();
                          total = sum - total;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
            Container(
              child: Text("menu"),
            ),
            Row(
              children: [
                Checkbox(
                  value: menu[0],
                  onChanged: (value) {
                    setState(() {
                      menu[0] = value!;
                      print("menu = ${menu[0]}");
                      if (value == true) {
                        price.add(7);
                        rmenu.add("Roti");
                        sum += 7*int.parse(item1.text);

                      } else {
                        price.remove(7);
                        rmenu.remove("Roti");
                        sum -= 7;
                      }
                    });
                  },
                ),
                Text("Roti \t \t \t \t \t \t \t"),
                Text("7"),
                Flexible(
                  child: Container(
                    padding: EdgeInsetsDirectional.only(
                      end: 100,
                      start: 80,
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: item1,
                      decoration: InputDecoration(errorText: error,
                          border: UnderlineInputBorder(),
                        contentPadding: EdgeInsets.only()
                          ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: menu[1],
                  onChanged: (value) {
                    setState(() {
                      print("==$value");
                      menu[1] = value!;
                      if (value == true) {
                        price.add(170);
                        rmenu.add("paneer sabji");
                        sum += 170;
                      } else {
                        price.remove(170);
                        rmenu.remove("paneer sabji");
                        sum -= 170;
                      }
                    });
                  },
                ),
                Text("paneer sabji \t"),
                Text("170"),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsetsDirectional.only(
                      end: 100,
                      start: 50,
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: item2,
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                          contentPadding: EdgeInsets.zero),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: menu[2],
                  onChanged: (value) {
                    setState(() {
                      print("==$value");
                      menu[2] = value!;
                      if (value == true) {
                        price.add(120);
                        rmenu.add("veg. sabji");
                        sum += 120;
                      } else {
                        price.remove(120);
                        rmenu.remove("veg. sabji");
                        sum -= 120;
                      }
                    });
                  },
                ),
                Text("veg. sabji \t  \t"),
                Text("120"),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsetsDirectional.only(
                      end: 100,
                      start: 50,
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: item3,
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                          contentPadding: EdgeInsets.zero),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: menu[3],
                  onChanged: (value) {
                    setState(() {
                      print("==$value");
                      menu[3] = value!;
                      if (value == true) {
                        price.add(70);
                        rmenu.add("Jira Rice");
                        sum += 70;
                      } else {
                        price.remove(70);
                        rmenu.remove("Jira Rice");
                        sum -= 70;
                      }
                    });
                  },
                ),
                Text("Jira Rice \t \t \t"),
                Text("70"),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsetsDirectional.only(
                      end: 100,
                      start: 50,
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: item4,
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                          contentPadding: EdgeInsets.zero),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: menu[4],
                  onChanged: (value) {
                    setState(() {
                      print("==$value");
                      menu[4] = value!;
                      if (value == true) {
                        price.add(115);
                        rmenu.add("dalfry");
                        // price+=price[0];
                      } else {
                        price.remove(115);
                        rmenu.remove("dalfry");
                      }
                    });
                  },
                ),
                Text("dalfry \t\t \t \t \t"),
                Text("115"),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsetsDirectional.only(
                      end: 100,
                      start: 50,
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: item5,
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                          contentPadding: EdgeInsets.zero),
                    ),
                  ),
                )
              ],
            ),
            for (int i = 0; i < price.length; i++)
              Text("${rmenu[i]}           ${price[i]}"),
            Text("Sum=       $sum"),
            Text("Total=       $total"),
          ],
        ),
      ),
    );
  }

// void display() {
//   dynamic sum = 0;
//   dynamic total = 0;
//   for (int i = 0; i < price.length; i++) {
//     // Text("${rmenu[i]} \t\t\t ${price[i]}");
//     print("${rmenu[i]} \t ${price[i]}");
//     sum = sum + price[i];
//   }
//   // Text("$sum");
//   print("sum = $sum");
//   if (gender == "male") {
//     total = (sum * 5) / 100;
//     total = sum - total;
//   } else if (gender == "female") {
//     total = (sum * 10) / 100;
//     total = sum - total;
//   } else if (gender == "other") {
//     total = (sum * 20) / 100;
//     total = sum - total;
//   }
//   Text("Total = $total");
//   print("Total = $total");
// }
}
