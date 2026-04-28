import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List data = [];
  bool loading = false;

  Future<List> getData() async {
    var response = await get(
      Uri.parse("https://thronesapi.com/api/v2/Characters"),
    );
    List responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Http Get'), actions: []),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("ERORR");
            }
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) {
                  return ListTile(title: Text("${snapshot.data![i]['fullName']}"));
                },
              );
            }
          }
          return Text("");
        },
      ),
    );
  }
}
