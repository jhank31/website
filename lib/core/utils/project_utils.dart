/// {@template project_utils}
/// The project utils for the application.
/// {@endtemplate}
class ProjectUtils {
  /// The image of the project.
  final String image;
  /// The title of the project.
  final String title;
  /// The description of the project.
  final String description;
  /// The Android URL of the project.
  final String? androidUrl;
  /// The iOS URL of the project.
  final String? iosUrl;
  /// The web URL of the project.
  final String? webUrl;

  /// {@macro project_utils}
  ProjectUtils({
    required this.image,
    required this.title,
    required this.description,
    this.androidUrl,
    this.iosUrl,
    this.webUrl,
  });
}


