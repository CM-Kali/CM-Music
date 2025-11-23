class SongModel {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String path;
  final Duration duration;
  final String? albumArt;

  SongModel({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.path,
    required this.duration,
    this.albumArt,
  });

  // Convert to JSON for storage
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'artist': artist,
      'album': album,
      'path': path,
      'duration': duration.inMilliseconds,
      'albumArt': albumArt,
    };
  }

  // Create from JSON
  factory SongModel.fromJson(Map<String, dynamic> json) {
    return SongModel(
      id: json['id'],
      title: json['title'],
      artist: json['artist'],
      album: json['album'],
      path: json['path'],
      duration: Duration(milliseconds: json['duration']),
      albumArt: json['albumArt'],
    );
  }

  // Copy with method for updates
  SongModel copyWith({
    String? id,
    String? title,
    String? artist,
    String? album,
    String? path,
    Duration? duration,
    String? albumArt,
  }) {
    return SongModel(
      id: id ?? this.id,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      album: album ?? this.album,
      path: path ?? this.path,
      duration: duration ?? this.duration,
      albumArt: albumArt ?? this.albumArt,
    );
  }

  @override
  String toString() {
    return 'SongModel($title by $artist)';
  }
}