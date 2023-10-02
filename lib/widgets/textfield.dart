import 'package:flutter/material.dart';

class TextCard extends StatefulWidget {
  final TextEditingController? editingController;
  final IconData? iconData;
  final String? assetref;
  final String? label;
  final bool? isVisible;


  TextCard({super.key,this.editingController, this.iconData, this.assetref, this.isVisible, this.label});

  @override
  State<TextCard> createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.editingController,
      decoration: InputDecoration(
        labelText: widget.label,
        prefixIcon: widget.iconData != null? Icon(widget.iconData) : Padding(padding: EdgeInsets.all(8),
          child: Image.asset(widget.assetref.toString()),
        ),
        labelStyle: TextStyle(
          fontSize: 18
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      obscureText: widget.isVisible!,

    );
  }
}
