import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.font = 'italic 40pt Calibri';
  context.fillText('Canvas Examples', 150, 100);
}


