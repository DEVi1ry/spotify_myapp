import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Positioned(
                child: Image.asset('assets/images/logo.png'))),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ) //кнопка-заглушка, я пока не знаю, как сделать переход на некст экран через промежуток времени
        );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(child: 
            Expanded(child: 
              ConstrainedBox(constraints: 
                const BoxConstraints.tightFor(width: 1000, height: 1000),
                child: Image.asset('assets/images/secondPage/background.png', 
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                ),
              )
            )
          ),
          Positioned(bottom: 20, left: 41, child: 
            ConstrainedBox(constraints:
              const BoxConstraints.tightFor(width: 329, height: 81),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 66, 200, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ThirdRoute()),
                    );
                  },
                  child:
                    Image.asset('assets/images/secondPage/button_text.png')
                ),
            ),
          ),
          Positioned(top: 30, left: 108, child: Image.asset('assets/images/logo.png'), 
          ),
          Positioned(top: 465, left: 57, child: Image.asset('assets/images/text_low.png'), 
          ),
          Positioned(top: 418, left: 64, child: Image.asset('assets/images/text_high.png'), 
          ),
        ],
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(child: 
            Expanded(child: 
              ConstrainedBox(constraints: 
                const BoxConstraints.tightFor(width: 1000, height: 1000),
                child: Image.asset('assets/images/thirdPage/background.png', 
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                ),
              )
            )
          ),
          Positioned(top: 30, left: 108, child: Image.asset('assets/images/logo.png'), 
          ),
          Positioned(top: 350, left: 134, child: Image.asset('assets/images/thirdPage/Choose_mode.png'), 
          ),
          Positioned(bottom: 20, left: 41, child: 
            ConstrainedBox(constraints:
              const BoxConstraints.tightFor(width: 329, height: 81),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 66, 200, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ThirdRoute()),
                    );
                  },
                  child:
                    Image.asset('assets/images/thirdPage/Continue.png')
                ),
            ),
          ),
          Positioned(top: 400 , left: 206,child: 
            SizedBox(width: 500, height: 500, child: 
              Center( child:
                Column( crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  Row( children: [
                    ConstrainedBox(constraints:
                      const BoxConstraints.tightFor(width: 80, height: 80),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(30, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ThirdRoute()),
                          );
                        },
                        child:
                          Image.asset('assets/images/thirdPage/Moon.png')
                      ),
                    ),
                    ConstrainedBox(constraints:
                      const BoxConstraints.tightFor(width: 80, height: 80),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(30, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ThirdRoute()),
                          );
                        },
                        child:
                          Image.asset('assets/images/thirdPage/Sun.png')
                      ),
                    ),
                  ],
                  ),
                  Row( children: [
                    Image.asset('assets/images/thirdPage/Dark_mode.png'),
                    Image.asset('assets/images/thirdPage/Light_mode.png'),
                  ],
                  ),
                ],
                ),
              ),
            )
          )
        ]
      )  
    );
  }
}
