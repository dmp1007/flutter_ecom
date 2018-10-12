class AppState {
  bool isLoading;
  String username;

  AppState({
    this.isLoading = false,
    this.username = "PX12",
  });


  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, username: $username}';
  }
}
