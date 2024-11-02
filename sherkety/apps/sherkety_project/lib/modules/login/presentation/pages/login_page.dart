import 'package:flutter/material.dart';
import 'package:sherkety/modules/login/presentation/pages/create_password_page.dart';
import '../../../../core/app_style/colors.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/country_dropdown.dart';
import 'forget_password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  SizedBox(height: 68),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'مرحبا بعودتك!',
                style: TextStyle(
                  color: AppColors.greenColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'يسعدنا رؤيتك مرة أخرى!',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 68,
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: CustomTextField(
                      hintText: 'رقم الهاتف...',
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffF0F1F5),
                        ),
                      ),
                      child:  Center(
                        child: CountryDropdown(
                          onCountryChanged: (country){},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            CustomTextField(
              hintText: 'رقم الهاتف...',
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ForgetPasswordPage()),
                  );
                },
                child: Text(
                  'نسيت كلمة السر؟',
                  style: TextStyle(
                    color: AppColors.darkBlueColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            CustomButton(
              text: 'دخول',
            ),
            SizedBox(height: 24),
            OrDivider(),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                    child:
                        SocialMediaIcon(icon: 'assets/images/Social icon.png')),
                SizedBox(width: 16),
                Expanded(
                    child:
                        SocialMediaIcon(icon: 'assets/images/cib_apple.png')),
                SizedBox(width: 16),
                Expanded(
                    child:
                        SocialMediaIcon(icon: 'assets/images/google_ic.png')),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ليس لديك حساب؟',
                  style: TextStyle(
                    color: Color(0xff2E3233),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'سجل الان',
                  style: TextStyle(
                    color: Color(0xff4A42EB),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xffD8DCE3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'او اشترك باستخدام',
            style: TextStyle(
              color: Color(0xff6A7A7C),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xffD8DCE3),
          ),
        ),
      ],
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      cursorColor: Color(0xff003D79),
      decoration: InputDecoration(
        hintText: 'كلمة السر',
        hintStyle: TextStyle(
          color: Color(0xFFAAADB1),
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xffAAADB1))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xff003D79)),
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final String icon;

  const SocialMediaIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
          color: Color(0xffF5F6FA),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xffD8DCE3),
          )),
      child: Image.asset(
        icon,
      ),
    );
  }
}
