import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  // begin custom shape
  context.beginPath();
  context.moveTo(170, 80);
  context.bezierCurveTo(130, 100, 130, 150, 230, 150);
  context.bezierCurveTo(250, 180, 320, 180, 340, 150);
  context.bezierCurveTo(420, 150, 420, 120, 390, 100);
  context.bezierCurveTo(430, 40, 370, 30, 340, 50);
  context.bezierCurveTo(320, 5, 250, 20, 250, 50);
  context.bezierCurveTo(200, 5, 150, 20, 170, 80);
  context.closePath();
  // complete custom shape
  context.lineWidth = 5;
  context.fillStyle = 'gray';
  context.fill();
  context.strokeStyle = 'lightblue';
  context.stroke();
}


