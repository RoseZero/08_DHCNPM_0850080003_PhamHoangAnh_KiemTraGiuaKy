import 'package:flutter/material.dart';
import 'package:linnbooks/models/transaction.dart';
import 'package:linnbooks/widgets/transaction_item.dart';

class TabBarPart extends StatelessWidget {
  const TabBarPart({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
      //const SizedBox(height: 10.0),
      DefaultTabController(
        length: 2, // length of tabs
        initialIndex: 0,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: <Widget>[
        const TabBar(
          labelColor: Colors.green,
          unselectedLabelColor: Colors.black,
             labelPadding: EdgeInsets.zero,

          tabs: [
            Tab(text: 'Records'),
            Tab(text: 'Loans'),
          ],

        ),
          Container(
            height: 500, //height of TabBarView
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
            ),
            child: TabBarView(children: <Widget>[
                
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return TransactionItem(
                        transaction: transactions[index],
                      );
                    },
                    itemCount: transactions.length,
                  ),
                ),
                 Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return TransactionItem(
                        transaction: transactions[index],
                      );
                    },
                    itemCount: transactions.length,
                  ),
                ),

            ])
          )
        ])
      ),
    ]
    
    );
  }

}