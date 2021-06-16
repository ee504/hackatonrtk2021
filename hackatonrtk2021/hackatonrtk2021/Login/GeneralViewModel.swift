//
//  GeneralViewModel.swift
//  hackatonrtk2021
//
//  Created by Egor Starichenkov on 17.06.2021.
//

import Foundation

class GeneralViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    var buttonName = "Войти"
    
    func action() {
        print("action")
    }
}
