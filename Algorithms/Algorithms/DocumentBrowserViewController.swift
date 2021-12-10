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

        let list = LinkedList()
        Array(1...10).forEach { list.append(value: $0) }
        print("getLength", list.getLength())
        print("search", list.search(value: 31))
    }
}

