// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _CustomAppBar(),
        bottomNavigationBar: const _CustomNavBar(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            const _DiscoverMusic(),
            Column(
              children: [
                SectionHeader(title: 'Trending Music'),
              ],
            )
          ],
        )),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.action ='View More',
  });
final String title;
final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          action,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Welcome', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 5),
          Text(
            'Enjoy your favorite music',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ]));
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple.shade800,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Profile',
          )
        ]);
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/rP4pJ-9bKoG19-lwWGC8s4gREabrlxbZ2T90gDXFSRm1FNYSJyNDL9clvxfR2lIdNoepRPbTVbpAqkNLYGEUUrz2ytUDX_RbxTj0vn752SV-uMCRvL1r4VIgGfrBfwDqmmVo2rjUH-zDSqxmM3Ja_TGnA52jno24fAqp2dlvnyjsjSrSbXGfXDZrkaT1xe44_jPl8rfA9CeOxuKYtb92pmNMcyJ4ajAEXeWInn_yygF_5fpx-8sc4CKBFMjj3M3zcze0Gj6Ln6DtCtsYimKzPDOZnKh8WD9nqYB-OzQXIA2SxTVMQ1skZI9_MTEyBbav6Du4zIeOGwQWQq8B4pARcxWBOs2fHsBb9VdknSWBDRCodkt8zghR--Qxfo75tUqtc-PS4YV84JtLTj4ntgkeyMfvbOvVKitTC1VDjnHOZfwpfvgvq8goNg-uFKPu2gmV74l1kh1Oebmxv0fJDjjphl33tutdeuUYm75Fsn5_kYuaGbtaB1LQHA2iLcBlvfP7gKC2Bps_pPdSv7hWVpPfZLWw_gvkEbqhuiZLsGxGQWD3RRrmUsoQiwBk2fa2vVbzDesTBna4eD2cligLTz_oY3HC8_QnokllG-P9LpCWMqCMorTlAWgj9u3UTQohcD-Lafu6V0k08S8fmKO9186Y_hI5viMwuRIRNEvKv5j1Mjj1Im5QiRHa67hM064PVR-EmyWNZCfgOFu3xA7FRQtufny0m2_c4bPK4XrGem__XzrzQ2jGmsZ9Xi05GMhjxguTdGn8iAo6sMxcWLm8bwdGbO17S5rriYFAC61N-YbnbyE4F_Zh8fzASf7uDaL1_69ObRbEcNFbyeBQsLKh7jDa4GXPIQ4ph622lYGwPkFjR1cpRMRxbQ-Ow1SIbyYbGrqUyKKQQgmv1VlbAf02gi2RX4WQCC5GgB_dI2-6q0PI4pkLjg4RAFcX0JL9B2QhCdHDBovgyxXUpqJZWCXd7SrUjQEEDitUXtE-EGoK0xFMqFbJEmSq0gI3eWG0e7Lkk6VAmNa9F37r-RfQHUpEtcWFjHQgJQ=w364-h485-no?authuser=0'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
