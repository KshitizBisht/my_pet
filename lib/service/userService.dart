import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:my_pet/models/Pet.dart';
import 'package:my_pet/models/Request.dart';
import 'package:my_pet/utils/helperFunction.dart';

import '../models/User.dart';

class UserService{

  HelperFunction help = HelperFunction();
  late User user;

  Future<void> saveUser(User user) async {
    try {
      await Amplify.DataStore.save(user);

    } catch (e) {
      print('An error occurred while saving User: $e');
    }
  }

Future<User> getUser() async {
  var userEmailId = await help.getLoggedUserEmailId();
  final users = await Amplify.DataStore.query(
    User.classType,
    where: User.EMAIL.eq(userEmailId),
  );

  if (users.isEmpty) {
    return User(id: '', name: '', location: '', email: userEmailId, isCaretaker: false);
  } else {
    user = users.first;
    return users.first;
  }
}

Future<List<User>> getAllCareTakers() async {
  try {
    List<User> users = await Amplify.DataStore.query(User.classType,
    where: User.ISCARETAKER.eq(true));
    return users;
  } catch (e) {
    print("Error querying for all users: $e");
    return []; // return an empty list in case of an error
  }
}

Future<List<Request>> getAllRequests() async {
  try{
    List<Request> requests = await Amplify.DataStore.query(Request.classType);
    return requests;
  } catch (e) {
    print("Error querying Amplify with error:  + $e");
    return [];
  }

}


Future<void> savePet(Pet pet) async {
  try{
    await Amplify.DataStore.save(pet);
  } catch(e) {
    print("Error saving $e");
  }
}

Future<List<Pet>> getOwnerPets(User user) async {
  try{
    List<Pet> pets = await Amplify.DataStore.query(Pet.classType,
    where: Pet.USER.eq(user.id));
    return pets;
  } catch (e) {
    return [];
  }
}

}
