import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'module_16/CRUD/crud.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // ✅ fixed typo
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Batch-12',
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.deepPurple,
            primarySwatch: Colors.teal,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.orange, width: 1.5),
              ),
              hintStyle: const TextStyle(color: Colors.deepPurple),
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              titleMedium: TextStyle(fontSize: 16),
            ),
            cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.system,
          home: child, // ✅
        );
      },
      child: Crud(), // ✅
    );
  }
}
