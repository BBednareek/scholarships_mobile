import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void showErrorSnackBar(BuildContext context, String text) {
  return showTopSnackBar(
    Overlay.of(context),
    dismissType: DismissType.onSwipe,
    CustomSnackBar.error(message: text, maxLines: 8),
  );
}
