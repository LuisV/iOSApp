
//
//  MaterialFormView.swift
//  PG&EApp
//
//  Created by Luis Valencia on 6/2/20.
//  Copyright © 2020 Infosys. All rights reserved.
//

import Foundation

import Eureka

class MyFormViewController: FormViewController {

   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        form
            +++ TextRow(){ row in
                row.title = "Material Code"
                row.placeholder = "MXXXXX"
            }
            <<< PushRow<String>() {
                $0.title = "Manufacturer"
                $0.add(rule: RuleRequired())
                $0.selectorTitle = "Select Manufacturer"
                $0.options = DB.database.getManufacturers()
                $0.value = "Select"    // initially selected
            }
            <<< PushRow<String>() {
                $0.title = "Material Type"
                $0.add(rule: RuleRequired())
                $0.selectorTitle = "Select Material Type"
                $0.options = DB.database.getMaterialTypes()
                $0.value = "Select"    // initially selected
            }
            <<< PushRow<String>() {
                $0.title = "Age"
                $0.add(rule: RuleRequired())
                $0.selectorTitle = "Select Age"
                $0.options = DB.database.getAges()
                $0.value = "Select"    // initially selected
            }
            <<< PushRow<String>() {
                $0.title = "Application"
                $0.selectorTitle = "Select Application"
                $0.options = DB.database.getApplications()
                $0.value = "Select"    // initially selected
            }
            <<< TextRow(){ row in
                           row.title = "Material Description"
                           row.placeholder = "Type here"
                       }
            <<< TextRow(){ row in
                                      row.title = "Manufacturer Serial No."
                                      row.placeholder = "Type here"
                                  }
            <<< TextRow(){ row in
                                      row.title = "Purchase Order"
                                      row.placeholder = "Type Here"
                                  }
            
            <<< SwitchRow(){ row in
                                      row.title = "Outage"
                                    }
            <<< SwitchRow(){ row in
                                      row.title = "Failed in Service"
                                           }
        <<< TextRow(){ row in
            row.title = "Operating"
            row.placeholder = "Type Here"
        }
    }
}
