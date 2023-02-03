import 'package:flutter/material.dart';

void hideKeyboard(context) {
  FocusScope.of(context).requestFocus(FocusNode());
}
