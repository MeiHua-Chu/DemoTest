//
//  Login.swift
//  DemoTest
//
//  Created by chu hua on 2022/9/9.
//

import Foundation

class Login {
    
    /// 回傳結果
    enum ResultError: Error, Equatable {
        /// 帳號空值
        case accountEmpty
        /// 密碼空值
        case passwordEmpty
        /// 錯誤帳號或密碼
        case wrongLogindata
    
    }

    /// 登入資料
    struct Data {
        
        /// 帳號
        var account: String = ""
        
        /// 密碼
        var password: String = ""
        
        /// 結果
        var result: Result<Data,ResultError> {
            if account == "USER" &&
                password == "USER" {
                return Result.success(self)
            }
            else if account.count == 0 {
                return .failure(.accountEmpty)
            }else if password.count == 0 {
                return .failure(.passwordEmpty)
            }
            return .failure(.wrongLogindata)
        }
        
        /// 是否登入成功
        var isLoginSuccess: Bool {
            return account == "USER" &&
                   password == "USER"
        }
    }

}
