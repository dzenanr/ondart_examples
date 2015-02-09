import 'dart:async';
import 'dart:html';

// http://www.latlong.net/Show-Latitude-Longitude.html

ParagraphElement geolocation;
ButtonElement geolocationButton;

void main() {
  geolocation = querySelector('#geolocation');
  geolocationButton = querySelector('#get-geolocation')..onClick.listen(getLocation);
}

void getLocation(Event event) {
  Future<Geoposition> geoposition = window.navigator.geolocation.getCurrentPosition();
  geoposition.then(showLocation, onError: showError);
}

void showLocation(Geoposition geoposition) {
  num latitude = geoposition.coords.latitude;
  num longitude = geoposition.coords.longitude;
  geolocation.innerHtml = 'latitude: ${latitude}; longitude: ${longitude}';
}

void showError(Error error) {
  geolocation.innerHtml = 'geolocation error';
}



