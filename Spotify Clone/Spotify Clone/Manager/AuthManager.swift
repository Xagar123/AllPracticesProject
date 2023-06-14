//
//  AuthManager.swift
//  Spotify Clone
//
//  Created by Sagar Das on 04/06/23.
//

import Foundation

final class AuthManager {
    
    static let shared = AuthManager()
    
    private init() { }
    
    struct Constants {
        static let clintID = "4fad98beb2f44ecb89affbdf26b79fb0"
        static let clintSecret = "70f6b840a5a24e509e27f719494570c4"
    }
    var isSignedIn: Bool {
        return false
    }
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.iosacademy.io"
        let baseURL = "https://accounts.spotify.com/authorize"
        let string = "\(baseURL)?response_tpye=\("token")&client_id=\(Constants.clintID)&scope=\(scopes)&redirect_uri=\(redirectURI)"
        return URL(string: string)
        
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
