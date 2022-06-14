import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class usersData extends StatefulWidget {
  usersData({Key? key}) : super(key: key);

  @override
  State<usersData> createState() => _usersDataState();
}

class _usersDataState extends State<usersData> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //collection düzeyinde veri
    CollectionReference musicInfo = _firestore.collection('Users');
    //document düzeyinde veri
  
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Color.fromARGB(255, 1, 0, 26),
      child: StreamBuilder<QuerySnapshot>(
          stream: musicInfo.snapshots(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            //just add this line
            if (asyncSnapshot.data == null)
              return Center(child: CircularProgressIndicator());

            List<DocumentSnapshot> docSnap = asyncSnapshot.data.docs;
            return ListView.builder(
              itemCount: docSnap.length,
              itemBuilder: (context, index) {
                return Flexible(
                  child: Container(
                    width: 200,
                    child: Row(
                      children: [
                        Image.network(
                          '${docSnap[index]["img"]}',
                          fit: BoxFit.fill,
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(width: 20),
                        MaterialButton(
                          onPressed: (() {}),
                          child: Text(
                              '${docSnap[index]["Name"]}' +
                                  "\n \n" +
                                  '${docSnap[index]["status"]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}

/* 

   MaterialButton(
                    onPressed: () async {
                      var responsive = await anaref.get();
                      var music = responsive;
                      print(music['ad'].toString());
                    },
                    child: Text("bass"),
                  )
                    '${docSnap[index]["img"]}',
                  */
