enum LoadingState {
  normal,
  loading,
  success,
  error,
}

extension LoadingStateExtension on LoadingState {
  bool get isNormal => this == LoadingState.normal;
  bool get isLoading => this == LoadingState.loading;
  bool get isSuccess => this == LoadingState.success;
  bool get isError => this == LoadingState.error;
}
