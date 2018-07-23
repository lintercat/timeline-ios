//
//  TranscriptsDataSource.swift
//  InseraHealth
//
//  Created by Erick A. Montañez  on 7/17/18.
//  Copyright © 2018 Yellowme. All rights reserved.
//

import Foundation

class TranscriptsDataSource<T>: DataSource {
    // MARK: - Internal Properties
    var items: [T] = []
    
    // MARK: - Lifecycle
    init(items: [T]) {
        self.items = items
    }
    
    var numberOfSections: Int = 0
    
    func numberOfRowsInSection(section: Int) -> Int {
        return items.count
    }
    
    func modelAt(indexPath: IndexPath) -> T? {
        return items[indexPath.row]
    }
}
