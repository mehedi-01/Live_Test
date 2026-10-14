import 'package:flutter/material.dart';

class BloodDetailsPage  extends StatelessWidget {
  const BloodDetailsPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFFF7F7F7),
        title: Text('Blood Requests',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.bold,

          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            bloodCard('O-', '3 Units'),
            const SizedBox(height: 20),
            bloodCard('O+', '2 Units'),

          ],
        ),

    );
  }
  Widget bloodCard (String group, String units){
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: const Border(
          left: BorderSide(
            color: Colors.red,
            width: 4,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ]

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
          ),
            decoration: BoxDecoration(
              color: const Color(0xFFFFE5E8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text('URGENT',
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            ) ,
          ),
          Row(
            children: [
              Icon(Icons.water_drop,
                color: Colors.red,
                size: 14,
              ),
              SizedBox(width: 5),
              Text(
                units,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),

            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            '$group Blood Needed',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          SizedBox(height: 18),

          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.blueGrey,
                size: 20,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Khulna City Medical College Hospital, KDA Ave...',
                  maxLines: 1,
                  overflow: .ellipsis,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox( height: 16),
            ],

          ),
          SizedBox(
            width: double.infinity,
            height: 24,
            child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF071536),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child:Text(
                'View Details',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ) ,
            ),
          ),
        ],

      ),


    );
  }
}
