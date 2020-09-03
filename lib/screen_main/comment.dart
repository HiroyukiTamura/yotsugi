import 'package:flutter/widgets.dart';

class Comment extends StatelessWidget {

  const Comment({Key key, @required this.string}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(string, style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),),
    );
  }
}

class DateText extends StatelessWidget {

  const DateText({Key key, @required this.string}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.only(right: 16, left: 16),
      alignment: Alignment.centerRight,
      child: Text(string, style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),
    );
}