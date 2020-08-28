import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/story.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Story> story = [
    Story(
        "https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jazmin"),
    Story(
        "https://images.pexels.com/photos/2887718/pexels-photo-2887718.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Megha"),
    Story(
        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Saugat"),
    Story(
        "https://images.pexels.com/photos/2120114/pexels-photo-2120114.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sylvester"),
    Story(
        "https://images.pexels.com/photos/2100063/pexels-photo-2100063.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lavina"),
    Story(
        "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Edison"),
    Story(
        "https://images.pexels.com/photos/2128807/pexels-photo-2128807.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Flossie"),
    Story(
        "https://images.pexels.com/photos/2218786/pexels-photo-2218786.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "jasmin"),
    Story(
        "https://images.pexels.com/photos/2598024/pexels-photo-2598024.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Riya"),
    Story(
        "https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lindsey"),
    Story(
        "https://images.pexels.com/photos/2104252/pexels-photo-2104252.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Alisha"),
    Story(
        "https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Diya"),
  ];

  List<Post> posts = [
    Post(
        "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "Saugatdhakal",
        "https://images.pexels.com/photos/1438072/pexels-photo-1438072.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "He decided to live his life by the big beats manifesto."),
    Post(
        "https://images.pexels.com/photos/906052/pexels-photo-906052.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "Noello Otto",
        "https://images.pexels.com/photos/906100/pexels-photo-906100.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "There have been days when I wished to be separated from my body, but today wasn’t one of those days."),
    Post(
        "https://images.pexels.com/photos/167669/pexels-photo-167669.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "Travis Seera",
        "https://images.pexels.com/photos/165763/pexels-photo-165763.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "Sometimes it is better to just walk away from things and go back to them later when you’re in a better frame of mind."),
    Post(
      "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "Nitin Khajotia",
      "https://images.pexels.com/photos/4201439/pexels-photo-4201439.png?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "Lightning Paradise was the local hangout joint where the group usually ended up spending the night.",
    ),
    Post(
        "https://images.pexels.com/photos/764529/pexels-photo-764529.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "mohamed Abdelgaffar",
        "https://images.pexels.com/photos/5056650/pexels-photo-5056650.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "If my calculator had a history, it would be more embarrassing than my browser history."),
    Post(
        "https://images.pexels.com/photos/939817/pexels-photo-939817.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Mihai Stefan ",
        "https://images.pexels.com/photos/2880376/pexels-photo-2880376.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "His mind was blown that there was nothing in space except space itself."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: story.map((story) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            border:
                                Border.all(width: 3, color: Color(0xFF8e44ad))),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(story.image),
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(story.name)
                    ],
                  );
                }).toList(),
              ),
            ),

            //*Post
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image(
                                        image: NetworkImage(
                                            posts[index].userImage),
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(posts[index].username,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              IconButton(
                                  icon: Icon(SimpleLineIcons.options),
                                  onPressed: () {})
                            ],
                          ),
                        ),
                        FadeInImage(
                            image: NetworkImage(posts[index].postImage),
                            placeholder: AssetImage("image/placeholder.png"),
                            width: MediaQuery.of(context).size.width),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(FontAwesome.heart_o),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(FontAwesome.comment_o),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(FontAwesome.send_o),
                                    onPressed: () {}),
                              ],
                            ),
                            IconButton(
                                icon: Icon(FontAwesome.bookmark_o),
                                onPressed: () {})
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Liked by "),
                                  Text(
                                    "Sanam Dhakal,Raju Sharma",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(" and "),
                                  Text(
                                    "1,453 others",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    posts[index].username,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(" Thank for Compliment Bro :)")
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "August 28",
                                    style: TextStyle(color: Colors.black26),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
