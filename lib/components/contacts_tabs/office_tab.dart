import 'package:flutter/material.dart';
import 'contacts_text_styles.dart';

class OfficeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 5.0),
      //child: Center(
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: [
            TextSpan(text: 'Адрес: \n', style: ContactsTextStyle.h2(context)),
            TextSpan(
                text:
                    '125424, г. Москва, Волоколамское шоссе, д.73, офис 707\n\n',
                style: ContactsTextStyle.h3(context)),
            TextSpan(text: 'Телефон: \n', style: ContactsTextStyle.h2(context)),
            TextSpan(
                text: '+7 (495) 998-13-15\n\n',
                style: ContactsTextStyle.h3(context)),
            TextSpan(
                text: 'Отдел продаж: \n', style: ContactsTextStyle.h2(context)),
            TextSpan(
                text: '+7 (985) 998-13-15\n\n',
                style: ContactsTextStyle.h3(context)),
            TextSpan(text: 'E-mail: \n', style: ContactsTextStyle.h2(context)),
            TextSpan(
                text: 'info@high-safety.com',
                style: ContactsTextStyle.h3(context)),
          ],
        ),
      ),
      //),
    );
  }
}
