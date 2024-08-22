import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_full_learn/202/service/comment_model.dart';
import 'package:flutter_full_learn/202/service/postModel.dart';

abstract class IPostService {
  Future<bool> addItemsToService(PostModel postModel); // Add -> Post demek
  Future<bool> putItemsToService(PostModel postModel, int id);
  Future<bool> deleteItemsToService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemsToService(PostModel postModel) async {
    try {
      final response = await _dio.post(_PostServicePath.post.name, data: postModel);
      return (response.statusCode == HttpStatus.created);
    } on DioError catch (exception) {
      _showDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<bool> putItemsToService(PostModel postModel, int id) async {
    try {
      final response = await _dio.put('${_PostServicePath.post.name}/$id', data: postModel);
      return (response.statusCode == HttpStatus.ok);
    } on DioError catch (exception) {
      _showDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<bool> deleteItemsToService(int id) async {
    try {
      final response = await _dio.delete('${_PostServicePath.post.name}/$id');
      return (response.statusCode == HttpStatus.ok);
    } on DioError catch (exception) {
      _showDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get(_PostServicePath.post.name);

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _showDebug.showDioError(exception, this);
    }
    return null;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response = await _dio.get(
        _PostServicePath.comments.name,
        queryParameters: {_PostQueryPath.postId.name: postId},
      );

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _showDebug.showDioError(exception, this);
    }
    return null;
  }
}

enum _PostServicePath { post, comments }

enum _PostQueryPath { postId }

class _showDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
    }
  }
}
