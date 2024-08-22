import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/postModel.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final baseUrl = 'https://jsonplaceholder.typicode.com/';

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    name = 'ali';
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemsToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel);
    if (response.statusCode == HttpStatus.created) {
      name = 'Basarili';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? ""),
          actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
        ),
        body: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: _titleController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Body'),
              controller: _bodyController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: 'UserId'),
              autofillHints: const [AutofillHints.creditCardNumber],
              controller: _userIdController,
              textInputAction: TextInputAction.send,
            ),
            TextButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty &&
                          _bodyController.text.isNotEmpty &&
                          _userIdController.text.isNotEmpty) {
                        final model = PostModel(
                            body: _bodyController.text,
                            title: _titleController.text,
                            id: int.tryParse(_userIdController.text));
                        _addItemsToService(model);
                      }
                    },
              child: const Text('send'),
            )
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({required PostModel? model}) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: ListTile(
        leading: Text((_model?.id ?? 0).toString()),
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
