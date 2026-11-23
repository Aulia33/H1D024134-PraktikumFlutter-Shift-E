import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final String? description;
  final VoidCallback? okClick;

  const SuccessDialog({super.key, this.description, this.okClick});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 6.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "SUKSES",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFF4CAF50), // Hijau sesuai screenshot
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              description ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.black87,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 20.0),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  if (okClick != null) {
                    okClick!();
                  }
                },
                child: const Text(
                  "OK",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
