import 'package:flutter/material.dart';
import 'contacts_text_styles.dart';

class DealersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 5.0),
      child: SingleChildScrollView(
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(
                  text: "Центральный федеральный округ\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ООО 'Т-Сервис'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (495) 128-08-90; +7 (800) 200-51-03\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.t-servis.pro\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: zakaz@tservis.pro\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Уральский федеральный округ\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ООО 'Уралспецтеплоремонт' (ООО 'УСТР')\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (343) 320-52-95; +7 (343) 320-48-21\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.ustr.ru\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: ustr@ustr.ru\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Южный и северо-кавказкий округ\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ООО 'Безопасные решения'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (3652) 77-71-12\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.siz155.ru\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: info@upcrimea.ru\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "СЕВЕРО-ЗАПАДНЫЙ ФЕДЕРАЛЬНЫЙ ОКРУГ\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ООО «Высота-СЗ»\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (911) 198-97-51\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.visota-sz.ru\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: info@visota-sz.ru\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "ООО 'Трудоголик РУС'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (812) 339-33-36\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.siz-opt.ru\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: info@siz-opt.ru\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "ХМАО-ЮГРА, ЯНАО, ТЮМЕНСКАЯ ОБЛАСТЬ\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ООО 'Высота-СИЗ'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (846) 989-55-00\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.visota-siz.ru\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: padalko@visota-siz.ru\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text:
                      "СВЕРДЛОВСКАЯ ОБЛАСТЬ / ПЕРМСКИЙ КРАЙ\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ООО 'Высота-А'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (922) 181-25-39\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.safetyrus.ru\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: anohinda@high-safety.com\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "ПРИВОЛЖСКИЙ ФЕДЕРАЛЬНЫЙ ОКРУГ\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ООО 'Спецкомплект-Самара'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "Тел.: +7 (846) 991-67-97\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.sk-samara.ru\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: info@sk-samara.ru\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "КАЗАХСТАН\n\n".toUpperCase(),
                  style: ContactsTextStyle.h1(context)),
              TextSpan(
                  text: "ТОО 'АЛЬПКОНТРАКТ'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "г.Алматы, мкр-н Таугуль-1, д.14А, оф.406\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Тел.: +7 (727) 341-03-20\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.sizcontract.kz\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: info@sizcontract.kz\n\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "ТОО 'Global-Safety'\n",
                  style: ContactsTextStyle.h2(context)),
              TextSpan(
                  text: "г.Актобе, ул.Газизы Жубановой, д.3Ж\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Тел.: +7(7132) 57-23-63\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "Web: www.global-specodezhda.kz\n",
                  style: ContactsTextStyle.h3(context)),
              TextSpan(
                  text: "E-mail: info@globalsafety.kz\n\n",
                  style: ContactsTextStyle.h3(context)),
            ],
          ),
        ),
      ),
    );
  }
}
