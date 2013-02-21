import 'dart:math';

int randomInt(int max) =>
    new Random().nextInt(max);

randomListElement(List list) =>
    list[randomInt(list.length - 1)];

String randomColor() =>
    randomListElement(colorList);

var colorMap = {
                'blue':       '#0000ff' ,
                'brown':      '#963939',
                'gray':       '#909090',
                'green':      '#009000',
                'orange':     '#ff6f00',
                'red':        '#ff0000',
                'yellow':     '#ffff00'
};

var colorList = [
                 'blue',
                 'brown',
                 'gray',
                 'green',
                 'orange',
                 'red',
                 'yellow'
                ];

void main() {
  var color = randomColor();
  print(color);
  print(colorMap[color]);
}


