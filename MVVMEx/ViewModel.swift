//
//  ViewModel.swift
//  MVVMEx
//
//  Created by Вячеслав Квашнин on 15.08.2022.
//

import Foundation

class ViewModel {
    
    var didChangeValue: ((ViewModel) -> Void)?
    
    var value: String? {
        didSet {
            didChangeValue?(self)
        }
    }
    
    func addSomething() {
        self.value = "Some"
    }
    
    init(value: String? = nil) {
        self.value = "value"
    }
    
}
