import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  var x = canvas.width / 2;
  var y = canvas.height / 2;

  context.font = "30pt Calibri";
  context.textAlign = "center";
  context.fillStyle = "blue";
  context.fillText("Canvas Examples", x, y);
}


