import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<String> btnText= ["Home", 'Services','Réalisation', 'Processus', 'Blogs',
    'A propos'] ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: 50,
        width: double.infinity,
        color: CustomColor.argb,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/vector.png',
                  height: 50,
                  width: 50,
                ),
                const Text('TechWave Development',
                  style: TextStyle(
                      fontFamily: 'Tech',
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),
                ),
              ],
            ),
            //nav Btn
            Row(
              children: [
                for (int i = 0; i <btnText.length; i++)
                  TextButton(onPressed: (){},
                    child: Text(btnText[i],
                      style: TextStyle(
                        color: CustomColor.whiteSecondary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),

                  ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 40,
              child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Text('Nous Contacter',
                    style: TextStyle(
                        fontFamily: 'Tech',
                        fontWeight: FontWeight.w900,
                        color: Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      backgroundColor: Colors.green
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
