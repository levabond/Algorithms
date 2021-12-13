//
//  TreeNode.swift
//  Algorithms
//
//  Created by Лев Бондаренко on 11.12.2021.
//

import Foundation

class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        children.append(child)
    }
}

extension TreeNode {
    func forEachDepthFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }
}
