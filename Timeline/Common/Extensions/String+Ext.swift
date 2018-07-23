//
//  String+Ext.swift
//  Pokedex
//
//  Created by Luis Burgos on 7/11/18.
//  Copyright © 2018 Yellowme. All rights reserved.
//

import Foundation

extension String {
    // MARK: - Consntats
    static let empty = ""
    static let appName = "Pokédex"
    static let emptyList = "No hay resultados"
    static let cancel = "Cancelar"
    static let understood = "Entendido"
    
    // MARK: - Validations
    static let enterValidUsername = "Ingresa un nombre de usuario válido"
    static let enterValidPassword = "Ingresa tu contraseña"
    
    // MARK: - Icons
    
    //MARK: - Messages
}

//MARK: - Conversion Helper
extension String {
    func isNotEmpty() -> Bool {
        return self != ""
    }
}
