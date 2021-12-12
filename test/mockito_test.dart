// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:potato_foods/controllers/auth_controller.dart';

// class MockFireAuth extends Mock implements AuthController {}

// void main() {
//   final MockFireAuth mockAuth = MockFireAuth();

//   setUp(() {});

//   tearDown(() => null);

//   test('emit occurs',
//       () async => expectLater(mockAuth.displayName, emitsInOrder(_mockUser)));

//   test(
//     'create account',
//     () async => when(
//       mockAuth.siGnUp('name', 'email', 'passW'),
//     ).thenAnswer((realInvocation) => null);

//     expect(await mockAuth.siGnUp(), matcher),
//   );
// }

// // class MockCollectionReference extends Mock implements CollectionReference {}

// // class MockDocumentReference extends Mock implements DocumentReference {}

// // class MockDocumentSnapshot extends Mock implements DocumentSnapshot {}

// // void main() {
// //   MockFirestore instance;
// //   MockDocumentSnapshot mockDocumentSnapshot;
// //   MockCollectionReference mockCollectionReference;
// //   MockDocumentReference mockDocumentReference;

// //   setUp(() {
// //     instance = MockFirestore();
// //     mockCollectionReference = MockCollectionReference();
// //     mockDocumentReference = MockDocumentReference();
// //     mockDocumentSnapshot = MockDocumentSnapshot();
// //   });

// //   test('should return data when the call to remote source is successful.',
// //       () async {
// //     // arrange
// //     when(instance.collection(any)).thenReturn(mockCollectionReference);
// //     when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
// //     when(mockDocumentReference.get())
// //         .thenAnswer((_) async => mockDocumentSnapshot);
// //     when(mockDocumentSnapshot.data()).thenReturn(responseMap);

// //     //act
// //     final result = await remoteDataSource.getData('user_id');

// //     //assert
// //     expect(result,
// //         userModel); //userModel is a object that is defined. Replace with you own model class object.
// //   });

// //   // Future<RecipeModel> getData(String userID) async {
// //   //   Map<String, dynamic> data =
// //   //       (await firestore.collection('users').doc(userID).get()).data();
// //   //   return RecipeModel.fromSnapshot(data);
// //   // }
// // }


