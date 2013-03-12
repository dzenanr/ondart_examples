import 'dart:html';

// based on: 
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  var rectWidth = 200;
  var rectHeight = 100;
  var rectX = 189;
  var rectY = 50;
  var cornerRadius = 50;

  context.moveTo(rectX, rectY);
  context.lineTo(rectX + rectWidth - cornerRadius, rectY);
  context.arcTo(rectX + rectWidth, rectY, rectX + rectWidth,
      rectY + cornerRadius, cornerRadius);
  context.lineTo(rectX + rectWidth, rectY + rectHeight);
  context.lineWidth = 5;
  context.stroke();
}


