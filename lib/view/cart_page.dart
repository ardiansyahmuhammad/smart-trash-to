// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:trashbin/models/news_api_model.dart';
import 'package:trashbin/models/repo_api.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<NewsApi>? listNewsApi; // Use the nullable List<NewsApi>?

  RepoNews repoNews = RepoNews();

  getData() async {
    listNewsApi = await repoNews.getData();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API TEST'),
      ),
      body: listNewsApi == null
          ? CircularProgressIndicator() // Show a loading indicator while data is being fetched
          : ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  child: Text(listNewsApi![index].title!),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: listNewsApi!.length,
            ),
    );
  }
}
