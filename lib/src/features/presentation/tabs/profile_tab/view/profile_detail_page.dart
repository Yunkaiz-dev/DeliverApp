import 'package:flutter/material.dart';
import 'package:myapp/src/features/presentation/widgets/back_button.dart';
import 'package:myapp/src/features/presentation/widgets/header_text.dart';
import 'package:myapp/src/utils/styles/box_decoration_with_shadows.dart';

import '../../../../../utils/extensions/screen_size.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({super.key});

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            HeaderText(text: 'Edit Profile', color: Colors.black, fontSize: 17),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: backButton(context, Colors.black),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 15),
              child:
                  HeaderText(text: 'Done', color: Colors.orange, fontSize: 17),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: ScreenSize.screenWidth.getScreenWidth(context: context),//MediaQuery.of(context).size.width,
                  height: ScreenSize.screenHeight.getScreenHeight(context: context) * 0.65,
                  margin: EdgeInsets.only(top: ScreenSize.screenHeight.getScreenHeight(context: context) * .10, left: 15, right: 15),
                  decoration: boxDecorationWithShadows(),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: Offset(0, -60),
                        child: Container(
                          height: 142,
                          width: 142,
                          decoration: boxDecorationWithShadows(borderRadius: BorderRadius.circular(65)),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile.png'),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -95),
                        child: Container(
                          margin: EdgeInsets.only(left: 70),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.camera_alt, color: Colors.white, size: 20,),
                        ),
                      ),
                      TextFieldProfileDetailView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldProfileDetailView extends StatelessWidget {
   TextFieldProfileDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createTextFieldEmail(context),
        _createTextFieldUserName(context),
        _createTextFieldPhone(context),
        _createTextFieldDOB(context),
        _createTextFieldDeliveryAddress(context),
      ],
    );
  }

  Widget _createTextFieldEmail(BuildContext context ){
    return Container(
      width: ScreenSize.screenWidth.getScreenWidth(context: context) * 0.85,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
      ),
      child: ListTile(
        leading: Icon(Icons.email),
        title: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'user@email.com',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )
          ),
        ),
      ),
    );
  }

   Widget _createTextFieldUserName(BuildContext context ){
     return Container(
       width: ScreenSize.screenWidth.getScreenWidth(context: context) * 0.85,
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
       ),
       child: ListTile(
         leading: Icon(Icons.person),
         title: TextField(
           decoration: InputDecoration(
               hintText: 'user',
               border: OutlineInputBorder(
                 borderSide: BorderSide.none,
               )
           ),
         ),
       ),
     );
   }

   Widget _createTextFieldPhone(BuildContext context ){
     return Container(
       width: ScreenSize.screenWidth.getScreenWidth(context: context) * 0.85,
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
       ),
       child: ListTile(
         leading: Icon(Icons.phone),  
         title: TextField(
           keyboardType: TextInputType.phone,
           decoration: InputDecoration(
               hintText: 'phone',
               border: OutlineInputBorder(
                 borderSide: BorderSide.none,
               )
           ),
         ),
       ),
     );
   }

   Widget _createTextFieldDOB(BuildContext context ){
     return Container(
       width: ScreenSize.screenWidth.getScreenWidth(context: context) * 0.85,
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
       ),
       child: ListTile(
         leading: Icon(Icons.calendar_month),
         title: TextField(
           keyboardType: TextInputType.datetime,
           decoration: InputDecoration(
               hintText: 'Date of birth',
               border: OutlineInputBorder(
                 borderSide: BorderSide.none,
               )
           ),
         ),
       ),
     );
   }

   Widget _createTextFieldDeliveryAddress(BuildContext context ){
     return Container(
       width: ScreenSize.screenWidth.getScreenWidth(context: context) * 0.85,
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
       ),
       child: ListTile(
         leading: Icon(Icons.directions),
         title: TextField(
           keyboardType: TextInputType.text,
           maxLines: 3,
           decoration: InputDecoration(
               hintText: 'address',
               border: OutlineInputBorder(
                 borderSide: BorderSide.none,
               )
           ),
         ),
       ),
     );
   }



}

