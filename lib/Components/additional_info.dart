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
          children: [
            AdditionalInformationCard(),
            AdditionalInformationCard(),
            AdditionalInformationCard()
          ],
        )
      ],
    );
  }
}

class AdditionalInformationCard extends StatelessWidget {
  const AdditionalInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 120,
      child: Column(
        children: [
          Icon(
            Icons.water_drop_rounded,
            size: 48,
          ),
          SizedBox(height: 8,),
          Text(
            "Humidity",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8,),
          Text(
            "94",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
