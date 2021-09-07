import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tv_series/models/show.dart';

/// This widget is used to display a item show.
class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.show}) : super(key: key);
  final Show show;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(show.name ?? ''),
      trailing: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: show.image?.medium ?? '',
      ),
      onTap: () => Navigator.pushNamed(
        context,
        '/show_details',
        arguments: show,
      ),
    );
  }
}
