//
//  File.swift
//  PG&EApp
//
//  Created by Luis Valencia on 6/9/20.
//  Copyright © 2020 Infosys. All rights reserved.
//

import Foundation
import Eureka

class FlowDetailController: FormViewController {

   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        form
            +++ CheckRow(){ row in
                row.title = "Reporter Info"
                row.value = true
            }
        <<< CheckRow(){ row in
            row.title = "Material Info"
            row.value = false
        }
    }
}
