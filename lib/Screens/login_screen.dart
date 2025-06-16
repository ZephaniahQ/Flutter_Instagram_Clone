import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback show;
  const LoginScreen(this.show, {super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();

  final password = TextEditingController();
  FocusNode password_F = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(width: 96.w, height: 100.h),
            Center(
              child: Image.asset('images/logo.jpg'),
            ),
            SizedBox(
              height: 120.h,
            ),
            textField(email, Icons.email, 'Email', email_F),
            SizedBox(
              height: 10.h,
            ),
            textField(password, Icons.lock, 'Password', password_F),
            SizedBox(
              height: 10.h,
            ),
            forgot(),
            SizedBox(
              height: 10.h,
            ),
            login(),
            haveAccount()
          ],
        )));
  }

  Widget haveAccount() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Don't have an account? ",
            style: TextStyle(color: Colors.grey, fontSize: 13.sp),
          ),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              "Signup  ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget login() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10.r)),
        child: Text(
          "Log in",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23.sp),
        ),
      ),
    );
  }

  Widget forgot() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Text(
        'Forgot your password?',
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13.sp),
      ),
    );
  }

  Widget textField(TextEditingController controller, IconData icon, String type,
      FocusNode focusNode) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
        child: TextField(
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
              hintText: type,
              prefixIcon: Icon(
                icon,
              ),
              contentPadding: EdgeInsets.only(left: 15.w),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(color: Colors.grey, width: 2.w),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(color: Colors.black, width: 2.w),
              )),
        ),
      ),
    );
  }
}
