//
//  SessionManagerProtocol.swift
//  Timeline
//
//  Created by Erick A. Montañez  on 7/22/18.
//  Copyright © 2018 Lintercat. All rights reserved.
//

import Foundation

protocol SessionManagerProtocol {
    func save(session: Session?)
    func retrieve() -> Session
    func clear()
}
