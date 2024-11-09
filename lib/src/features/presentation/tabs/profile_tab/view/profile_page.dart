import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'profile-detail');
          },
            child: _profileHeader(),
        ),
        _contentProfile(
            imagePath: 'assets/images/noti.png', title: 'Notifications'),
        _contentProfile(
            imagePath: 'assets/images/payicon.png', title: 'Payment Method'),
        _contentProfile(
            imagePath: 'assets/images/rewardicon.png',
            title: 'Reward Credits'),
        _contentProfile(
            imagePath: 'assets/images/promoicon.png', title: 'My Promo Code'),
        SizedBox(
          height: 20,
        ),
        _contentProfile(
            imagePath: 'assets/images/settingicon.png', title: 'Settings'),
        _contentProfile(
            imagePath: 'assets/images/inviteicon.png',
            title: 'Invite Friends'),
        _contentProfile(
            imagePath: 'assets/images/helpicon.png', title: 'Help Center'),
        _contentProfile(
            imagePath: 'assets/images/abouticon.png', title: 'About Us'),
      ],
    );
  }

  Container _profileHeader() {
    return Container(
      height: 250,
      color: Colors.grey.shade300,
      padding: EdgeInsets.all(40),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
            radius: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    HeaderText(
                        text: 'George Perez',
                        color: Colors.black,
                        fontSize: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/crown.png'),
                        width: 16,
                        height: 16,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: HeaderText(
                            text: 'VIP Member',
                            color: Colors.white,
                            fontSize: 13),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _contentProfile({required String imagePath, required String title}) {
  return Container(
    //padding: EdgeInsets.all(10),
    child: Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage(imagePath),
            height: 29,
            width: 29,
          ),
          title: HeaderText(text: title, color: Colors.black, fontSize: 15),
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    ),
  );
}
