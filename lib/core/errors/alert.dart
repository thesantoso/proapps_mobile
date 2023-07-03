import 'package:flutter/material.dart';

extension ShowAlert on BuildContext {
  void customDialog(
      {required BuildContext context,
      required Function()? onYes,
      required Function()? onNo}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            "Submit Work Request",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  "Are your sure wan't to submit this work request?",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: onNo,
              child: const Text(
                'No',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            TextButton(
              onPressed: onYes,
              child: const Text(
                'Yes',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void showDialogConfirm(
          {required BuildContext context,
          required Function()? onYes,
          required Function()? onNo}) =>
      customDialog(context: context, onYes: onYes, onNo: onNo);
}
