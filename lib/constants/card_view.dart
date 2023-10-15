import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String imageUrl;
  final String heading;
  final String description;
  final String categories;

  const CardView({super.key,
    required this.imageUrl,
    required this.heading,
    required this.description,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(15, 12, 0, 12),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.45,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(232, 243, 233, 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl, // Use the provided image URL
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 4),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                      child: Icon(
                        Icons.verified,
                        color: Color(0xFF57636C),
                        size: 24,
                      ),
                    ),
                    Text(heading), // Use the provided heading text
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                child: Text(description), // Use the provided description text
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                child: Text(categories), // Use the provided categories number
              ),
            ],
          ),
        ),
      ),
    );
  }
}