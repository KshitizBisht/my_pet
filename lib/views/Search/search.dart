import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/models/ModelProvider.dart';
import 'package:my_pet/service/userService.dart';
import 'package:my_pet/views/ViewCareTakerProfile/careTakerProfile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  UserService userService = UserService();
  List<User> allCaretakers = [];
  List<User> filteredCaretakers = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchAndSetCaretakers();
    _searchController.addListener(() {
      _filterCaretakers();
    });
  }

  Future<void> _fetchAndSetCaretakers() async {
    try {
      List<User> caretakers = await userService.getAllCareTakers();
      setState(() {
        allCaretakers = caretakers;
        _filterCaretakers(); // initialize filteredCaretakers with all data
      });
    } catch (e) {
      // Handle any potential errors, maybe set a flag to show an error message.
    }
  }

  _filterCaretakers() {
    String searchTerm = _searchController.text.toLowerCase();
    List<User> filtered = searchTerm.isEmpty
        ? allCaretakers
        : allCaretakers
            .where((caretaker) =>
                caretaker.location!.toLowerCase().contains(searchTerm))
            .toList();

    setState(() {
      filteredCaretakers = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: "Search by location",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: allCaretakers.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : filteredCaretakers.isEmpty
                    ? Center(
                        child: Text(
                            "No Caretakers found in ${_searchController.text}"))
                    : ListView.builder(
                        itemCount: filteredCaretakers.length,
                        itemBuilder: (context, index) {
                          User caretaker = filteredCaretakers[index];
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: CachedNetworkImageProvider(
                                  caretaker.userImageurl != null
                                      ? caretaker.userImageurl!
                                      : "assets/images/placeholder.png"),
                              radius: 20, // adjust this to change the size
                              backgroundColor:
                                  Colors.transparent, // or any other color
                            ),
                            title: Text(caretaker.name),
                            subtitle: Text(caretaker.location!),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CareTakerProfile(
                                      careTakerUser: caretaker),
                                ),
                              );
                            },
                          );
                      
                        },
                      ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
