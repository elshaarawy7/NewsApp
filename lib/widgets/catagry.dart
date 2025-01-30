import 'package:flutter/material.dart';

class CatagryCard extends StatelessWidget {
  const CatagryCard({
    required this.imag ,
    required this.text ,
    required this.onTap ,
     });
   
   final String text ;
   final String imag;
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120 ,
        width: 175, 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imag),
            fit: BoxFit.cover
          ) ,
        ), 
        child: Stack(
        children: [
          // طبقة شبه شفافة
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          // النص فوق الطبقة
          Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ]
      ),
      
    ),
    );
  }
}