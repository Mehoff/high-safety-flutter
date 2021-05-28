import 'package:flutter/material.dart';
import '../components/contacts_tabs/office_tab.dart';
import '../components/contacts_tabs/production_tab.dart';
import '../components/contacts_tabs/dealers_tab.dart';

// Страничка контактов

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // АппБар это верхний участок экрана где написано "Контакты" и есть стрелочка "Назад"
        appBar: AppBar(
          backgroundColor: Colors.orange,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              // Табы для пролистывания
              Tab(text: 'Офис'),
              Tab(text: 'Производство'),
              Tab(text: 'Диллеры'),
            ],
          ),
          // Надпись контакты
          title: Text('Контакты'),
        ),
        body: TabBarView(
          children: [
            
            // Тут в том же порядке в котором были указаны табы для пролистывания,
            // Указываются виджеты с содержимым этого таба.
            // Содержимого каждого таба я закинул в отдельные Виджеты
            // lib/components/contact_tabs

            // Не буду описывать там каждый класс, они похожи:
            // contacts_text_styles.dart - соответственно статический класс
            // который возвращает объект стиля для текста, нужен чтобы удобно
            // кастомизировать текст в табах

            // SingleChildScrollView Это виджет который позволяет "листать" экран
            // RichText и RichSpan это кусочки из которых мы собираем текст
            // Для отображения
            // style: ContactsTextStyle.h1(context) используем статический метод
            // из нашего класса contacts_text_styles.dart
            
            OfficeTab(),
            ProductionTab(),
            DealersTab(),
          ],
        ),
      ),
    );
  }
}
