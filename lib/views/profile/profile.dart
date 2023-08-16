import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/service/storageService.dart';
import 'package:my_pet/service/userService.dart';
import '../../models/Pet.dart';
import '../../models/User.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  const ProfilePage({super.key, required this.user});

  @override
  State<StatefulWidget> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  UserService userService = UserService();
  final TextEditingController _petName = TextEditingController();
  final TextEditingController _petType = TextEditingController();
  final TextEditingController _petAge = TextEditingController();
  final TextEditingController _petBreed = TextEditingController();
  final TextEditingController _petDiet = TextEditingController();
  final TextEditingController _petNature = TextEditingController();

  @override
  void dispose() {
    _petAge.dispose();
    _petBreed.dispose();
    _petName.dispose();
    _petType.dispose();
    _petDiet.dispose();
    _petNature.dispose();
    super.dispose();
  }

  List<Pet> ownerPets = [];
  StorageService storageService = StorageService();

  @override
  void initState() {
    super.initState();
    fetchOwnerPets();
  }

  void uploadImageTest() async {
    await storageService.uploadImage(widget.user);
  }

  Future<void> fetchOwnerPets() async {
    try {
      List<Pet> pets = await userService.getOwnerPets(widget.user);
      setState(() {
        ownerPets = pets;
        print(ownerPets.toString());
      });
    } catch (e) {
      // Handle exception or log the error
    }
  }

  Future<void> savePet() async {
    Pet pet = Pet(
        name: _petName.text,
        breed: _petBreed.text,
        type: _petType.text,
        nature: _petNature.text,
        diet: _petDiet.text,
        age: int.parse(_petAge.text),
        user: widget.user,
        id: UUID.getUUID());

    try {
      await userService.savePet(pet);
      await fetchOwnerPets(); // Fetch the updated list of pets
      Navigator.pop(context); // Close the modal bottom sheet
    } catch (e) {
      print("Error saving pet: $e");
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              child: Stack(
                children: [
                  ClipOval(
                    child: widget.user.userImageurl != null
                      ? CachedNetworkImage(
                          cacheKey: widget.user.userImagekey,
                          imageUrl: widget.user.userImageurl!,
                          width: 200,
                          height: 200,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fill,
                        )
                      : Image.asset(
                          "assets/images/placeholder.jpeg",
                          fit: BoxFit.cover,
                        )
                        
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.edit, color: Colors.white),
                      onPressed: uploadImageTest,
                    ),
                  ),
                ],
              ),
            ),
            Text(widget.user.name,
            style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            Text(widget.user.location!,
            style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            const Padding(padding: EdgeInsets.all(16.0)),
            const Text("Pets",
            style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            Wrap(
              spacing: 8.0,
              children: <Widget>[
                for (var pet in ownerPets)
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.blue,
                    child: Text(pet.name[0]),
                  ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.green,
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext bc) {
                          return SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    controller: _petName,
                                    decoration: const InputDecoration(
                                      labelText: "Pet Name",
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _petAge,
                                    decoration: const InputDecoration(
                                      labelText: "Pet Age",
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _petBreed,
                                    decoration: const InputDecoration(
                                      labelText: "Pet Breed",
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _petType,
                                    decoration: const InputDecoration(
                                      labelText: "Pet Type",
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _petNature,
                                    decoration: const InputDecoration(
                                      labelText: "Tell us about your pet",
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _petDiet,
                                    decoration: const InputDecoration(
                                      labelText: "Pet Diet",
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  ElevatedButton(
                                      onPressed: savePet,
                                      child: Text("Save Pet")),
                                  SizedBox(height: 20.0),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
