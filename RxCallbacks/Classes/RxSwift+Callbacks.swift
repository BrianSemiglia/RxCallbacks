import RxSwift

extension ObservableType {
    public static func fromCallback<A>(
        _ input: @escaping (@escaping (A) -> Void) -> Void
    ) -> Observable<A> {
        let converted: (@escaping (@escaping (A) -> Void) -> Void) -> () -> Observable<A> = { onCallback in
            return {
                return .create { o in
                    onCallback { a in
                        o.on(.next(a))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B>(
        _ input: @escaping (@escaping (A, B) -> Void) -> Void
    ) -> Observable<(A, B)> {
        let converted: (@escaping (@escaping (A, B) -> Void) -> Void) -> () -> Observable<(A, B)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b in
                        o.on(.next((a, b)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C>(
        _ input: @escaping (@escaping (A, B, C) -> Void) -> Void
    ) -> Observable<(A, B, C)> {
        let converted: (@escaping (@escaping (A, B, C) -> Void) -> Void) -> () -> Observable<(A, B, C)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c in
                        o.on(.next((a, b, c)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D>(
        _ input: @escaping (@escaping (A, B, C, D) -> Void) -> Void
    ) -> Observable<(A, B, C, D)> {
        let converted: (@escaping (@escaping (A, B, C, D) -> Void) -> Void) -> () -> Observable<(A, B, C, D)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c, d in
                        o.on(.next((a, b, c, d)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E>(
        _ input: @escaping (@escaping (A, B, C, D, E) -> Void) -> Void
    ) -> Observable<(A, B, C, D, E)> {
        let converted: (@escaping (@escaping (A, B, C, D, E) -> Void) -> Void) -> () -> Observable<(A, B, C, D, E)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c, d, e in
                        o.on(.next((a, b, c, d, e)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F>(
        _ input: @escaping (@escaping (A, B, C, D, E, F) -> Void) -> Void
    ) -> Observable<(A, B, C, D, E, F)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F) -> Void) -> Void) -> () -> Observable<(A, B, C, D, E, F)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c, d, e, f in
                        o.on(.next((a, b, c, d, e, f)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G) -> Void) -> Void
    ) -> Observable<(A, B, C, D, E, F, G)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G) -> Void) -> Void) -> () -> Observable<(A, B, C, D, E, F, G)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c, d, e, f, g in
                        o.on(.next((a, b, c, d, e, f, g)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G, H>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G, H) -> Void) -> Void
    ) -> Observable<(A, B, C, D, E, F, G, H)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G, H) -> Void) -> Void) -> () -> Observable<(A, B, C, D, E, F, G, H)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c, d, e, f, g, h in
                        o.on(.next((a, b, c, d, e, f, g, h)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G, H, I>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G, H, I) -> Void) -> Void
    ) -> Observable<(A, B, C, D, E, F, G, H, I)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G, H, I) -> Void) -> Void) -> () -> Observable<(A, B, C, D, E, F, G, H, I)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c, d, e, f, g, h, i in
                        o.on(.next((a, b, c, d, e, f, g, h, i)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
    
    public static func fromCallback<A, B, C, D, E, F, G, H, I, J>(
        _ input: @escaping (@escaping (A, B, C, D, E, F, G, H, I, J) -> Void) -> Void
    ) -> Observable<(A, B, C, D, E, F, G, H, I, J)> {
        let converted: (@escaping (@escaping (A, B, C, D, E, F, G, H, I, J) -> Void) -> Void) -> () -> Observable<(A, B, C, D, E, F, G, H, I, J)> = { onCallback in
            return {
                return .create { o in
                    onCallback { a, b, c, d, e, f, g, h, i, j in
                        o.on(.next((a, b, c, d, e, f, g, h, i, j)))
                    }
                    return Disposables.create()
                }
            }
        }
        return converted(input)()
    }
}
