import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'const.dart';


class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}
bool isSwitched = false;
class _screen1State extends State<screen1> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >= 200) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Screen2()),
      );
      // Remove the listener if you want the navigation to happen only once
      _scrollController.removeListener(_scrollListener);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 200.0,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
              'images/image1.png',
              fit: BoxFit.cover,
            )
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                appbar(context),
                textwala(),
                outdoorwala(),
                medialine(),
                photolist(),
                mutenotification(),
                button(text: 'Clear chat', color: Colors.black, icon: Icons.delete_outlined,),
                button(text: 'Encryption', color: Colors.black, icon: Icons.lock,),
                button(text: 'Exit community', color: Colors.red.shade900, icon: Icons.exit_to_app,),
                //button(text: 'Report', color: Colors.red.shade900, icon: Icons.report,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding mutenotification() {
    return Padding(
                padding: const EdgeInsets.only(left: 12, right: 12,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mute notification',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Switch(value: isSwitched,
                        onChanged: (value){
                      setState(() {
                        isSwitched = value;
                      });
                    },
                      activeTrackColor: Colors.red,
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              );
  }

  }

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final ScrollController scrollController1 = ScrollController();
  void initState() {
    super.initState();
    scrollController1.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController1.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (scrollController1.position.userScrollDirection == ScrollDirection.forward) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen1()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: scrollController1,
        children: [
          appbar2(context),
          textwala(),
          outdoorwala(),
          medialine(),
          photolist(),
          mutenotification(),
          button(text: 'Clear chat', color: Colors.black, icon: Icons.delete_outlined,),
          button(text: 'Encryption', color: Colors.black, icon: Icons.lock,),
          button(text: 'Exit community', color: Colors.red.shade900, icon: Icons.exit_to_app,),
          button(text: 'Report', color: Colors.red.shade900, icon: Icons.report,),
          memnbers(),
          followwalagrey(),
          followwale(),
          followwale(),
          followwale(),
          followwale(),
          followwale(),
          followwale(),
          followwale(),
          followwale(),
        ],
      )
    );
  }

  Padding memnbers() {
    return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Members',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => screen3()));
                },
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              )
            ],
          ),
        );
  }





  Padding mutenotification() {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mute notification',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Switch(value: isSwitched,
            onChanged: (value){
              setState(() {
                isSwitched = value;
              });
            },
            activeTrackColor: Colors.red,
            activeColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  const screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            appbar2(context),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search members",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )
                  ),
                ),
              ),
            ),
          ),
          followwalagrey(),
          followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
            followwale(),
          ],
        ),
      ),
    );
  }
}

