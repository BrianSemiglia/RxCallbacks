//
//  ViewController.swift
//  RxCallbacks
//
//  Created by brian.semiglia@gmail.com on 02/09/2019.
//  Copyright (c) 2019 brian.semiglia@gmail.com. All rights reserved.
//

import UIKit
import Curry
import RxSwift
import RxCallbacks

class ViewController: UIViewController {

    let cleanup = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let foo = Foo()
        Observable<String>
            .fromCallback(curry(foo.asyncCallWith)(9))
            .subscribe(onNext: { result in
                print(result)
            })
            .disposed(by: cleanup)
    }

}

final class Foo {
    func asyncCallWith(argument: Int, completion: @escaping (String) -> Void) {
        DispatchQueue.main.asyncAfter(
            deadline: .now() + 1,
            execute: {
                completion("foo")
            }
        )
    }
}

