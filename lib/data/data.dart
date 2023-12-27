import 'dart:ui';

import 'package:effective_flutter_lab/themes/colors.dart';
import 'package:effective_flutter_lab/models/subscription_model.dart';
import 'package:effective_flutter_lab/models/custom_tile_model.dart';

import 'package:flutter/material.dart';
class MyData{
  static List<CustomTileModel> tariffsAndLimitsList =
  [
    const CustomTileModel(
        ico: 'assets/svg/speedometer.svg',
        title: 'Изменить суточный лимит',
        subtitle: 'На платежи и переводы'
    ),
    const CustomTileModel(
        ico: "assets/svg/percent.svg",
        title: "Переводы без комиссии",
        subtitle: "Показать остаток в этом месяце"
    ),
    const CustomTileModel(
        ico: "assets/svg/arrows_forward_back.svg",
        title: "Информация о тарифахи лимитах",
        subtitle: ""
    ),

  ];

  static List<SubscriptionModel> subscriptions =
  [
    const SubscriptionModel(
        ico: 'assets/svg/sber_ico.svg',
        name: 'СберПрайм',
        title: 'Платеж 9 июля',
        subtitle: '199Р в месяц'
    ),
    const SubscriptionModel(
        ico: 'assets/svg/percent_fill.svg',
        name: 'Переводы',
        title: 'Автопродление 21 августа',
        subtitle: '199Р в месяц'
    ),
    const SubscriptionModel(
        ico: 'assets/svg/percent_fill.svg',
        name: 'Плати налоги',
        title: 'Автопродление завтра',
        subtitle: '299Р в день'
    ),
  ];

  static List<String> tagslist =
  [
    'Еда',
    'Саморазвитие',
    'Технологии',
    'Дом',
    'Досуг',
    'Забота о себе',
    'Наука',
  ];
  static Map<String, bool> getTagsMap (){
    return { for (var v in tagslist) v : false };
  }
  static Map<String, bool> tags = getTagsMap();
}

class MyStrings {
  static const username = "Екатерина";

  static const navBarPage1 = "Профиль";
  static const navBarPage2 = "Настройки";

  static const title1 = "У вас подключено";
  static const subtitle1 = "Подписки, автоплатежи и сервисы на которые вы подписались";

  static const title2 = "Тарифы и лимиты";
  static const subtitle2 = "Для операций в Сбербанк Онлайн";

  static const title3 = "Интересы";
  static const subtitle3 = "Мы подбираем истории и предложения по темам, которые вам нравятся";
}

class MyTextStyles {
  static const username = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const cardName = TextStyle(
      color: MyColors.textTitleColor,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: -0.4
  );

  static const cardTitle = TextStyle(
      color: MyColors.textTitleColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: -0.406
  );

  static const cardSubtitle = TextStyle(
      color: MyColors.textSubtitleColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: -0.406
  );

  static const customTileTitle = TextStyle(
      color: MyColors.textTitleColor,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: -0.4
  );

  static const customTileSubtitle = TextStyle(
      color: MyColors.textSubtitleColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: -0.406
  );

  static const title = TextStyle(
      color: MyColors.textTitleColor,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      letterSpacing: -0.7
  );

  static const subtitle = TextStyle(
      color: MyColors.textSubtitleColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: -0.42
  );

  static const chip = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: -0.406
  );

  static const tabBar = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: -0.4
  );



}
