import 'package:equatable/equatable.dart';

class ArticleModel extends Equatable {
  final String title;
  final String content;
  final String file;
  final String? cover;
  final bool isLeft;

  const ArticleModel(
    this.title,
    this.content,
    this.file,
    this.cover,
    this.isLeft,
  );
  
  @override
  List<Object?> get props => [title];

  ArticleModel.fromJson({
    required Map<String, dynamic> json,
    required this.title,
    required this.isLeft,
  })  : content = json['content'] ?? 'No content',
        cover = json['cover'],
        file = json['file'] ?? '';
}
