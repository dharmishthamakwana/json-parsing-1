import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled16/screen/json/provider/post_provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  PostProvider? postProviderTrue;
  PostProvider? postProviderFalse;
  @override
  void initState() {
    super.initState();
    Provider.of<PostProvider>(context,listen: false).jsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    postProviderFalse = Provider.of<PostProvider>(context, listen: false);
    postProviderTrue = Provider.of<PostProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Post"),
        ),
        body: Column(
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     postProviderFalse!.jsonParsing();
            //   },
            //   child: Text("Save data"),
            // ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${index}"),
                    title: Text(
                        "${postProviderTrue!.postList[index]['userId']}"),
                    subtitle: Text(
                        "${postProviderTrue!.postList[index]['title']}"),
                    // trailing: Text(
                    //     "${postProviderTrue!.postList[index]['body']}"),


                  );
                },
                itemCount: postProviderTrue!.postList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
