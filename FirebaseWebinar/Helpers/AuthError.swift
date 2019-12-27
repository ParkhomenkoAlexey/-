//
//  AuthError.swift
//  FirebaseWebinar
//
//  Created by Алексей Пархоменко on 26.12.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation

enum AuthError {
    case notFilled
    case invalidEmail
    case unknownError
    case serverError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Email is not valid", comment: "")
        case .unknownError:
            return NSLocalizedString("Unknown Error", comment: "")
        case .serverError:
            return NSLocalizedString("Server Error", comment: "")
        }
    }
}
