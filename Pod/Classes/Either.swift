

public enum Either<T, U> {
    case Left(T)
    case Right(U)
    
}

func isRight<T, U>(item:Either<T, U>) -> Bool {
    if case .Right = item { return true }
    return false
}

func isLeft<T, U>(item:Either<T, U>) -> Bool {
    return !isRight(item)
}