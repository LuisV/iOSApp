//
//  ViewController.swift
//  PG&EApp
//
//  Created by Luis Valencia on 5/26/20.
//  Copyright © 2020 Infosys. All rights reserved.
//

import UIKit
import MobileCoreServices
var titleStr: String = "Upload"
var btn = UIButton()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func refreshTitle(_ sender: UIButton){
         sender.setTitle(titleStr, for:  .normal)
    }
    @IBAction func importFile(_ sender: UIButton) {
        print("uploading..")
        btn = sender
        let documentPicker = UIDocumentPickerViewController(documentTypes: [kUTTypeCompositeContent as String], in: .import)
                    documentPicker.delegate = self
                    documentPicker.allowsMultipleSelection = false
                    present(documentPicker,animated: true, completion: nil)
                    print("aaaaaa")

        
                }
                
                
            }
            extension ViewController: UIDocumentPickerDelegate{
                
                func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls:[URL]){
                    guard let selectedFileURL = urls.first else{
                        return
                    }
                    let dir = FileManager.default.urls(for: .documentDirectory, in:.userDomainMask).first!
                    let sandboxFileURL = dir.appendingPathComponent(selectedFileURL.lastPathComponent)
                    titleStr = selectedFileURL.lastPathComponent
                    refreshTitle(btn)
                    if FileManager.default.fileExists(atPath: sandboxFileURL.path){
                        print("already exists! do nothing")
                        print(selectedFileURL.lastPathComponent)
                    }
                    else{
                        do{
                            try FileManager.default.copyItem(at: selectedFileURL, to: sandboxFileURL)
                            print(sandboxFileURL.lastPathComponent)
                        }
                        catch{
                            print("error")
                        }
                    }
                }
            }
