import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xffbde1e5),
        title: const Text(
          "وَاسْتَغْفِرِ اللَّهَ ۖ إِنَّ اللَّهَ كَانَ غَفُورًا رَّحِيمًا",
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  //يحدد طول وعرض العنصر بناء على حجم الشاشه اللي
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 1.50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 7),
                        blurRadius: 5,
                        color: Color.fromARGB(255, 5, 127, 141),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "$count",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(1, 2), // 1 and 9 defult
                child: Container(
                  height: 170,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 7),
                        color: Color.fromARGB(255, 5, 127, 141),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => counter(),
                        style: ElevatedButton.styleFrom(
                            maximumSize: const Size(70, 70)),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[600],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => reset(),
                            style: ElevatedButton.styleFrom(
                                maximumSize: const Size(70, 70),
                                foregroundColor: Colors.grey[800]),
                            child: const Icon(
                              Icons.restart_alt,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
