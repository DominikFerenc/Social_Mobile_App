import 'package:flutter/material.dart';

Container loginElevatedButton(
    String assetImage, String titleButton, BuildContext context, Color color) {
  Size size = MediaQuery.of(context).size;
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).backgroundColor,
          side: BorderSide(color: color),
          onPrimary: Colors.white,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Image(
                image: AssetImage(assetImage.toString()),
                height: 24,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Text(
                titleButton,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
