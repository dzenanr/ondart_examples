import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.moveTo(188, 150);
  context.quadraticCurveTo(288, 0, 388, 150);
  context.lineWidth = 8;
  context.strokeStyle = 'yellow';
  context.stroke();
}


