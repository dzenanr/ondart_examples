import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement spaceShip = document.query('#space_ship');
  context.drawImage(spaceShip, 20, 50);
}


