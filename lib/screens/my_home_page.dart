import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_list/controllers/post_conntroller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final postContrl = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Api Call"),
      ),
      body: Obx(() => postContrl.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: postContrl.postList.length,
              itemBuilder: (_, index) {
                return Card(
                  elevation: 10,
                  child: SizedBox(
                    height: 170,
                    child: Column(
                      children: [
                        Text("Title name: ${postContrl.postList[index].title}"),
                        Text("UserId: ${postContrl.postList[index].userId}"),
                        Text("ID: ${postContrl.postList[index].id}"),
                        Text("Body: ${postContrl.postList[index].body}"),
                      ],
                    ),
                  ),

                );
              },
            )),
    );
  }
}
