import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animated_screen.dart';

Padding photolist() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    child: Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          photo(),
          photo(),
          photo(),
          photo(),
          photo(),
        ],
      ),
    ),
  );
}
Padding photo() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 100,
      width: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'images/image1.png',
          //fit: BoxFit.cover,

        ),
      ),
    ),
  );
}

Padding medialine() {
  return Padding(
    padding: const EdgeInsets.only(left: 12, right: 12, top: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Media, docs and links',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.black54,
        ),
      ],
    ),
  );
}

Padding outdoorwala() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        outdoor(text: 'Outdor'),
        outdoor(text: 'Outdor'),
        outdoor(text: 'Outdor'),
        outdoor(text: 'Outdor'),
        outdoor(text: '+1'),
      ],
    ),
  );
}

Padding textwala() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Text(
      'et netus et malesuada fames ac turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie at elementum molesti eu facilisis sed odio morbi quis commo aenean sed adipiscing diam donec adipiscing',
      softWrap: true,
      style: TextStyle(
          fontWeight: FontWeight.bold
      ),
    ),
  );
}

Container appbar(BuildContext context) {
  return Container(
    color: Colors.red.shade900,
    height: MediaQuery.of(context).size.height*.09,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The weeknd',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                'Community · +11k Members',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}


class button extends StatelessWidget {
  String text;
  Color color;
  IconData? icon;
  button({required this.text, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 25,
              color: color,
            ),
            Text(
              "  $text",
              style: TextStyle(
                  color: color,
                  fontSize: 16
              ),
            ),
          ],
        )
    );
  }
}

class outdoor extends StatelessWidget {
  outdoor({required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red.shade900,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.red.shade900,
          ),
        ),
      ),
    );
  }
}

Container appbar2(BuildContext context) {
  return Container(
    color: Colors.red.shade900,
    height: MediaQuery.of(context).size.height*.09,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen1()));
            },
            child: Material(
              color: Colors.red.shade700,
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The weeknd',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                'Community · +11k Members',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          GestureDetector(
            onTap: (){
              showoptions(context);
            },
            child: Material(
                color: Colors.red.shade700,
                borderRadius: BorderRadius.circular(20),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

class followwale extends StatelessWidget {
  const followwale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('images/image1.png'),
            ),
          ),
          Column(
            children: [
              Text('Yashika',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text("29, India"),
            ],
          ),
          SizedBox(
            width: 120,
          ),
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class followwalagrey extends StatelessWidget {
  const followwalagrey({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('images/image1.png'),
            ),
          ),
          Column(
            children: [
              Text('Yashika',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text("29, India"),
            ],
          ),
          SizedBox(
            width: 120,
          ),
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Text(
                'Following',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void showoptions(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          height: 150,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.link,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Invite",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person_add_alt,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add member",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.group_add_outlined,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add Group",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
