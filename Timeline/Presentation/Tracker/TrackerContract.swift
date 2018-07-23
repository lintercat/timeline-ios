//
//  TrackerContract.swift
//  Timeline
//
//  Created by Erick A. Montañez  on 7/22/18.
//  Copyright © 2018 Lintercat. All rights reserved.
//

import Foundation

protocol TrackerView: BaseView {
    
}

protocol TrackerViewPresenter {
    init(view: TrackerView)
}
