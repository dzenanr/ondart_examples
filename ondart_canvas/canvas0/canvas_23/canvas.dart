import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.font = 'italic 40pt Calibri';
  context.fillText('Canvas Examples', 150, 100);
}


