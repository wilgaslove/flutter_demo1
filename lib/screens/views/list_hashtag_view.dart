import 'package:flutter/material.dart';

class ListHashtagView extends StatelessWidget {
  const ListHashtagView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
        return  Dismissible(key: Key(index.toString()), 
        child: const Card(
          child: ListTile(
            title: Text('#hashtag')
          ),
        ),
        );
      },
    );
  }
}