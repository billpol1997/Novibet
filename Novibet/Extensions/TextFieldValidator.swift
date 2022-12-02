//
//  TextFieldValidator.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//
import Foundation
extension String {
    func isTextValid(regex: String ) -> Bool {
        let pred = NSPredicate(format: "SELF MATCHES %@", regex)
        return pred.evaluate(with: self)
    }
}
