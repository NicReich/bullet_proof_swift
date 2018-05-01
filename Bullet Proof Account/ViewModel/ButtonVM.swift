//
//  UIViewModel.swift
//  Bullet Proof Account
//
//  Created by Aaron bikis on 4/28/18.
//  Copyright © 2018 Aaron bikis. All rights reserved.
//

import UIKit



enum ButtonViewModel {
  case login, signup, forgotpass
  
  static let largeButtonHeight: CGFloat = 55
  static let smallButtonHeight: CGFloat = 25
  
  var styling: ButtonStyling {
    switch self {
    case .login:
      return LoginButtonStyle()
    case .signup:
      return SignUpButtonStyle()
    case .forgotpass:
      return ForgotPasswordStyle()
    }
  }
}


private struct LoginButtonStyle: ButtonStyling {
  var title: String = "Login"
  var backgroundColor: UIColor = UIColor.green
}

private struct SignUpButtonStyle: ButtonStyling {
  var title: String = "SignUp"
  var backgroundColor: UIColor = UIColor.red
}

private struct ForgotPasswordStyle: ButtonStyling {
  var title: String = "Forgot Password?"
  var backgroundColor: UIColor = UIColor.brown
}

protocol ButtonStyling {
  var title: String { get }
  var backgroundColor: UIColor { get }
  var textColor: UIColor { get }
}

extension ButtonStyling {
  var textColor: UIColor { return UIColor.white }
}
