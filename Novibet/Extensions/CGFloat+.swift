//
//  CGFloat+.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//
import SwiftUI
import Foundation

extension CGFloat{
    init(_ paddingEnum: PaddingEnum) {
        self.init(paddingEnum.padding)
    }
    
    init(_ fontSizeEnum: FontSizesEnum) {
        self.init(fontSizeEnum.size)
    }
    
    init(_ cornerRadiusEnum: CornerRadiusEnum) {
        self.init(cornerRadiusEnum.radius)
    }
    
    init(_ widthEnum: WidthsEnum) {
        self.init(widthEnum.width)
    }
    
    init(_ heightEnum: HeightsEnum) {
        self.init(heightEnum.height)
    }
}
