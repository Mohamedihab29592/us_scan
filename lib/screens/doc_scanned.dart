import 'package:flutter/material.dart';

class DocScanned extends StatelessWidget {
  const DocScanned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         IconButton(onPressed: (){Navigator.pop(context);}, icon:  const Icon(
                           Icons.arrow_back_outlined,
                           color: Colors.orange,
                         ),),

                          const Text(
                            "Scan 01:11:2020 03:40:00",
                            style: TextStyle(color: Colors.orange),
                          ),

                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit_calendar,
                                color: Colors.orange,
                              )),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.print,
                              color: Colors.orange,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/pdf_doc.jpeg'),

                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                        20), // Set circular border radius
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          // Add your logic for the first icon here
                          _showBottomSheet(context);
                        },
                        child: const Icon(
                          Icons.add_box_outlined,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Add your logic for the first icon here
                        },
                        child: const Icon(
                          Icons.share,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Add your logic for the third icon here
                        },
                        child: const Icon(
                          Icons.edit,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      // Add one more icon here
                      const Icon(
                        Icons.delete,
                        color: Colors.deepOrangeAccent,
                      ),
                    ],
                  ),
                ),

              ),
            ],
          )),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(

          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/images/pdf_doc.jpeg'),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Scan 01/11/2020 03/21/37',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          'PDF Document 2.6 MB',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.close, color: Colors.orange,)),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(color: Colors.grey.shade400),
                const SizedBox(height: 16),
                _buildOptionContainer('Copy', Icons.copy, () {
                  // Handle Copy
                }),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          15), // Set circular border radius
                    ),
                    child: Column(
                      children: [


                        _buildOptionContainer('Markup', Icons.markunread_mailbox_outlined, () {
                          // Handle Markup
                        }),
                        Divider(color: Colors.grey.shade400,),
                        _buildOptionContainer('Print', Icons.print, () {
                          // Handle Print
                        }),
                        Divider(color: Colors.grey.shade400,),
                        _buildOptionContainer('Add Tags', Icons.paste, () {
                          // Handle Add Tags
                        }),
                        Divider(color: Colors.grey.shade400,),
                        _buildOptionContainer('Save to files', Icons.save, () {
                          // Handle Save to files
                        }),
                      ],
                    ),
                  ),
                ),
                TextButton(onPressed: (){}, child: const Text("Edit Actions... ",style: TextStyle(color: Colors.orange,),))
               
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildOptionContainer(String title, IconData icon, Function() onTap) {
    return ListTile(

      title: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(title),
              const Spacer(),
              IconButton(
                  onPressed: onTap, icon: Icon(icon, color: Colors.orange)),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }

}