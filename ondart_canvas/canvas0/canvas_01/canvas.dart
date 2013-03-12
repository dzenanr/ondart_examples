import 'dart:html';

// based on: 
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  // line
  context.moveTo(100, 150);
  context.lineTo(450, 50);
  context.stroke();
}


