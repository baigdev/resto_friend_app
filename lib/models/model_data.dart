import 'package:resto_friends_app/models/models.dart';

List<FriendsListModel> friendListData = [
  FriendsListModel(
      name: 'Michael Korwin',
      imageLink:
          'https://images.unsplash.com/photo-1560241804-02b7b1bc9d55?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=328&q=80',
      tag: 'Top Tallets'),
  FriendsListModel(
      name: 'Alberto Conti',
      imageLink:
          'https://images.unsplash.com/photo-1583195764036-6dc248ac07d9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80',
      tag: 'Top Tallets'),
  FriendsListModel(
      name: 'Alina',
      imageLink:
          'https://images.unsplash.com/photo-1594744803329-e58b31de8bf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
      tag: 'Top Tallets'),
  FriendsListModel(
      name: 'Asma',
      imageLink:
          'https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
      tag: 'Top Tallets'),
];

final List<PostModel> userPostData = [
  PostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1468777675496-5782faaea55b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80',
    hotelName: 'Italian Dastrkhaa',
    streetName: 'Main Shahr-e-faisal karachi',
    loves: 0,
    comments: 0,
    friendList: true,
    likesFlag: false,
    postTime: '3',
    userModel: UserModel(
      userName: 'Chloe Hannouillie',
      ratingNum: '4',
      imageLink:
          'https://images.unsplash.com/photo-1589673644418-f8cb57a01d3f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    ),
    commentsList: <CommentModel>[],
  ),
  PostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1615865441757-e5328eb6a5ad?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    hotelName: 'Indus Waly',
    streetName: 'Clifton karachi',
    loves: 0,
    comments: 0,
    friendList: false,
    likesFlag: false,
    postTime: '4',
    userModel: UserModel(
      userName: 'Donalda Synedra',
      imageLink:
          'https://images.unsplash.com/photo-1597248374161-426f0d6d2fc9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
      ratingNum: '5',
    ),
    commentsList: <CommentModel>[],
  ),
  PostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1576398764960-f9d9e9071cda?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80',
    hotelName: 'Jasmine',
    streetName: 'Main korangi cross karachi',
    loves: 0,
    comments: 0,
    friendList: false,
    likesFlag: false,
    postTime: '1',
    userModel: UserModel(
      userName: 'Maria Lokhndy',
      imageLink:
          'https://images.unsplash.com/photo-1592677484740-4c40a559fce3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
      ratingNum: '3',
    ),
    commentsList: <CommentModel>[],
  ),
  PostModel(
    hotelImageLink:
        'https://images.unsplash.com/photo-1521305916504-4a1121188589?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80',
    streetName: 'Qalandri Burger',
    hotelName: 'Plot EE defence view phase II karchi',
    loves: 0,
    comments: 0,
    friendList: false,
    likesFlag: false,
    postTime: '1',
    userModel: UserModel(
      userName: 'Papa Ki Rani',
      imageLink:
          'https://media.gettyimages.com/photos/studio-portrait-of-a-beautiful-girl-picture-id1224234453?s=2048x2048',
      ratingNum: '2',
    ),
    commentsList: <CommentModel>[],
  ),
];

final List<ProfileDetailsImagesModel> profileDetailsImagesData = [
  ProfileDetailsImagesModel(
      imageLink:
          'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'),
  ProfileDetailsImagesModel(
      imageLink:
          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
  ProfileDetailsImagesModel(
      imageLink:
          'https://images.unsplash.com/photo-1559329007-40df8a9345d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'),
  ProfileDetailsImagesModel(
      imageLink:
          'https://images.unsplash.com/photo-1586999768265-24af89630739?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'),
];

List profileGridItemsData = [
  ProfileRestoListModel(
      imageLink:
          'https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2015/07/fruitSalad-98841227-770x533-1-650x428.jpg',
      ratingNum: '5',
      fruitName: 'Tropical Fruit',
      dishName: 'Greyish day'),
  ProfileRestoListModel(
      imageLink:
          'https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/health_tools/diet_fruit_sugar_slideshow/493ss_thinkstock_rf_fresh_mango_cubes_in_wooden_bowl.jpg',
      ratingNum: '4',
      fruitName: 'Orange Fruits',
      dishName: 'Portugecis'),
  ProfileRestoListModel(
      imageLink:
          'https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2015/07/fruitSalad-98841227-770x533-1-650x428.jpg',
      ratingNum: '5',
      fruitName: 'Springfield',
      dishName: 'States Dishes'),
  ProfileRestoListModel(
    imageLink:
        'https://images.chinahighlights.com/allpicture/2017/11/921000f9142441c7acb4e578_cut_800x500_61.jpg',
    ratingNum: '3',
    fruitName: 'Breakfast Dine',
    dishName: 'Costa Rica',
  ),
  ProfileRestoListModel(
      imageLink:
          'https://images.chinahighlights.com/allpicture/2017/11/921000f9142441c7acb4e578_cut_800x500_61.jpg',
      ratingNum: '3',
      fruitName: 'Breakfast Dine',
      dishName: 'Costa Rica'),
  ProfileRestoListModel(
      imageLink:
          'https://images.chinahighlights.com/allpicture/2017/11/921000f9142441c7acb4e578_cut_800x500_61.jpg',
      ratingNum: '3',
      fruitName: 'Breakfast Dine',
      dishName: 'Costa Rica'),
];

final List<RatingModel> ratingNum = [
  RatingModel(ratingNum: '1', flag: false),
  RatingModel(ratingNum: '2', flag: false),
  RatingModel(ratingNum: '3', flag: false),
  RatingModel(ratingNum: '4', flag: false),
  RatingModel(ratingNum: '5', flag: false),
];
