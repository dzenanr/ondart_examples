import 'dart:html';

// based on: 
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  var x = 80;
  var y = 110;

  context.font = "60pt Calibri";
  context.lineWidth = 3;
  context.strokeStyle = "blue";
  context.strokeText('Canvas Examples', x, y);
}


