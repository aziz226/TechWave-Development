import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> btnText= ["Home", 'Services','Réalisation', 'Processus', 'Blogs',
    'A propos'] ;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              )
                          ),
                          child: Text(btnText[i],
                            style: const TextStyle(
                              color: CustomColor.whiteSecondary,
                              fontWeight: FontWeight.w700,
                            ),
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
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            backgroundColor: Colors.green
                        ),
                      child: const Text('Nous Contacter',
                        style: TextStyle(
                            fontFamily: 'Tech',
                            fontWeight: FontWeight.w900,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 18, 32, 47),
                    child: Image.asset('assets/images/abstract_design.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 70),
                            child: const Text('Great Product is \nbuilt by great teams',
                              style: TextStyle(
                                  fontFamily: 'Tech',
                                  fontSize: 50,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 70),
                            child:
                              AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText('We help build and manage a team of world-class developers\n to bring your vision to life',
                                      textStyle: const TextStyle(
                                          color: Colors.white
                                      ),
                                      speed: const Duration(milliseconds: 150)),
                                ],

                                isRepeatingAnimation: true,
                              )
                          ),
                          const SizedBox(height: 60,),
                          const Text(
                            'A Digital Product Studio \nthat will Work',
                            style: TextStyle(
                              color: CustomColor.greenLight,
                              fontSize: 23,
                              fontFamily: 'Tech',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 50,
                            margin:const EdgeInsets.only(top: 20,),
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: CustomColor.scffoldBg
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text('for',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: CustomColor.bgLight1
                                  ),
                                  child: const Text('Startups',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: CustomColor.bgLight1
                                  ),
                                  child: const Text('Enterprise leaders',
                                    style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: CustomColor.bgLight1
                                  ),
                                  child: const Text('Media & Publishers',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                                const Text('and',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  margin: const EdgeInsets.only(right: 8),
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: CustomColor.bgLight1
                                  ),
                                  child: const Text('Social Good',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 80),
                        width: MediaQuery.of(context).size.width/2.5,
                        child: Image.asset('assets/images/Hero-Wrapper__image.png'),
                      )
                    ],
                  )
                ],
              ),
            ),

            //Services
            SizedBox(
              height: MediaQuery.of(context).size.width / 7,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color.fromARGB(255, 18, 32, 47).withOpacity(0.8),
                      BlendMode.srcATop,
                    ),
                    child: Image.asset(
                      'assets/images/text_container.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nos Services',
                        style: TextStyle(
                          fontFamily: 'Tech',
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Transformez votre marque avec nos solutions numériques innovantes qui captivent et engagent votre public.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.24,
              width: double.infinity,
              color: CustomColor.argb,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                   width: MediaQuery.of(context).size.width/3.5,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset('assets/images/Icon1.png', height: 50, width: 50,),
                            )

                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20),
                              child: Text('Design',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Tech',
                                  color: Colors.white,
                                  fontSize: 22
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 10, right: 20),
                          child: Text('Chez TechWave Development, notre équipe de conception est passionnée par la création de designs époustouflants et centrés sur l\'utilisateur qui captivent votre public et rehaussent votre marque. Nous pensons qu\'un bon design n\'est pas seulement une question d\'esthétique ; il s\'agit de créer des expériences utilisateur transparentes et intuitives.',
                            style: TextStyle(
                                fontFamily: 'Tech',
                                color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 20, top: 30, bottom: 30),
                          child: ElevatedButton(
                              onPressed: (){

                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  backgroundColor: CustomColor.bgLight2
                              ),
                              child: const Text('Apprendre encore plus',
                                style: TextStyle(
                                    fontFamily: 'Tech',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  //divider
                  Container(
                    width: 1,
                    height: double.infinity,
                    color: CustomColor.bgLight2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3.5,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset('assets/images/Icon2.png', height: 50, width: 50,),
                            )

                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20),
                              child: Text('Ingénierie',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Tech',
                                    color: Colors.white,
                                    fontSize: 22
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 10, right: 20),
                          child: Text('Notre équipe d’ingénieurs combine expertise technique et passion pour l’innovation pour créer des solutions numériques robustes et évolutives. Nous exploitons les dernières technologies et les meilleures pratiques pour fournir des applications hautes performances adaptées à vos besoins spécifiques.',
                            style: TextStyle(
                              fontFamily: 'Tech',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 20, top: 65,),
                          child: ElevatedButton(
                              onPressed: (){

                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  backgroundColor: CustomColor.bgLight2
                              ),
                              child: const Text('Apprendre encore plus',
                                style: TextStyle(
                                    fontFamily: 'Tech',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  //divider
                  Container(
                    width: 1,
                    height: double.infinity,
                    color: CustomColor.bgLight2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3.5,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset('assets/images/Icon3.png', height: 50, width: 50,),
                            )

                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 20),
                              child: Text('Gestion de projet',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Tech',
                                    color: Colors.white,
                                    fontSize: 22
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 10, right: 20),
                          child: Text('Notre équipe de gestion de projet expérimentée veille à ce que vos projets soient livrés à temps, dans les limites du budget et selon vos spécifications. Nous suivons les méthodologies standard de l’industrie et utilisons des outils de communication et de collaboration efficaces pour vous tenir informé tout au long du processus de développement.',
                            style: TextStyle(
                              fontFamily: 'Tech',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 20, top: 40, bottom: 20, right: 20),
                          child: ElevatedButton(
                              onPressed: (){
                                //
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  backgroundColor: CustomColor.bgLight2
                              ),
                              child: const Text('Apprendre encore plus',
                                style: TextStyle(
                                    fontFamily: 'Tech',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //Why choose us
            SizedBox(
              height: MediaQuery.of(context).size.width / 7,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color.fromARGB(255, 18, 32, 47).withOpacity(0.8),
                      BlendMode.srcATop,
                    ),
                    child: Image.asset(
                      'assets/images/text_container.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pourquoi choisir TechWave Development ?',
                        style: TextStyle(
                          fontFamily: 'Tech',
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Faites l’expérience de l’excellence dans l’artisanat numérique avec notre équipe de professionnels qualifiés qui se consacrent à fournir des résultats exceptionnels.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.3,
              width: double.infinity,
              color: CustomColor.argb,
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Image.asset('assets/images/Icon11.png', height: 50, width: 50,),
                                  ),
                                  const Text('Compétence',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Tech',
                                        color: Colors.white,
                                        fontSize: 22
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 10, right: 20),
                                child: Text('Notre équipe est composée de professionnels hautement qualifiés qui ont une compréhension approfondie du paysage numérique. Nous restons à jour avec les dernières tendances et meilleures pratiques du secteur pour proposer des solutions de pointe.',
                                  style: TextStyle(
                                    fontFamily: 'Tech',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //divider
                          Container(
                            width:  MediaQuery.of(context).size.width,
                            height: 1,
                            color: CustomColor.bgLight2,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                                    child: Image.asset('assets/images/Icon13.png', height: 50, width: 50,),
                                  ),
                                  const Text('Solutions axées sur les résultats',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Tech',
                                        color: Colors.white,
                                        fontSize: 22
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 10, right: 20, bottom: 15),
                                child: Text('Notre objectif principal est de produire des résultats. Nous combinons créativité et expertise technique pour créer des produits numériques qui stimulent la croissance de l\'entreprise, améliorent l\'expérience utilisateur et offrent un avantage concurrentiel.',
                                  style: TextStyle(
                                    fontFamily: 'Tech',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,),
                    //divider
                    Container(
                      width: 1,
                      height: double.infinity,
                      color: CustomColor.bgLight2,
                    ),
                    const SizedBox(width: 50,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Image.asset('assets/images/Icon12.png', height: 50, width: 50,),
                                  ),
                                  const Text('Approche centrée sur le client',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Tech',
                                        color: Colors.white,
                                        fontSize: 22
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 10, right: 20),
                                child: Text('Nous accordons la priorité à nos clients et à leurs besoins uniques. Nous écoutons vos idées, vos défis et vos objectifs et adaptons nos services pour répondre à vos besoins spécifiques. Votre succès est notre succès.',
                                  style: TextStyle(
                                    fontFamily: 'Tech',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //divider
                          Container(
                            width:  MediaQuery.of(context).size.width,
                            height: 1,
                            color: CustomColor.bgLight2,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                                    child: Image.asset('assets/images/Icon14.png', height: 50, width: 50,),
                                  ),
                                  const Text('Partenariat collaboratif',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Tech',
                                        color: Colors.white,
                                        fontSize: 22
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 10, right: 20, bottom: 15),
                                child: Text('Nous valorisons les relations à long terme avec nos clients. Nous nous considérons comme votre partenaire numérique, fournissant une assistance, une maintenance et des mises à jour continues pour garantir que vos produits numériques continuent de prospérer.',
                                  style: TextStyle(
                                    fontFamily: 'Tech',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //Thanks widgets
            SizedBox(
              height: MediaQuery.of(context).size.width / 4,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color.fromARGB(255, 18, 32, 47).withOpacity(0.8),
                      BlendMode.srcATop,
                    ),
                    child: Image.asset(
                      'assets/images/text_container.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        height: 60,
                          width: 60,
                          'assets/images/vector.png'),
                      const Text(
                        textAlign: TextAlign.center,
                        'Merci de votre intérêt pour \nTechWave Development.',
                        style: TextStyle(
                          fontFamily: 'Tech',
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        margin: EdgeInsets.only(bottom: 30),
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Nous serions ravis d’avoir de vos nouvelles et de discuter de la manière dont nous pouvons vous aider à donner vie à vos idées numériques. Voici les différentes manières de nous contacter.',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            backgroundColor: Colors.green
                        ),
                        child: const Text('Démarrer le projet',
                          style: TextStyle(
                              fontFamily: 'Tech',
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ],
              ),
            ),

            // User form for messagine to project
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: CustomColor.argb,

              child: Column(
                children: [
                  const SizedBox(height: 40),
                  // name and email
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/6,
                        width:  MediaQuery.of(context).size.width/4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: CustomColor.scffoldBg
                          ),
                        child: Column(
                          children: [
                            Text('Nom & Prénom',
                              style: TextStyle(
                                color: Colors.white,
                              )
                            ),
                            TextField(
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: CustomColor.scffoldBg)
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: CustomColor.scffoldBg)
                                ),
                                labelText: 'Écrivez ici',
                                filled: true
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                          height: MediaQuery.of(context).size.height/6,
                          width:  MediaQuery.of(context).size.width/4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: CustomColor.scffoldBg
                          )
                      ),
                    ],
                  )
                ],
              )
              ),
          ],
        ),
      ),
    );
  }
}
