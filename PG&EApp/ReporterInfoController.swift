//
//  ReporterInfoController.swift
//  PG&EApp
//
//  Created by Luis Valencia on 6/10/20.
//  Copyright © 2020 Infosys. All rights reserved.
//

import Foundation
import Eureka

class ReporterInfoController: FormViewController {

   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        form +++ Section()
            <<< TextRow(){ row in
                row.title = "Reporter Name"
                row.placeholder = "Type here"
            }
            <<< TextRow(){ row in
                row.title = "ID"
                row.placeholder = "Type here"
            }
            <<< DateRow() {
                $0.title = "Date"
                $0.add(rule: RuleRequired())
                $0.noValueDisplayText = "Select Date"  // initially selected
            }
            <<< PushRow<String>() {
                $0.title = "Divison/Dept"
                $0.add(rule: RuleRequired())
                $0.selectorTitle = "Select Divions/Dept"
                $0.options = DB.database.getDivision()
                $0.value = "Select"    // initially selected
            }
            <<< LabelRow() {$0.title="Comments"}
            <<< TextAreaRow() {
                
                $0.title = "Comments"
                $0.placeholder = "Type here"
            }
           
    }
}
