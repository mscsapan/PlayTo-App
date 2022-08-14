import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/text_style.dart';

class HostView extends StatelessWidget {
  const HostView({Key? key, required this.image, required this.name})
      : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.2,
      width: _size.width,
      // color: red,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Card(
        elevation: 6.0,
        shadowColor: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Container(
                height: _size.height * 0.16,
                width: _size.width / 3.5,
                margin: const EdgeInsets.only(right: 12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: textStyle2(),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 6.0),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Text('Host'),
                      ),
                    ],
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        backgroundColor: Colors.grey[200]),
                    onPressed: () {},
                    child: const Text(
                      'Pemula',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Lihat reputashi pemain',
                        style: textStyle().copyWith(fontSize: 15.0),
                      ),
                      const SizedBox(width: 4.0),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 10.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
