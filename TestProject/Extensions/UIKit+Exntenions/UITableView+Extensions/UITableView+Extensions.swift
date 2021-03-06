//  EGS
//
//  Created by Eugene Goloboyar on 20.03.2018.
//


import Foundation
import UIKit

extension UITableView {
    func registerCellsWithIdentifiers(_ identifiers: [String]) {
        identifiers.forEach { (identifer) in
            self.register(UINib(nibName: identifer, bundle: nil), forCellReuseIdentifier: identifer)
        }
    }
}
