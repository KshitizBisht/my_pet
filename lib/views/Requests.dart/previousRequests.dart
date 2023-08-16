import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/service/userService.dart';
import 'package:my_pet/views/requestDetail/requestDetails.dart';

import '../../models/Request.dart';

class RequestsPage extends StatefulWidget {
  const RequestsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RequestsPage();
  }
}

class _RequestsPage extends State<RequestsPage> {

  UserService userService = UserService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Request>>(
        future: userService.getAllRequests(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error fetching data'));
          } else {
            List<Request> careRequests = snapshot.data ?? [];
            return ListView.builder(
              itemCount: careRequests.length,
              itemBuilder: (context, index) {
                Request request = careRequests[index];
                var number = index + 1;
                return ListTile(
                  
                  title: Text(request.owner.name),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RequestDetails(request: request)))
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
