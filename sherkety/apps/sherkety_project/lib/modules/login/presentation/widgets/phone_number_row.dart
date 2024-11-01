import 'package:flutter/material.dart';
import '../../data/models/country_model.dart';

class PhoneNumberRow extends StatelessWidget {
  const PhoneNumberRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'رقم الهاتف...',
                hintStyle: const TextStyle(
                  color: Color(0xFFAAADB1),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xffAAADB1))),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xff003D79)),
                ),
              ),
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
              child: const Center(child: CountryDropdown()),
            ),
          ),
        ],
      ),
    );
  }
}

class CountryDropdown extends StatefulWidget {
  const CountryDropdown({super.key});

  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  Country selectedCountry =
      countries.firstWhere((country) => country.name == 'Egypt');

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<Country>(
        value: selectedCountry,
        elevation: 0,
        icon: const SizedBox.shrink(),
        onChanged: (Country? newCountry) {
          setState(() {
            selectedCountry = newCountry!;
          });
        },
        items: countries.map((Country country) {
          return DropdownMenuItem<Country>(
            value: country,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    Localizations.localeOf(context).languageCode == 'ar'
                        ? '${country.code}+'
                        : '+${country.code}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textDirection:
                        Localizations.localeOf(context).languageCode == 'ar'
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                    textAlign: TextAlign.center
                  ),
                ),
                const SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    country.flagPath,
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
