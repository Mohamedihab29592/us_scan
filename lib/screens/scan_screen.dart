import 'package:flutter/material.dart';
import 'package:us_scanner/screens/doc_scanned.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}
bool isOpen = false;

class _ScanScreenState extends State<ScanScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 75,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  const Text(
                    'Universal Scanner',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,color: Colors.orange
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              height: 180,
              child: Image.asset("assets/images/no_scan_image.jpeg"),
            ),
            const Text(
              "You don't have any documents",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Text(
              "Sync doc across smart phone tablets, and\n computers",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 150,
              child: Image.asset("assets/images/arrow.png"),
            ),
            const Spacer(),

            if(isOpen)

            Container(
              width: 380,
              height: 130,
              color: Colors.black,
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  InkWell(
                    onTap: (){

                    },
                    child: const Row(children: [
                      Icon(Icons.camera,color: Color(0xffff6c22),),
                      SizedBox(width: 5,),
                      Text('Camera',)

                    ],),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const DocScanned()));
                    },
                    child: const Row(children: [
                      Icon(Icons.add_card_sharp,color: Color(0xffff6c22),),
                      SizedBox(width: 5,),
                      Text('File',)

                    ],),
                  ),




                ],),
              ),
            ),

            Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      // Add your logic for the first icon here
                    },
                    child: const Icon(
                      Icons.adf_scanner,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {

                     setState(() {
                       isOpen = !isOpen;
                     });


                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Scan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Add your logic for the third icon here
                    },
                    child: const Icon(
                      Icons.settings,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
