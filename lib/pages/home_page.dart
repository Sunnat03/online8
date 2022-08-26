import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:online8/service/network_service.dart';
import '../model/github_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GithubModel? git;

  @override
  void initState() {
    super.initState();
    getData();
  }
  
  void getData() async {
    var response = await NetworkServices.GET(NetworkServices.API_GET_USER, NetworkServices.paramsEmpty());
    
    
    setState(() {
      git = GithubModel.fromJson(jsonDecode(response!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Git Hub"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text((git?.id).toString(),style: const TextStyle(fontSize: 24),),
              Text((git?.name).toString(),style: const TextStyle(fontSize: 24),),
              Text((git?.login).toString(),style: const TextStyle(fontSize: 24),),
              Text((git?.toJson()).toString(),style: const TextStyle(fontSize: 24),),
            ],
          ),
        ),
      ),
    );
  }
}
