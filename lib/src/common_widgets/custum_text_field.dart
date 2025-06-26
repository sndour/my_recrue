import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final String initialValue;
  const CustomTextField({super.key, required this.hintText, required this.initialValue});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _focusNode.addListener(_onFocusChange);
    // Assurez-vous que l'état initial du focus est correct si le contrôleur a du texte
    _isFocused = _focusNode.hasFocus || _controller.text.isNotEmpty;
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Détermine si le hint doit flotter (quand il y a du texte ou le focus)
    // Nous mettons à jour la logique pour inclure le focus
    final bool _shouldFloatHint = _controller.text.isNotEmpty || _isFocused;

    // Détermine la couleur de la bordure en fonction du focus
    final Color _borderColor = _isFocused ? context.theme.colorScheme.primary : Colors.grey.shade400;
    // Détermine l'épaisseur de la bordure en fonction du focus (optionnel, pour un effet plus marqué)
    final double _borderWidth = _isFocused ? 1.5 : 1.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: _borderColor, // Couleur de la bordure dynamique
          width: _borderWidth, // Épaisseur de la bordure dynamique
        ),
        boxShadow: [

        ],
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
            top: _shouldFloatHint ? 0 : 12,
            left: 0,
            child: Text(
              widget.hintText,
              style: TextStyle(
                color:Colors.grey.shade600, // Couleur par défaut
                fontSize: _shouldFloatHint ? 12 : 16,
              ),
            ),
          ),
          // Champ de texte principal
          Padding(
            padding: EdgeInsets.only(top: _shouldFloatHint ? 16 : 0),
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}