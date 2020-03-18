import 'package:user_profile/main.dart';
import 'package:flutter/material.dart';


class UserProfile extends StatefulWidget {
  final String id;
  bool isLoading = true;
  UserProfile(this.id);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
 

  Widget _buildProfileImage() {

    return Container(
      color: Colors.grey.shade200,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Hero(
              tag: "user",
              child: Container(
                height: 96.0,
                width: 96.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://i.imgur.com/lnYikhUg.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(80.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 5.0,

                  ),
                ),
              ),
            ),
          ),
          _buildName()
        ],
      ),
    );
  }

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Harsh Tyagi",

            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
         
        ],
      ),
    );
  }

  Widget _buildList() {
    return Card(
      // color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.orange[300],
              size: 24.0,

            ),
            contentPadding: EdgeInsets.only(left: 20.0),
            title: Text("Phone Number"),
            subtitle: Text("8979749001"),
            onTap: () {},
          ),
          // Divider(color: Colors.orangeAccent,indent: 16.0,),
          ListTile(
            leading: Icon(
              Icons.mail,
              color: Colors.orange[300],
              size: 24.0,
            ),
            contentPadding: EdgeInsets.only(left: 20.0),
            title: Text("Email"),
            subtitle: Text("harshtyagimdr@hyathi.com"),
            onTap: () {},
          ),
          // Divider(color: Colors.orangeAccent,indent: 16.0,),
          ListTile(
            leading: Icon(
              Icons.contact_mail,
              color: Colors.orange[300],
              size: 24.0,
            ),
            contentPadding: EdgeInsets.only(left: 20.0),
            title: Text("Address"),
            subtitle: Text("Ghaziabad"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_basket,
              color: Colors.orange[300],
              size: 24.0,
            ),
            contentPadding: EdgeInsets.only(left: 20.0),
            title: Text("Your Orders"),
            
            subtitle: Text("10"),
            onTap: () {},
          ),
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    var iconButton = IconButton(
      icon: Icon(
        Icons.keyboard_backspace,
        color: Colors.orangeAccent,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    return  Scaffold(
            appBar: AppBar(
              title: Text(
                "User Profile",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.60),
                ),
              ),
              elevation: 0.0,
              backgroundColor: Colors.grey.shade200,
              actions: <Widget>[
                FlatButton(
               onPressed: () {
                    //logout user
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.60),
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildProfileImage(),
                  SizedBox(
                    height: 16,
                  ),
                  _buildList(),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
                icon: Icon(Icons.edit,color: Colors.white,),
                label: Text("Edit",
                    style: TextStyle(color: Colors.white)),
                elevation: 2.0,
                onPressed: () {
                  //navigate to orders details
                }),
          );
  }
}
