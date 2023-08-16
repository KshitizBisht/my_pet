import 'package:flutter/material.dart';
import 'package:my_pet/models/Request.dart';

class RequestDetails extends StatefulWidget {
  final Request request;
  const RequestDetails({super.key, required this.request});

  @override
  State<StatefulWidget> createState() => _RequestDetails();
}

class _RequestDetails extends State<RequestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request Details"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Request ID:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(widget.request.id),
              SizedBox(height: 16.0),
              
              // TODO: Continue for other properties, e.g.
              const Text(
                "Date of Request:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(widget.request.createdAt.toString()), // Assuming there's a 'date' property
              SizedBox(height: 16.0),
              
              // Description
              const Text(
                "CareTaker:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(widget.request.caretaker.name.toString()), // Assuming there's a 'description' property
              SizedBox(height: 16.0),

              const Text(
                "Message:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(widget.request.message.toString()), // Assuming there's a 'description' property
              SizedBox(height: 16.0)
              
              // And so on for other properties...
            ],
          ),
        ),
      ),
    );
  }
}
