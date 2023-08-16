import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/models/ModelProvider.dart';
import 'package:my_pet/service/userService.dart';

import '../../models/User.dart';

class CareTakerProfile extends StatefulWidget {
  final User careTakerUser;

  const CareTakerProfile({super.key, required this.careTakerUser});

  @override
  State<StatefulWidget> createState() {
    return _CareTakerProfile();
  }
}

class _CareTakerProfile extends State<CareTakerProfile> {

  UserService userService = UserService();


  Future<void> sendCareRequest() async {
    Request req = Request(
      caretaker: widget.careTakerUser,
      owner: await userService.getUser(),
      message: _requestControllers.text
    );

    await Amplify.DataStore.save(req);
    Navigator.pop(context);
  }

  final TextEditingController _requestControllers = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _requestControllers.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: []),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              width: 200, // update width as needed
              height: 200, // update height as needed
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey, // pick a color of your choice
                ),
              ),
            ),
            Text(widget.careTakerUser.name),
            Text(widget.careTakerUser.location!),
            Padding(padding: EdgeInsets.all(16.0)),
            Text("Reviews"),


            ElevatedButton(
              child: Text("Write a request"),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext bc) {
                    return Container(
                      alignment: Alignment.center,
                      child: Column(children: [
                        TextFormField(
                          controller: _requestControllers,
                          decoration: const InputDecoration(
                            labelText: "Write a request",
                      
                          ),
                          maxLines: 6,
                        ),
                        ElevatedButton(onPressed: sendCareRequest, child: const Text("send"))
                      ]),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
