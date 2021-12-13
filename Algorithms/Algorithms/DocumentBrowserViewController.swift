//
//  DocumentBrowserViewController.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 07.12.2021.
//

import UIKit


class DocumentBrowserViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let list = LinkedList()
//        Array(1...10).forEach { list.append(value: $0) }
//        print("getLength", list.getLength())
//        print("search", list.search(value: 31))
//
//        var stack = Stack<Int>()
//        stack.push(1)
//        stack.push(2)
//
//        print(stack)
//
//        if let poppedElement = stack.pop() {
//            print("Popped: \(poppedElement)")
//        }
        
        var array = [Test(name: "test"), Test(name: "hello")]
        var array2 = array
        array[0].name = "Hello"
        print(array[0].name, array2[0].name)
    }
}

struct Test {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
