//
//  MMNode.swift
//  MappaMundi
//
//  Created by Yang, Roy on 2019/6/7.
//  Copyright © 2019 Mozilla Corporation. All rights reserved.
//

import UIKit
final class MMNode: GraphNode {
    var name: String?
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
    
    static func == (lhs: MMNode, rhs: MMNode) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.name)
    }
    
    var connectedNodes = Set<MMNode>()
    
    func cost(to node: MMNode) -> Float {
        return 1
    }
    
    func estimatedCost(to node: MMNode) -> Float {
        return cost(to: node)
    }
}
