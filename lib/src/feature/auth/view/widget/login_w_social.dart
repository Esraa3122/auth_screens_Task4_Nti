import 'package:flutter/material.dart';

class LoginWSocial extends StatelessWidget {
  const LoginWSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {},
          color: Colors.white,
          height: 60,
          minWidth: 90,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const Image(
            image: NetworkImage(
                "https://th.bing.com/th/id/OIP.d_aqJ-1Jz8Ok1Z9NYiYbVgAAAA?rs=1&pid=ImgDetMain"),
            width: 30,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        MaterialButton(
            onPressed: () {},
            color: Colors.white,
            height: 60,
            minWidth: 90,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/R.b8162c48bec90de9183f7569c5666f61?rik=Ue4q7yjh3QNBAQ&pid=ImgRaw&r=0"),
              width: 40,
            )),
      ],
    );
  }
}
