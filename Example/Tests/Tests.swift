import XCTest
import RxCallbacks
import RxSwift

class Tests: XCTestCase {
    
    let cleanup = DisposeBag()

    func testThrow() {
        Observable<Void>
            .fromCallback(Foo.fooThrow)
            .subscribe(onError: { e in
                XCTAssertTrue(true)
            })
            .disposed(by: cleanup)
    }
    
    func testZero() {
        Observable<Void>
            .fromCallback(Foo.fooZero)
            .subscribe(onNext: {
                XCTAssertTrue(true)
            })
            .disposed(by: cleanup)
    }

    func testOne() {
        Observable<String>
            .fromCallback(Foo.fooOne)
            .subscribe(onNext: {
                XCTAssertEqual($0, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testTwo() {
        Observable<String>
            .fromCallback(Foo.fooTwo)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testThree() {
        Observable<String>
            .fromCallback(Foo.fooThree)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testFour() {
        Observable<String>
            .fromCallback(Foo.fooFour)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
                XCTAssertEqual($0.3, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testFive() {
        Observable<String>
            .fromCallback(Foo.fooFive)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
                XCTAssertEqual($0.3, "foo")
                XCTAssertEqual($0.4, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testSix() {
        Observable<String>
            .fromCallback(Foo.fooSix)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
                XCTAssertEqual($0.3, "foo")
                XCTAssertEqual($0.4, "foo")
                XCTAssertEqual($0.5, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testSeven() {
        Observable<String>
            .fromCallback(Foo.fooSeven)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
                XCTAssertEqual($0.3, "foo")
                XCTAssertEqual($0.4, "foo")
                XCTAssertEqual($0.5, "foo")
                XCTAssertEqual($0.6, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testEight() {
        Observable<String>
            .fromCallback(Foo.fooEight)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
                XCTAssertEqual($0.3, "foo")
                XCTAssertEqual($0.4, "foo")
                XCTAssertEqual($0.5, "foo")
                XCTAssertEqual($0.6, "foo")
                XCTAssertEqual($0.7, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testNine() {
        Observable<String>
            .fromCallback(Foo.fooNine)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
                XCTAssertEqual($0.3, "foo")
                XCTAssertEqual($0.4, "foo")
                XCTAssertEqual($0.5, "foo")
                XCTAssertEqual($0.6, "foo")
                XCTAssertEqual($0.7, "foo")
                XCTAssertEqual($0.8, "foo")
            })
            .disposed(by: cleanup)
    }
    
    func testTen() {
        Observable<String>
            .fromCallback(Foo.fooTen)
            .subscribe(onNext: {
                XCTAssertEqual($0.0, "foo")
                XCTAssertEqual($0.1, "foo")
                XCTAssertEqual($0.2, "foo")
                XCTAssertEqual($0.3, "foo")
                XCTAssertEqual($0.4, "foo")
                XCTAssertEqual($0.5, "foo")
                XCTAssertEqual($0.6, "foo")
                XCTAssertEqual($0.7, "foo")
                XCTAssertEqual($0.8, "foo")
                XCTAssertEqual($0.9, "foo")
            })
            .disposed(by: cleanup)
    }
}

enum Foo {
    
    struct Error: Swift.Error {}
    
    static func fooThrow(completion: @escaping () -> ()) throws {
        throw(Error())
    }

    static func fooZero(completion: @escaping () -> ()) {
        completion()
    }

    static func fooOne(completion: @escaping (String) -> ()) {
        completion("foo")
    }
    
    static func fooTwo(completion: @escaping (String, String) -> ()) {
        completion("foo", "foo")
    }
    
    static func fooThree(completion: @escaping (String, String, String) -> ()) {
        completion("foo", "foo", "foo")
    }
    
    static func fooFour(completion: @escaping (String, String, String, String) -> ()) {
        completion("foo", "foo", "foo", "foo")
    }
    
    static func fooFive(completion: @escaping (String, String, String, String, String) -> ()) {
        completion("foo", "foo", "foo", "foo", "foo")
    }
    
    static func fooSix(completion: @escaping (String, String, String, String, String, String) -> ()) {
        completion("foo", "foo", "foo", "foo", "foo", "foo")
    }
    
    static func fooSeven(completion: @escaping (String, String, String, String, String, String, String) -> ()) {
        completion("foo", "foo", "foo", "foo", "foo", "foo", "foo")
    }
    
    static func fooEight(completion: @escaping (String, String, String, String, String, String, String, String) -> ()) {
        completion("foo", "foo", "foo", "foo", "foo", "foo", "foo", "foo")
    }
    
    static func fooNine(completion: @escaping (String, String, String, String, String, String, String, String, String) -> ()) {
        completion("foo", "foo", "foo", "foo", "foo", "foo", "foo", "foo", "foo")
    }
    
    static func fooTen(completion: @escaping (String, String, String, String, String, String, String, String, String, String) -> ()) {
        completion("foo", "foo", "foo", "foo", "foo", "foo", "foo", "foo", "foo", "foo")
    }
}
