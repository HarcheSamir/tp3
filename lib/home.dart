import 'package:flutter/material.dart';
import 'package:tp3/prayer_detail_page.dart';
import 'package:audioplayers/audioplayers.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with WidgetsBindingObserver {
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioPlayer.onPlayerComplete.listen((_) {
      // Start playing the background music again when it ends
      playBackgroundMusic();
    });
    playBackgroundMusic();
    WidgetsBinding.instance?.addObserver(this);

  }

  Future<void> playBackgroundMusic() async {
    await audioPlayer.play(AssetSource('audio/background_music.mp3'));
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused || state == AppLifecycleState.inactive) {
      audioPlayer.stop();
    } else if (state == AppLifecycleState.resumed) {
      playBackgroundMusic();
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Children Salat',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: PrayerImages(),
      ),
    );
  }
}

class PrayerImages extends StatefulWidget {
  @override
  _PrayerImagesState createState() => _PrayerImagesState();
}

class _PrayerImagesState extends State<PrayerImages> {
  String? tappedImage;

  final List<Map<String, dynamic>> prayerList = [
    {
      'image': 'assets/images/subh.png',
      'name': 'Fajr',
      'rakaas':2,
      'steps': [
        'assets/images/w2.png',
        'assets/images/w3.png',
        'assets/images/w4.png',
        'assets/images/w5.png',
        'assets/images/w6.png'

      ],
    },
    {
      'image': 'assets/images/dhuhr.png',
      'name': 'Dhuhr',
      'rakaas':4,
      'steps': [
        'assets/images/w2.png',
        'assets/images/w3.png',
        'assets/images/w4.png',
        'assets/images/w5.png',
        'assets/images/w6.png'
      ],
    },
    {
      'image': 'assets/images/asr.png',
      'name': 'Asr',
      'rakaas':4,
      'steps': [
        'assets/images/w2.png',
        'assets/images/w3.png',
        'assets/images/w4.png',
        'assets/images/w5.png',
        'assets/images/w6.png'
      ],

    },
    {
      'image': 'assets/images/maghrib.png',
      'name': 'maghrib',
      'rakaas':3,
      'steps': [
        'assets/images/w2.png',
        'assets/images/w3.png',
        'assets/images/w4.png',
        'assets/images/w5.png',
        'assets/images/w6.png'
      ],

    },
    {
      'image': 'assets/images/isha.png',
      'name': 'isha',
      'rakaas':4,
      'steps': [
        'assets/images/w2.png',
        'assets/images/w3.png',
        'assets/images/w4.png',
        'assets/images/w5.png',
        'assets/images/w6.png'
      ],

    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              _showSnackBar(prayerList[0]);
            },
            onLongPress: () {
              _move(prayerList[0]);
            },
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: tappedImage != null && tappedImage == prayerList[0]['image']
                  ? _buildStepImages(prayerList[0]['steps'])
                  : Center(
                child: SizedBox(
                  width: 150, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  child: Image.asset(
                    prayerList[0]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _showSnackBar(prayerList[1]);
            },
            onLongPress: () {
              _move(prayerList[1]);

            },
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: tappedImage != null && tappedImage == prayerList[1]['image']
                  ? _buildStepImages(prayerList[1]['steps'])
                  : Center(
                child: SizedBox(
                  width: 150, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  child: Image.asset(
                    prayerList[1]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _showSnackBar(prayerList[2]);
            },
            onLongPress: () {
              _move(prayerList[2]);

            },
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: tappedImage != null && tappedImage == prayerList[2]['image']
                  ? _buildStepImages(prayerList[2]['steps'])
                  : Center(
                child: SizedBox(
                  width: 150, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  child: Image.asset(
                    prayerList[2]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _showSnackBar(prayerList[3]);
            },
            onLongPress: () {
              _move(prayerList[3]);

            },
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: tappedImage != null && tappedImage == prayerList[3]['image']
                  ? _buildStepImages(prayerList[3]['steps'])
                  : Center(
                child: SizedBox(
                  width: 150, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  child: Image.asset(
                    prayerList[3]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _showSnackBar(prayerList[4]);
            },
            onLongPress: () {
              _move(prayerList[4]);

            },
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: tappedImage != null && tappedImage == prayerList[4]['image']
                  ? _buildStepImages(prayerList[4]['steps'])
                  : Center(
                child: SizedBox(
                  width: 150, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  child: Image.asset(
                    prayerList[4]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildStepImages(List<String> steps) {
    return SizedBox(
      height: 150,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(steps.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                steps[index],
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            );
          }),
        ),
      ),
    );
  }

  void _showSnackBar(Map<String, dynamic> prayer) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("${prayer['name']} - ${prayer['rakaas']} Rakaat"),
      duration: const Duration(milliseconds: 100),
    ));
  }

  void _move(Map<String, dynamic> prayer) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PrayerDetailPage(prayer: prayer),
      ),
    );
  }


}





















