import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement spaceShip = document.query('#space_ship');

  // Three arguments: the element, destination (x,y) coordinates.
  context.drawImage(spaceShip, 120, 80);

  // Five arguments: the element, destination (x,y) coordinates, and destination
  // width and height (if you want to resize the source image).
  //context.drawImage(img_elem, dx, dy, dw, dh);

  // Nine arguments: the element, source (x,y) coordinates, source width and
  // height (for cropping), destination (x,y) coordinates, and destination width
  // and height (resize).
  //context.drawImage(img_elem, sx, sy, sw, sh, dx, dy, dw, dh);
}


