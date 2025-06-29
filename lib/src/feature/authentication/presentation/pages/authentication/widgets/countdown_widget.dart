import 'dart:async'; // Nécessaire pour utiliser Timer
import 'package:flutter/material.dart';

class CountdownWidget extends StatefulWidget {
  final Duration duration; // La durée totale du compte à rebours
  final VoidCallback?
  onFinished; // Callback optionnel quand le compte à rebours est terminé

  const CountdownWidget({Key? key, required this.duration, this.onFinished})
    : super(key: key);

  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  late Timer _timer; // Le minuteur pour mettre à jour le compte à rebours
  late Duration _currentDuration; // La durée restante actuelle

  @override
  void initState() {
    super.initState();
    _currentDuration = widget
        .duration; // Initialise la durée avec la durée passée en paramètre
    _startTimer(); // Démarre le compte à rebours dès l'initialisation
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1), // Appelle le callback toutes les secondes
      (timer) {
        setState(() {
          if (_currentDuration.inSeconds > 0) {
            _currentDuration =
                _currentDuration -
                const Duration(seconds: 1); // Décrémente d'une seconde
          } else {
            _timer.cancel(); // Arrête le minuteur quand le temps est écoulé
            if (widget.onFinished != null) {
              widget.onFinished!(); // Appelle le callback si fourni
            }
          }
        });
      },
    );
  }

  // Formate la durée restante en HH:MM:SS
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    // Si la durée est supérieure à une heure, affiche aussi les heures
    if (duration.inHours > 0) {
      return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
    } else {
      return '$twoDigitMinutes:$twoDigitSeconds';
    }
  }

  @override
  void dispose() {
    _timer
        .cancel(); // Très important : annuler le minuteur pour éviter les fuites de mémoire
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _formatDuration(_currentDuration) + ' secondes',
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        decorationThickness: 1.0,
      ),
    );
  }
}
