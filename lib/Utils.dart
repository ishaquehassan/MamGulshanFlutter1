import 'package:flutter/material.dart';

navigate(BuildContext context,Widget widget){
  Navigator.of(context).push(
      MaterialPageRoute(
          builder: (ctx) => widget
      )
  );
}