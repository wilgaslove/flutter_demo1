import 'package:flutter/material.dart';

class AddHashtagComponent extends StatelessWidget {
  const AddHashtagComponent({super.key});
  // Menu pour la création d'un nouveau hashtag.
  void _modal(BuildContext context) => showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Créateur d'hashtag",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    // composant d'entrer hashtag
                    decoration: InputDecoration(
                      hintText: "Entrez votre hashtag",
                    ),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, //pour l'alignement
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),// pour fermer la création d'hasstag
                      child: Text("Cancel".toUpperCase()),
                    ),
                    TextButton(
                      onPressed: ()  => Navigator.pop(context),
                      child: Text("add".toUpperCase()),
                    ),
                  ],
                ),
              ),

              ],
            ),
          ));




  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          onPressed: () => _modal(context),
          child: const Icon(
            Icons.add,
    ),
    );
  }

}