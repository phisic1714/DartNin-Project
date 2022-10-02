import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatefulWidget {
  final String _idi; //if you have multiple values add here
  BookDetail(this._idi, {Key? key})
      : super(key: key); //add also..example this.abc,this...

  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    String _id = widget._idi;
    return StreamBuilder(
        stream: getBook(_id),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Detail Books"),
            ),
            body: snapshot.hasData
                ? buildBookList(snapshot.data!)
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          );
        });
  }

  ListView buildBookList(QuerySnapshot data) {
    return ListView.builder(
      itemCount: data.docs.length,
      itemBuilder: (BuildContext context, int index) {
        var model = data.docs.elementAt(index);
        String a = model['detail'] + '  ' + model['author'] + '  ' + model['price'].toString() ;
        return ListTile(
          title: Text(model['title']),
          //    subtitle: Text(model['detail'] + Text("${model['price']}")),
          subtitle: Text(a),
          trailing: ElevatedButton(
              child: const Text('Del'),
              onPressed: () {
                print(model.id);
        deleteValue(model.id);
                Navigator.pop(context);
              }),
        );
      },
    );
  }

  Future<void> deleteValue(String titleName) async {
    await _firestore
        .collection('books')
        .doc(titleName)
        .delete()
        .catchError((e) {
      print(e);
    });
  }

  Stream<QuerySnapshot> getBook(String titleName) {
    // Firestore _firestore = Firestore.instance;
    return _firestore
        .collection('books')
        .where('title', isEqualTo: titleName)
        .snapshots();
  }
}

