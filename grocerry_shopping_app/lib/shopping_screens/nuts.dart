import 'package:flutter/material.dart';
class Nuts extends StatefulWidget {
  @override
  _NutsState createState() => _NutsState();
}

class _NutsState extends State<Nuts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 17),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: BuildNutsCard("Badam", "₹100" , "assets/images/nuts/badam.png"),
                          ),
                          SizedBox(height: 10,),
                          GestureDetector(
                            child: BuildNutsCard("Cashew", "₹100" , "assets/images/nuts/cashew.png"),
                          ),
                          SizedBox(height: 10,),

                          new BuildNutsCard("Choco", "₹100" , "assets/images/nuts/choco.png"),


                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          new OfferWidget(),
                          SizedBox(height: 10,),
                          new BuildNutsCard("Peanut", "₹100" , "assets/images/nuts/peanut.png"),
                          SizedBox(height: 10,),

                          new BuildNutsCard("Walnut", "₹100" , "assets/images/vegetables/walnut.png"),

                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}

class OfferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffECEDF1),

      ),
      width: 195,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0, right: 8.0, top: 18, bottom: 18),
        child: Column(
          children: [
            Text("A Spring Surprise", style: TextStyle(
              fontFamily: "OpenSans",

            ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("40% OFF", style: TextStyle(
                  fontFamily: "OpenSans-Bold",
                  fontSize: 25
              ),),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.green)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("FOODLY SURPRISE", style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Use the code above for Spring collection purchases",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSans-Bold',
              ),),
          ],
        ),
      ),
    );
  }
}

class BuildNutsCard extends StatelessWidget {
  String name, price, asset;
  BuildNutsCard(String name, String price, String asset){
    this.name = name;
    this.price = price;
    this.asset = asset;

  }

  @override
  Widget build(BuildContext context) {
    {
      return Container(
          width: 195,
          height: 400,
          decoration: BoxDecoration(
              color: Color(0xffF7DFB9),
              borderRadius: BorderRadius.circular(20.00)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XffFAF0DA),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                          Icons.add
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Image.asset(asset,
                    fit: BoxFit.contain,
                    height: 200,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name, style: TextStyle(
                    fontFamily: 'OpenSans-Bold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(price, style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("Per Kilo", style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                        Spacer(),
                        Text("View Prices",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                )

              ],
            ),
          )
      );
    }
  }
}
