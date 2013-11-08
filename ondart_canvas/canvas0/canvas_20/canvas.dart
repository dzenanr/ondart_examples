import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

// void drawImage(CanvasImageSource source, num destinationX, num destinationY) and
// void drawImageAtScale(CanvasImageSource source, Rect destinationRect, {Rect sourceRect})
// CanvasImageSource is one of ImageElement, VideoElement, or CanvasElement.

void main() {
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement spaceShip = document.querySelector('#space_ship');
  // context.drawImage(spaceShip, 20, 50);
  context.drawImageToRect(spaceShip,
      new Rectangle(20, 50, 720, 320));
}


