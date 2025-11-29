import 'package:flutter/material.dart';


class AppColors {
  // --- Basic Colors ---
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF9E9E9E); // Standard material grey
// Grey with 10% opacity (0.1) - Ideal for very light dividers or shadows.
  static final Color grey10 = black.withValues(alpha: 0.1);

  /// Grey with 30% opacity (0.3) - Good for subtle overlay or disabled states.
  static final Color grey30 = black.withValues(alpha: 0.3);

  /// Grey with 50% opacity (0.5) - Useful for placeholder text or overlays.
  static final Color grey50 = black.withValues(alpha: 0.5);

  /// Grey with 70% opacity (0.7) - Suitable for body text or active overlays.
  static final Color grey70 = black.withValues(alpha: 0.7);
  // --- Primary/Accent Colors ---

  /// Special text color (FC6E2A) - Often used for accents or links.
  static const Color specialText = Color(0xFFFC6E2A);

  /// Add Button Color (F58D1D) - Primary action color.
  static const Color addButton = Color(0xFFF58D1D);

  /// Star Rating Color (FF7622) - Used for highlighting ratings/scores.
  static const Color starRating = Color(0xFFFF7622);

  // --- UI Component Colors ---

  /// Cart Icon Color (181C2E) - Dark, deep UI element color.
  static const Color cartIcon = Color(0xFF181C2E);

  /// Cart Page Background Color (121223) - Very dark background for a specific page.
  static const Color cartPageBackground = Color(0xFF121223);

  /// Shimmer Container Color (98A8B8) - Light grey/blue for loading placeholders.
  static const Color shimmerContainer = Color(0xFF98A8B8);
  static const Color cartItemColor = Color(0xff2A2A39);
  static const Color appBar = Color(0xFFFF9800); // Orange
  static const Color secondaryBackground = Color(0xFF2E2E2E);
  static const Color textLight = Colors.white;
  static const Color textDark = Colors.black87;
  static const Color hintText = Colors.grey;
  // --- Action Colors ---

  /// Done/Success Button Color (059C6A) - Green for confirmation/success actions.
  static const Color doneButton = Color(0xFF059C6A);

  /// Cancel Button Color (E04444) - Red for destructive/cancellation actions.
  static const Color cancelButton = Color(0xFFE04444);
}