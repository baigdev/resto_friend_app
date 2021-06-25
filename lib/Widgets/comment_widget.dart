import 'package:flutter/material.dart';
import 'package:resto_friends_app/models/models.dart';
import 'package:resto_friends_app/utils/colors.dart';
import 'package:resto_friends_app/utils/text_styles.dart';
import 'package:resto_friends_app/utils/const.dart';
import 'package:resto_friends_app/screens/comment/comment_screen.dart';

class CommentWidget extends StatefulWidget {
  CommentWidget({this.postModel, this.screenChangeCallBack});
  final PostModel postModel;
  final Function screenChangeCallBack;
  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (widget.postModel.likesFlag == false) {
                        setState(() {
                          widget.postModel.loves = widget.postModel.loves + 1;
                          widget.postModel.likesFlag = true;
                        });
                      } else if (widget.postModel.likesFlag == true) {
                        setState(() {
                          widget.postModel.loves = widget.postModel.loves - 1;
                          widget.postModel.likesFlag = false;
                        });
                      }
                    });
                  },
                  child: Icon(
                    widget.postModel.likesFlag
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    size: 35,
                    color: MyColors.red,
                  ),
                ),
                Text(
                  '${widget.postModel.loves}',
                  style: TextStyles.montserratBold(
                      color: MyColors.indigo,
                      fontSize: WidgetSizes.boldTextSize),
                ),
              ],
            ),
            GestureDetector(
              onTap: widget.screenChangeCallBack,
              child: Row(
                children: [
                  Icon(
                    Icons.comment_bank,
                    color: MyColors.grey400,
                  ),
                  Text(
                    '${widget.postModel.comments} comments',
                    style: TextStyles.montserratBold(
                        color: MyColors.grey400,
                        fontSize: WidgetSizes.lightTextSize),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.more_vert,
              color: MyColors.grey400,
            ),
          ],
        ),
      ),
    );
  }
}
