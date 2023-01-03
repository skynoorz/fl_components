import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://images.theoutbound.com/uploads/1409240279880/pzozm86m91ux47vi/03460ef5b7c07b97816071b2194d0b42?w=900&fit=crop&dpr=2',
          ),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://www.goworldtravel.com/wp-content/uploads/2020/03/travel-landscapes-usa.jpg',
          ),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://www.muchbetteradventures.com/magazine/content/images/2019/10/29122602/iStock-971053374.jpg',
            name: 'Paisaje',
          ),
        ],
      ),
    );
  }
}
