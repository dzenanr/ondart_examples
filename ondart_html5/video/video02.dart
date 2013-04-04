import 'dart:html';

VideoElement video;

void main() {
  video = query('#video');
  video.loop = true;
}

