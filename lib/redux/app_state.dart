class AppState {
  String userName;

  AppState({this.userName});

  AppState.copyWith({AppState prevState, String username}) {
    this.userName = username ?? prevState.userName;
  }

  AppState.initial() {
    this.userName = "User";
  }
}
