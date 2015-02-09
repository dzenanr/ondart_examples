import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  var x = canvas.width / 2;
  var y = canvas.height / 2;

  context.font = "30pt Calibri";
  // textAlign aligns text horizontally relative to placement
  context.textAlign = "center";
  // textBaseline aligns text vertically relative to font style
  context.textBaseline = "middle";
  context.fillStyle = "lightblue";
  context.fillText("Canvas Examples", x, y);
}


