import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:megd/models/articles/aricles_model.dart';


class FireStoreService extends GetxService{
  final _firestore = FirebaseFirestore.instance;
  final _articles = <ArticleModel>[];

  Future<void> getTopics() async {
    try {
      final articles = (await _firestore.collection('articles').get()).docs.first.data();
    } catch (e) {
      
    }
  }
}