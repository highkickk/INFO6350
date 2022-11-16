//
//  KeyChainService.swift
//  TwitterTok
//
//  Created by Lan on 11/15/22.
//


import Foundation
import KeychainSwift

class KeyChainService{
    var _keyChain = KeychainSwift()
    
    var keyChain: KeychainSwift {
        get {
            return _keyChain
        }
        set {
            _keyChain = newValue
        }
    }
    
}
