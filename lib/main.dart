import 'package:flutter/material.dart';
import 'package:flutter_basic/RowWidget.dart';
import 'package:flutter_basic/ColumnWidget.dart';
import 'package:flutter_basic/ItemSelectionScrollingListView.dart';
import 'package:flutter_basic/NavigateToNewScreen.dart';
import 'package:flutter_basic/BottomNavigationWidget.dart';
import 'package:flutter_basic/TextBasic.dart';

import 'ScrollingListView.dart';

void main() {
  /******************************
   * Text related example with RandomWords Library
   * */
  //  runApp(TextBasic());

  /******************************
   * Learn scrolling listview with RandomWords Library
   * */
  //  runApp(ScrollingListView());

  /******************************
   * Single item selection from scrolling listview
   * */
  //  runApp(ItemSelectionScrollingListView());

  /******************************
   * Learn how to navigate between the home route and the new route.
   * */
  //  runApp(NavigateToNewScreen());

  /******************************
   * BottomNavigation
   * */
  //  runApp(BottomNavigationWidget());

  /******************************
   * Learn Row widget with no. of children widget.
   * */
  //  srunApp(RowWidget());

  /******************************
   * Learn Row widget with no. of children widget.
   * */
  runApp(ColumnWidget());
}
