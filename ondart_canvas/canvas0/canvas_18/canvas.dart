import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement woodPattern = document.query('#wood_pattern');
  var pattern = context.createPattern(woodPattern, 'repeat');

  context.rect(0, 0, canvas.width, canvas.height);
  context.fillStyle = pattern;
  context.fill();
}


