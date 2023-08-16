import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/home.dart';
import 'package:my_pet/views/Onboarding/profileSetup.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
//petcare@care.com  
//mtek1234

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    try {
       final datastorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.addPlugin(datastorePlugin);
      await Amplify.addPlugin(AmplifyStorageS3());
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured');
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }

    
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: Scaffold(
          body: Home(),
        ),
      ),
    );
  }
}