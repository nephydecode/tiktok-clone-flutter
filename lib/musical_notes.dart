import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class MusicalNotes extends StatefulWidget {
  const MusicalNotes({Key key}) : super(key: key);

  @override
  _MusicalNotesState createState() => _MusicalNotesState();
}

class _MusicalNotesState extends State<MusicalNotes> {
  final _musicTrack = 'music_track.riv';
  Artboard _riveArtboard;

  @override
  void initState() {
    // TODO: implement initState
    _loadRiveFile();
    super.initState();
  }

  void _loadRiveFile() async {
    final bytes = await rootBundle.load(_musicTrack);
    final file = RiveFile();
    if (file.import(bytes)) {
      setState(() => _riveArtboard = file.mainArtboard
        ..addController((SimpleAnimation('Tiktok Track'))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:80,
      child: Container(
          child: _riveArtboard != null
              ? Rive(artboard: _riveArtboard)
              : Container()),
    );
  }
}
