import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("checkout"),
          backgroundColor: Colors.green,
        ),
        body: const ModalBottomSheetDemo(),
      ),
    );
  }
}

class ModalBottomSheetDemo extends StatelessWidget {
  const ModalBottomSheetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/2,
                   width: MediaQuery.of(context).size.width/2,
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                )),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Checkout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            Icon(Icons.close),
                          ],
                        ),
                        const Divider(height: 1,thickness: 1,),
                        Row(
                          children: const [
                            Text("Delivery",style: TextStyle(color: Colors.grey,fontSize: 20,),),
                            Spacer(),
                            Text("Select Method",style: TextStyle(fontWeight: FontWeight.bold,),),
                            SizedBox(width: 15,),
                            Icon(Icons.arrow_back_ios),
                          ],
                        ),const Divider(height: 1,thickness: 1,),
                        Row(
                          children: [
                            const Text("Payment",style: TextStyle(color: Colors.grey,fontSize: 20,),),
                            const Spacer(),
                            Image.asset("assets/images/OIP.jpg",height: 25,width: 25,),
                            const SizedBox(width: 15,),
                            const Icon(Icons.arrow_back_ios),
                          ],
                        ),const Divider(height: 1,thickness: 1,),
                        Row(
                          children: const [
                            Text("Promo Code",style: TextStyle(color: Colors.grey,fontSize: 20,),),
                            Spacer(),
                            Text("Pick discount",style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 15,),
                            Icon(Icons.arrow_back_ios),
                          ],
                        ),const Divider(height: 1,thickness: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Total Cost",style: TextStyle(color: Colors.grey,fontSize: 20,),),
                            Spacer(),
                            Text("\$13.97",style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 15,),
                            Icon(Icons.arrow_back_ios),
                            ],),  const Divider(),
                            RichText(text: const TextSpan(children: [
                              TextSpan(text: "By placing an order you agree to our Terms and Conditions",),
                              TextSpan(text: " Terms ",style: TextStyle(fontWeight: FontWeight.bold,)),
                              TextSpan(text: "and ",),
                              TextSpan(text: " Conditions",style: TextStyle(fontWeight: FontWeight.bold,),),
                            ])),
                          ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(
                                  26,193,26, 1),
                              side: const BorderSide( color: Color(0xff1ac11a), width: 2),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                    16,
                                  ))
                          ),
                          child: const Padding(
                            padding:
                            EdgeInsets.symmetric(vertical: 10.0,horizontal: 150.0),
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                    ],),
                    ),
                  ),
              );
            },
          );
        },
      ),
    );
  }
}