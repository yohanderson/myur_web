import 'package:flutter/material.dart';

class LodgingsMobile extends StatefulWidget {
  const LodgingsMobile({super.key});

  @override
  State<LodgingsMobile> createState() => _LodgingsMobileState();
}

class _LodgingsMobileState extends State<LodgingsMobile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 250,
          width: 280,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2,2),
                  blurRadius: 15,
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                )
              ],
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.onPrimary
          ),
          child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('Alojamientos',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),),
              ),
              Icon(Icons.construction, size: 100, color: Theme.of(context).textTheme.bodyMedium?.color),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Mantenimiento',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
              ),
            ],
          ))),
    );
  }
}
