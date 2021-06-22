import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resto_friends_app/Widgets/search_widget.dart';
import 'package:resto_friends_app/Widgets/user_widgets.dart';
import 'package:resto_friends_app/models/models.dart';
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';

int rID;

class Comments extends StatefulWidget {
  Comments({@required this.postModel});
  final PostModel postModel;
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final enteredText = TextEditingController();

  void submitData() {
    setState(() {
      var myWidget = widget.postModel;
      if (rID == null) {
        myWidget.commentsList.add(CommentModel(
          commentId: widget.postModel.commentsList.length + 1,
          comment: enteredText.text.toString(),
        ));
      }
      if (rID != null) {
        var replies = myWidget.commentsList
                .firstWhere((element) => element.commentId == rID)
                .replyList ??
            [];
        replies.add(CommentModel(
          commentId: rID,
          comment: enteredText.text.toString(),
        ));

        myWidget.commentsList[rID - 1] = CommentModel(
            commentId: rID,
            comment: myWidget.commentsList
                .firstWhere((element) => element.commentId == rID)
                .comment,
            replyList: replies);
      }
      rID = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Comment List :: ${widget.postModel.commentsList}');
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  searchBar(),
                  userWidget(widget.postModel),
                  PostWidget(
                    model: widget.postModel,
                  ),
                  ListView.builder(
                      itemCount: widget.postModel.commentsList.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return widget.postModel.commentsList[index].comment !=
                                    null &&
                                widget.postModel.commentsList[index]
                                        .replyList !=
                                    null
                            ? Column(
                                children: [
                                  CommentMaker(
                                    postModel: widget.postModel,
                                    data: widget
                                        .postModel.commentsList[index].comment,
                                    index: index,
                                  ),
                                  ListView.builder(
                                      padding: EdgeInsets.only(left: 30.0),
                                      shrinkWrap: true,
                                      physics: ScrollPhysics(),
                                      itemCount: widget.postModel
                                          .commentsList[index].replyList.length,
                                      itemBuilder: (context, i) {
                                        return CommentMaker(
                                          index: i,
                                          postModel: widget.postModel,
                                          data: widget
                                              .postModel
                                              .commentsList[index]
                                              .replyList[i]
                                              .comment,
                                        );
                                      })
                                ],
                              )
                            : CommentMaker(
                                postModel: widget.postModel,
                                data: widget
                                    .postModel.commentsList[index].comment,
                                index: index,
                              );
                      })
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1594744803329-e58b31de8bf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80')),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Write a comment...',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onSubmitted: (_) => submitData(),
                        controller: enteredText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommentMaker extends StatefulWidget {
  CommentMaker({this.data, this.index, this.postModel});
  final String data;
  final int index;
  final PostModel postModel;
  @override
  _CommentMakerState createState() => _CommentMakerState();
}

class _CommentMakerState extends State<CommentMaker> {
  List<CommentMaker> list = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1594744803329-e58b31de8bf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80')),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                      text: TextSpan(
                          text: 'leo leung ',
                          style: TextStyles.montserratBold(
                              color: MyColors.indigo, fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                              text: widget.data,
                              style: TextStyles.montserratBold(
                                  color: MyColors.grey400, fontSize: 15),
                            ),
                            // TextSpan(
                            //   text: widget.replyModel.reply,
                            //   style: TextStyles.montserratBold(
                            //       color: MyColors.grey400, fontSize: 15),
                            // ),
                          ]),
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.favorite_outline,
                    color: MyColors.grey300,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Text(
                  '5h',
                  style: TextStyles.montserratBold(
                      color: MyColors.grey400, fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      rID =
                          widget.postModel.commentsList[widget.index].commentId;
                    });
                  },
                  child: Text(
                    'Reply',
                    style: TextStyles.montserratBold(
                        color: MyColors.grey400, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}