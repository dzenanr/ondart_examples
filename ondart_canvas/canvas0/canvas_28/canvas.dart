import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  var x = canvas.width / 2;
  var y = canvas.height / 2 - 10;
  var text = "Canvas Examples";

  context.font = "30pt Calibri";
  context.textAlign = "center";
  context.fillStyle = "blue";
  context.fillText(text, x, y);

  // get text metrics
  var metrics = context.measureText(text);
  var width = metrics.width;
  context.font = "20pt Calibri";
  context.textAlign = "center";
  context.fillStyle = "#555";
  context.fillText("($width px wide)", x, y + 40);
}


