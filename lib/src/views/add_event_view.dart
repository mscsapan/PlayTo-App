import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddEventView extends StatelessWidget {
  const AddEventView({Key? key}) : super(key: key);
  final String addText = 'Tambah pengeluaran untak\nkegiatagan olahraga';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.12,
      width: _size.width,
      margin: const EdgeInsets.only(top: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.5),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 45.0,
            width: 45.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 28.0,
            ),
          ),
          Text(
            addText,
            style: GoogleFonts.openSans(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
