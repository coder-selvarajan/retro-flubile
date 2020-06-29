import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:retroflubile/models/recent_apps_item.dart';

class RecentAppsData extends ChangeNotifier {
  static List<RecentAppsItem> recentAppItemList = [];

  UnmodifiableListView<RecentAppsItem> get recentApps =>
      UnmodifiableListView(recentAppItemList);

  void addToRecentList(RecentAppsItem recentAppsItem) {
    recentAppItemList.add(recentAppsItem);
    notifyListeners();
  }

  void removeFromRecentList(int index) {
    recentAppItemList.removeAt(index);
    notifyListeners();
  }

  bool isRecentAppPresent(RecentAppsItem recentAppsItem) {
    return recentAppItemList
        .any((element) => element.appName == recentAppsItem.appName);
  }
}
