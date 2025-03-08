import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Card Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff8c062f),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfffe5788), Color(0xfff56d5d)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://www.toptal.com/designers/subtlepatterns/uploads/memphis-mini.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://www.yamaha-motor.co.id/uploads/products/new_product_banner/2025012015085267243H36006.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 50 + MediaQuery.of(context).size.height * 0.35,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'Yamaha All New XSR 155',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xfff56d5d),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Posted on ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'March 08, 2025',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xfff56d5d),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Spacer(flex: 10),
                                Icon(
                                  Icons.thumb_up,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                Spacer(),
                                Text(
                                  '99',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(flex: 5),
                                Icon(
                                  Icons.comment,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                Spacer(),
                                Text(
                                  '1099',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(flex: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
