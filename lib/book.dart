import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookPage extends StatelessWidget {
  final store = FirebaseFirestore.instance;

   BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: store.collection('books').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Books"),
            actions: <Widget>[buildAddButton(context)],
          ),
          body: snapshot.hasData
              ? buildBookList(snapshot.data!)
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        );
      },
    );
  }

  IconButton buildAddButton(context) {
    return IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          print("add icon press");
          Navigator.pushNamed(context, '/addbook');
        });
  }

  ListView buildBookList(QuerySnapshot data) {
    return ListView.builder(
      itemCount: data.size,
      itemBuilder: (BuildContext context, int index) {
        var model = data.docs.elementAt(index);
        return ListTile(
          title: Text(model['title']),
          subtitle: Text(model['detail']),
          trailing: Text("${model['price']}"),
          onTap: () {
            print(model['title']);
          },
        );
      },
    );
  }
}


