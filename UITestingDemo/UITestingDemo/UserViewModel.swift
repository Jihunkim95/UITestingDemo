//
//  UserViewModel.swift
//  UITestingDemo
//
//  Created by 김지훈 on 2023/12/18.
//

import Foundation

class UserViewModel: ObservableObject{
    @Published var isLogin:Bool = false
    @Published var userName:String = ""
    @Published var password:String = ""
    
    func login() -> Bool{
        
        guard userName == "test" && password == "pass" else {
            return false
        }
        
        password = ""
        isLogin = true
        return isLogin
    }
    
}
