import 'package:flutter/material.dart';
import '../components/contacts_tabs/office_tab.dart';
import '../components/contacts_tabs/production_tab.dart';
import '../components/contacts_tabs/dealers_tab.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Офис'),
              Tab(text: 'Производство'),
              Tab(text: 'Диллеры'),
            ],
          ),
          title: Text('Контакты'),
        ),
        body: TabBarView(
          children: [
            OfficeTab(),
            ProductionTab(),
            DealersTab(),
          ],
        ),
      ),
    );
  }
}
