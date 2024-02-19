/// Enum of expected design modes for the application
enum DesignMode {
  /// An Android device. Used by default.
  material('material'),

  /// An iOS device. It will also be when launching the application on MacOs.
  cupertino('cupertino');

  const DesignMode(this.name);
  final String name;

  static DesignMode fromString(
    final String value, {
    final DesignMode? fallback,
  }) =>
      switch (value) {
        'material' => material,
        'cupertino' => cupertino,
        _ when fallback != null => fallback,
        _ => throw ArgumentError.value(
            value,
            'DesignMode $value is not provided!',
          ),
      };
}
