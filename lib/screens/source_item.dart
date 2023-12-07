import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SourceItem extends StatelessWidget {
  String txt;

  bool isSelected;

  SourceItem(this.txt, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.green)),
      child: Text(
        txt,
        style: GoogleFonts.exo(
            fontSize: 14,
            fontWeight: FontWeight.w200,
            color: isSelected ? Colors.white : Colors.green),
      ),
    );
  }
}
