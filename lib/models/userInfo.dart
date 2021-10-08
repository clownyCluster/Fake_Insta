class UserInfo {
  String name;
  String path;
  String description;
  UserInfo({this.name, this.path, this.description});
}

class UserInfoDetail {
  List<UserInfo> userInfo = [
    UserInfo(
        name: 'Brad Pitt',
        path: 'assets/images/brad1.jpg',
        description: 'Actor/Producer/Story Writer'),
    UserInfo(
        name: 'Mohomad Salah',
        path: 'assets/images/Msalah.jpg',
        description: 'Professional Footballer'),
    UserInfo(
        name: 'Michael Owen',
        path: 'assets/images/owen.jpg',
        description: 'Former Professional Footballer/ Pundit'),
    UserInfo(
        name: 'Selena Gomez',
        path: 'assets/images/selena.jpg',
        description: 'Singer/ Actor/ Song Writter'),
    UserInfo(
        name: 'Tom Hardy',
        path: 'assets/images/tom.jpg',
        description: 'Professional Actor'),
    UserInfo(
        name: 'Random Model',
        path: 'assets/images/model.jpeg',
        description: 'Random Model'),
    UserInfo(
        name: 'Fake Mohomad Salah',
        path: 'assets/images/salah.jpeg',
        description: 'Professional Footballer'),
    UserInfo(
        name: 'Fake Brad Pitt',
        path: 'assets/images/brad.jpg',
        description: 'Actor/Producer/Story Writer'),
  ];

  // String getName(index) {
  //   index = _index;
  //   return _userInfo[_index].name;
  // }

  // String getPath(index) {
  //   index = _index;
  //   return _userInfo[_index].path;
  // }

  // String getDescription(index) {
  //   index = _index;
  //   return _userInfo[_index].description;
  // }

  // void incrementCounter() {
  //   if (_index < _userInfo.length) {
  //     _index++;
  //   }
  // }
}
