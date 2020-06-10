//
//  HomeViewController.swift
//  PG&EApp
//
//  Created by Luis Valencia on 5/27/20.
//  Copyright © 2020 Infosys. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var MaterialsView: UIView!
    @IBOutlet weak var ToolsView: UIView!
    @IBOutlet weak var MeterView: UIView!
    @IBOutlet weak var LastView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MaterialsView.layer.cornerRadius = 8;
        MaterialsView.layer.masksToBounds = true;
        ToolsView.layer.cornerRadius = 8;
        ToolsView.layer.masksToBounds = true;
        MeterView.layer.cornerRadius = 8;
        MeterView.layer.masksToBounds = true;
        LastView.layer.cornerRadius = 8;
        LastView.layer.masksToBounds = true;
        let chicken = DB.database.getRequests()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
