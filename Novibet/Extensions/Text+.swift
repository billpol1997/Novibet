//
//  Text+.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

extension Text{
    
    init(_ textEnum: TextEnum) {
        self.init(textEnum.string)
    }
}
