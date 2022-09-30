import 'package:get/get.dart';
import 'package:getx_api_list/models/post_model.dart';
import 'package:getx_api_list/services/api_service.dart';

class PostController extends GetxController {
  var postList = <PostModel>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    gerAllPost();
    super.onInit();
  }

  void gerAllPost() async {
    var data = await ApiService().fetchPost();
    if (data.length > 0) {
      postList.clear();
      isLoading(false);
      postList.addAll(data);
    }
  }
}
