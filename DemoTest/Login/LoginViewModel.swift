//
//  LoginViewModel.swift
//  DemoTest
//
//  Created by chu hua on 2022/9/9.
//

import Foundation

class LoginViewModel {
        
    
    /// 登入事件
    /// - Parameter data: 登入資料(帳號、密碼)
    /// - Returns: 帳號是否正確
    func enterLogin(_ data: Login.Data) -> Result<Login.Data,Login.ResultError> {
        return data.result
    }
    
    
}
