import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<String> titleData = [
    '나와의 채팅',
    '잡담방',
    '공지방',
    '하지만꽃',
    '친구1',
    '친구2',
    '친구3',
    '4',
    '5',
    '6',
    '7'
  ];
  final List<String> subtitleData = [
    '오 하이',
    '이거 맞아?',
    '내일 일정이 변경됨에 따라 아무쪼록 양해부탁드립니다. 그냥 하는 말이에요.',
    'ㅋㅋㅋ 벚꽃',
    'ㅎㅇ 오늘 머해',
    '롤린롤린롤린~',
    '3',
    '4',
    '5',
    '6',
    '7'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            '채팅',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.add_chart, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.forum, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.settings, color: Colors.black),
            SizedBox(width: 10),
          ],
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: titleData.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: Colors.white,
              onTap: () {},
              title: Text(titleData[index]),
              subtitle: Text(subtitleData[index]),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://thumbnews.nateimg.co.kr/news200x200///news.nateimg.co.kr/orgImg/mh/2023/04/16/2023041601039912082001_b.jpg'),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.center_focus_strong,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
