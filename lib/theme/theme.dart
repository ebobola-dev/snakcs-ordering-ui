import 'package:flutter/material.dart';
import 'package:snacks_ordering/theme/themes.dart';

ThemeData getThemeData(BuildContext context, MyTheme theme) =>
    ThemeData.light().copyWith(
      primaryColor: theme.primary,
      secondaryHeaderColor: theme.secondary,
      backgroundColor: theme.background,
      scaffoldBackgroundColor: theme.background,
      dividerColor: const Color.fromRGBO(220, 220, 220, 1),
      iconTheme: IconThemeData(color: theme.text),
      textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Gilroy',
            bodyColor: theme.text,
          ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: theme.secondary,
        iconTheme: IconThemeData(color: theme.text),
        titleTextStyle: TextStyle(
          color: theme.text,
          fontFamily: "Gilroy",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(cursorColor: theme.text),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontFamily: "Gilroy",
          ),
          primary: theme.primary,
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          onSurface: MyTheme.disable,
          shadowColor: theme.primary,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            fontFamily: "Gilroy",
            color: theme.primary,
          ),
        ),
      ),
      colorScheme: ColorScheme.light(
        brightness: theme.brightness,
        primary: theme.primary,
        secondary: theme.secondary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontFamily: 'SF Pro Text',
          fontSize: 17.0,
        ),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        fillColor: MyTheme.disable.withOpacity(.16),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: MyTheme.chip,
        deleteIconColor: theme.primary,
        shadowColor: Colors.black,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: theme.snack,
        contentTextStyle: TextStyle(
          fontSize: 16.0,
          fontFamily: "Gilroy",
          color: theme.secondary,
        ),
      ),
      dialogBackgroundColor: theme.background,
      dialogTheme: const DialogTheme(
        alignment: Alignment.center,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
