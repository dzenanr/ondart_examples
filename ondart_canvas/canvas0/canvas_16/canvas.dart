import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.rect(0, 0, canvas.width, canvas.height);
  // add linear gradient
  var grd = context.createLinearGradient(0, 0, canvas.width, canvas.height);
  // light blue
  grd.addColorStop(0, '#8ed6ff');
  // dark blue
  grd.addColorStop(1, '#004cb3');
  context.fillStyle = grd;
  context.fill();
}


