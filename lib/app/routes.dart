import 'package:get/get.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/player_page.dart';
import '../presentation/pages/playlist_page.dart';
import '../presentation/controllers/music_controller.dart';

class AppRoutes {
  // Prevent instantiation
  AppRoutes._();

  // Route names as constants
  static const String home = '/';
  static const String player = '/player';
  static const String playlist = '/playlist';

  // All app routes
  static final List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const HomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<MusicController>(() => MusicController());
      }),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: player,
      page: () => const PlayerPage(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: playlist,
      page: () => const PlaylistPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];

  // Navigation helper methods
  static void toHome() => Get.offAllNamed(home);

  static void toPlayer() => Get.toNamed(player);

  static void toPlaylist() => Get.toNamed(playlist);

  static void back() {
    if (Get.currentRoute != home) {
      Get.back();
    }
  }

  // Navigate with arguments
  static void toPlayerWithSong(dynamic songData) {
    Get.toNamed(player, arguments: songData);
  }

  static void toPlaylistWithData(dynamic playlistData) {
    Get.toNamed(playlist, arguments: playlistData);
  }
}