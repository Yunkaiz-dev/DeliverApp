enum ResultStatus { success, error }

class Result<T, E> {
  E? error;
  T? value;
  ResultStatus status;
  
  Result(this.status, this.value, this.error);

  Result.success(this.value)
  : status = ResultStatus.success,
  error = null;

  Result.failure(this.error)
  : status = ResultStatus.error,
  value = null;
}
