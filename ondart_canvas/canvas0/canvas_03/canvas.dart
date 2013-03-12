import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  // line
  context.moveTo(100, 150);
  context.lineTo(450, 50);
  context.lineWidth = 4;
  // set line color
  context.strokeStyle = '#ff0000'; // red
  context.stroke();
}


