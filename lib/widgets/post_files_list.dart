// // https://www.youtube.com/watch?v=GkjbimwxsWM

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class PostFilesList extends StatefulWidget {
  final List<PlatformFile> files;
  final ValueChanged<PlatformFile> onOpenedFile;

  const PostFilesList({
    Key? key,
    required this.files,
    required this.onOpenedFile,
  }) : super(key: key);

  @override
  _FilesListState createState() => _FilesListState();
}

class _FilesListState extends State<PostFilesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.files.length,
      itemBuilder: (context, index) {
        final file = widget.files[index];
        return buildListFile(file);
      },
    );
  }

  Widget buildListFile(PlatformFile file) {
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final size = (mb >= 1)
        ? '${mb.toStringAsFixed(2)} MB'
        : '${kb.toStringAsFixed(2)} KB';

    return InkWell(
      onTap: () {
        widget.onOpenedFile(file);
      },
      child: ListTile(
        title: Text(file.name),
        subtitle: Text('${size}'),
        trailing: Icon(Icons.delete_forever_outlined),
        onTap: () {},
      ),
    );
  }
}
