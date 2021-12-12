import 'package:cloud_firestore/cloud_firestore.dart';

final firestoreInstance = FirebaseFirestore.instance;

Future<void>? addDB() {
  return firestoreInstance
      .collection('potatoh')
      .add({
        "name": "Potato Curry",
        "describe": "Potato in tangy tomato and onion curry.",
        "preparation time": 30,
        "cooking time": 30,
        "img":
            "https://firebasestorage.googleapis.com/v0/b/friendlyeats-b6f5e.appspot.com/o/Potato%20foods%2FPotato%20Curry.png?alt=media&token=fe8567f9-d911-44ae-822e-9d7c0ff6d9a2",
        "ingredients": [
          "2 partially boiled potatoes, peeled and diced into 1 inch pieces",
          "1 small red onion, pureed",
          "1 tablespoon ginger-garlic paste",
          "1 cup fresh tomato puree",
          "1 teaspoon cumin seeds",
        ],
        "method": [
          "Heat oil in a deep bottom pan over medium heat. Add in cumin seeds and cook until golden. Then, add in onion and ginger-garlic paste. Sauté until golden-brown.",
          "Now, pour in tomato puree and keep cooking until all the ingredients turn into a thick gravy. Then, add in the remaining ingredients except coriander leaves.",
          "Pour in a quart of water and mix well. Cover the pan with a lid. Then, let it simmer over low heat for 15-20, stirring occasionally.",
          "Once done, remove the pan from heat. Transfer the curry to a serving bowl. Garnish with cori-ander leaves.",
          "Serve hot with rice or naan.",
        ],
      })
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
