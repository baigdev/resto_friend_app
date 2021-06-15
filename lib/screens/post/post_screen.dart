import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:resto_friends_app/utils/models.dart';
import 'package:resto_friends_app/utils/const.dart';
import '../review/review_screen.dart';
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';
import 'package:resto_friends_app/utils/buttons.dart';

class PostDetailsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  actions: [
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.bookmark_border_sharp,
                          color: MyColors.grey400,
                        ))
                  ],
                  expandedHeight: 300,
                  pinned: true,
                  backgroundColor: Colors.white,
                  iconTheme: IconThemeData(color: MyColors.grey400),
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              height: 400,
              color: MyColors.white,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PostDetailsInfo(),
                      PostDetailRestoImagsWidget(),
                      RatingWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      ReviewsWidget(),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class PostDetailsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'X Sky Lounge',
                  style: TextStyles.montserratBold(
                      color: Colors.indigo, fontSize: WidgetSizes.boldTextSize),
                ),
                RatingContainer(
                  height: 30,
                  width: 30,
                  ratings: '5',
                ),
              ],
            ),
            Text(
              'Hill Road, West baston,Central Japan',
              style: TextStyles.montserratBold(
                  color: Colors.grey.shade300,
                  fontSize: WidgetSizes.lightTextSize),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Closed in 45 minutes',
                  style: TextStyles.montserratBold(
                      color: MyColors.red, fontSize: WidgetSizes.lightTextSize),
                ),
                Text(
                  ' 11AM to 12Midnight(Today)',
                  style: TextStyles.montserratBold(
                      color: Colors.grey.shade300,
                      fontSize: WidgetSizes.lightTextSize),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Casual Dinnig - Chinese, Pizza',
              style: TextStyles.montserratBold(
                  color: Colors.grey.shade300,
                  fontSize: WidgetSizes.lightTextSize),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Buttons.postDetailsDirBUtton('Directions'),
                SizedBox(width: 10),
                Buttons.postDetailsDirBUtton('35344234243'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PostDetailRestoImagsWidget extends StatelessWidget {
  List<ProfileDetailsImagesModel> model = [];

  makeModel() {
    model.add(ProfileDetailsImagesModel(
        imageLink:
            'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'));
    model.add(ProfileDetailsImagesModel(
        imageLink:
            'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'));
    model.add(ProfileDetailsImagesModel(
        imageLink:
            'https://images.unsplash.com/photo-1559329007-40df8a9345d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'));
    model.add(ProfileDetailsImagesModel(
        imageLink:
            'https://images.unsplash.com/photo-1586999768265-24af89630739?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'));
  }

  @override
  Widget build(BuildContext context) {
    makeModel();
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              margin: EdgeInsets.all(10),
              // height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(model[index].imageLink),
                ),
              ),
            );
          }),
    );
  }
}

class RatingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'Your rating!',
              style: TextStyles.montserratBold(
                  color: MyColors.indigo, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Buttons.postDetailsRatingButton(
                    text: '1', iconData: Icons.star),
                Buttons.postDetailsRatingButton(
                    text: '2', iconData: Icons.star),
                Buttons.postDetailsRatingButton(
                    text: '3', iconData: Icons.star),
                Buttons.postDetailsRatingButton(
                    text: '4', iconData: Icons.star),
                Buttons.postDetailsRatingButton(
                    text: '5', iconData: Icons.star),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'We would love to hear more about your experience!',
                style: TextStyles.montserratBold(
                    color: Colors.grey.shade300,
                    fontSize: WidgetSizes.lightTextSize),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AddReview();
                  }),
                );
              },
              child: Text(
                'Add Your Review',
                style: TextStyles.montserratBold(
                    color: MyColors.red, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviews',
                style: TextStyles.montserratBold(
                    color: MyColors.indigo, fontSize: 20),
              ),
              Text(
                'Read all(400)',
                style: TextStyles.montserratBold(
                    color: MyColors.red, fontSize: 15),
              )
            ],
          ),
          Container(
            // height: 150,
            margin: EdgeInsets.only(top: 20),
            // color: Colors.red,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  // color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.yellow,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          // color: Colors.pinkAccent,
                          height: 50,
                          // margin: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chloe Hannouille',
                                style: TextStyles.montserratBold(
                                    color: MyColors.indigo, fontSize: 15),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '45 Reviews, 353 Followers',
                                style: TextStyles.montserratBold(
                                    color: Colors.grey.shade300,
                                    fontSize: WidgetSizes.lightTextSize),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Buttons.postDetailsRatingButton(
                            text: '5', iconData: Icons.star),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit,send do eiusmod tempor incididunt ut labore et dolore mangna aliqua.',
                    style: TextStyle(
                        color: MyColors.grey400, fontSize: 15, height: 2),
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
