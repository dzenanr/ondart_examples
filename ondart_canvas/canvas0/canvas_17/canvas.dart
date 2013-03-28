import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.rect(0, 0, canvas.width, canvas.height);
  var grd = context.createRadialGradient(238, 50, 10, 238, 50, 300);
  grd.addColorStop(0, '#8ed6ff');  // light blue
  grd.addColorStop(1, '#004cb3');  // dark blue
  context.fillStyle = grd;
  context.fill();
}


