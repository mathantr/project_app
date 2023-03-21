import 'package:flutter/material.dart';

class Teams extends StatelessWidget {
  const Teams({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: RichText(
              text: TextSpan(
                  text: '7',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                  children: [
                    TextSpan(
                      text: ' Teams',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ]),
            ),
          ),
          Row(
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/518/518705.png',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/183/183318.png?w=826&t=st=1679381644~exp=1679382244~hmac=3d774b649afbf33a26f830ed6a7da8171902727310464f1272b24e2e4d3622f8',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/603/603156.png?w=826&t=st=1679381719~exp=1679382319~hmac=f3b6f009bf305192be0681d716589c44a392742a37a1c1bacb7477b33b278865',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/825/825511.png?w=826&t=st=1679382067~exp=1679382667~hmac=d4ba737a964c367e2ef489d60bb75f97bb7f130b41234f1802015c6c14e96013',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/380/380005.png?w=826&t=st=1679382214~exp=1679382814~hmac=62c7d039ed85523865727c5357ab7125564271f567b984ed240d02481cdd519b',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Image.network(
                'https://img.freepik.com/free-icon/maxthon_318-432129.jpg?t=st=1679382451~exp=1679383051~hmac=0e77e224f6b4ad7a5327048654dd3b9f5d19a8ac38ba9206eb17855aafc3ea40',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/1251/1251835.png?w=826&t=st=1679382590~exp=1679383190~hmac=cfe947dfc38f8488510cca6a0c0a21b0beac75c5a87a349dde053b4e81c1a666',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Image.network(
                'https://img.freepik.com/free-icon/add_318-932014.jpg?t=st=1679382297~exp=1679382897~hmac=d34390da7b81af57da593d4ba40bb47408bab3ca981cd4d547bedec81f79549b',
                height: 30,
                width: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
