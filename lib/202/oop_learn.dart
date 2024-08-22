import 'dart:io';

import 'package:flutter_full_learn/202/custom_exception.dart';

class FileDownload {
  void downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print('a');
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem({required this.name, required this.file});
}
