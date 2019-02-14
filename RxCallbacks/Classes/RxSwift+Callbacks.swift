import RxSwift

extension ObservableType {
    public static func fromCallback(
        _ input: @escaping (@escaping () -> Void) throws -> Void
    ) -> Observable<Void> {
        let converted: (@escaping (@escaping () -> Void) throws -> Void) -> () -> Observable<Void> = { onCallback in
            return {
                Observable<Void>.create { o in
                    do {
                        try onCallback {
                            o.on(.next(()))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A>(
        _ input: @escaping (@escaping (A) -> Void) throws -> Void
    ) -> Observable<A> {
        let converted: (@escaping (@escaping (A) -> Void) throws -> Void) -> () -> Observable<A> = { onCallback in
            return {
                Observable.create { o in
                    do {
                        try onCallback { a in
                            o.on(.next(a))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B>(
        _ input: @escaping (@escaping (A, B) -> Void) throws -> Void
    ) -> Observable<(A, B)> {
        let converted: (@escaping (@escaping (A, B) -> Void) throws -> Void) -> () -> Observable<(A, B)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b in
                            o.on(.next((a, b)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C>(
        _ input: @escaping (@escaping (A, B, C) -> Void) throws -> Void
    ) -> Observable<(A, B, C)> {
        let converted: (@escaping (@escaping (A, B, C) -> Void) throws -> Void) -> () -> Observable<(A, B, C)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c in
                            o.on(.next((a, b, c)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D>(
        _ input: @escaping (@escaping (A, B, C, D) -> Void) throws -> Void
    ) -> Observable<(A, B, C, D)> {
        let converted: (@escaping (@escaping (A, B, C, D) -> Void) throws -> Void) -> () -> Observable<(A, B, C, D)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c, d in
                            o.on(.next((a, b, c, d)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E>(
        _ input: @escaping (@escaping (A, B, C, D, E) -> Void) throws -> Void
    ) -> Observable<(A, B, C, D, E)> {
        let converted: (@escaping (@escaping (A, B, C, D, E) -> Void) throws -> Void) -> () -> Observable<(A, B, C, D, E)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c, d, e in
                            o.on(.next((a, b, c, d, e)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F>(
        _ input: @escaping (@escaping (A, B, C, D, E, F) -> Void) throws -> Void
    ) -> Observable<(A, B, C, D, E, F)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F) -> Void) throws -> Void) -> () -> Observable<(A, B, C, D, E, F)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c, d, e, f in
                            o.on(.next((a, b, c, d, e, f)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G) -> Void) throws -> Void
    ) -> Observable<(A, B, C, D, E, F, G)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G) -> Void) throws -> Void) -> () -> Observable<(A, B, C, D, E, F, G)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c, d, e, f, g in
                            o.on(.next((a, b, c, d, e, f, g)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G, H>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G, H) -> Void) throws -> Void
    ) -> Observable<(A, B, C, D, E, F, G, H)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G, H) -> Void) throws -> Void) -> () -> Observable<(A, B, C, D, E, F, G, H)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c, d, e, f, g, h in
                            o.on(.next((a, b, c, d, e, f, g, h)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G, H, I>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G, H, I) -> Void) throws -> Void
    ) -> Observable<(A, B, C, D, E, F, G, H, I)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G, H, I) -> Void) throws -> Void) -> () -> Observable<(A, B, C, D, E, F, G, H, I)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c, d, e, f, g, h, i in
                            o.on(.next((a, b, c, d, e, f, g, h, i)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G, H, I, J>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G, H, I, J) -> Void) throws -> Void
    ) -> Observable<(A, B, C, D, E, F, G, H, I, J)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G, H, I, J) -> Void) throws -> Void) -> () -> Observable<(A, B, C, D, E, F, G, H, I, J)> = { onCallback in
            return {
                return .create { o in
                    do {
                        try onCallback { a, b, c, d, e, f, g, h, i, j in
                            o.on(.next((a, b, c, d, e, f, g, h, i, j)))
                        }
                    } catch let error {
                        o.on(.error(error))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
}
