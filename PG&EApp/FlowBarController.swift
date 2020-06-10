//
//  FlowBarController.swift
//  PG&EApp
//
//  Created by Luis Valencia on 6/8/20.
//  Copyright © 2020 Infosys. All rights reserved.
//

import Foundation
import UIKit

class FlowBarController: UIView {
    
   
   
    
    var isOpened = false
    
    
    
    
    
    @IBAction func barClicked(_ sender: AnyObject) {
        
    
        
        UIView.animate(withDuration: 0.5, animations: {
            let down = UIImage(systemName: "chevron.down")
            let up = UIImage(systemName: "chevron.up")
            
            if(self.isOpened) {
            self.center.y+=150
                sender.setImage(up, for: .normal)
            } else {
                self.center.y-=150
                sender.setImage(down, for: .normal)
            }
            self.isOpened = !self.isOpened
        })
        print("Button")
        

        
        
    }
    
}
