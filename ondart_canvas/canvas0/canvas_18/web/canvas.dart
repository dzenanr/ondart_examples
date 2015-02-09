import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement woodPattern = document.querySelector('#wood_pattern');
  var pattern = context.createPatternFromImage(woodPattern, 'repeat');

  context.rect(0, 0, canvas.width, canvas.height);
  context.fillStyle = pattern;
  context.fill();
}


