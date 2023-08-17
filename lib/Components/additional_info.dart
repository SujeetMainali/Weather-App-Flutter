import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Additional Information",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AdditionalInformationCard(iconData:Icons.water_drop_rounded,condition: "Humidity", conditionMeasure: "94", ),
            AdditionalInformationCard(iconData: Icons.air, condition: "Wind Speed", conditionMeasure: "7.67",),
            AdditionalInformationCard(iconData: CupertinoIcons.cloud_rain_fill, condition: "Raining", conditionMeasure: "7.67mm",)
          ],
        )
      ],
    );
  }
}

class AdditionalInformationCard extends StatelessWidget {
   final IconData iconData;
  final String condition;
  final String conditionMeasure;
  const AdditionalInformationCard({super.key,  required this.iconData, required this.condition, required this.conditionMeasure});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            iconData,
            size: 48,
          ),
        //  const  SizedBox(height: 8,),
          Text(
            condition,
            style: const TextStyle(fontSize: 16),
          ),
        //  const  SizedBox(height: 8,),
          Text(
          conditionMeasure,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
