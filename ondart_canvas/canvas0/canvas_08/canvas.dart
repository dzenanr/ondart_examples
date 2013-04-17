import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.moveTo(100, 20);

  // line 1
  context.lineTo(200, 160);

  // quadratic curve
  context.quadraticCurveTo(230, 200, 250, 120);

  // bezier curve
  context.bezierCurveTo(290, -40, 300, 200, 400, 150);

  // line 2
  context.lineTo(500, 90);

  context.lineWidth = 5;
  context.strokeStyle = 'lightblue';
  context.stroke();
}


