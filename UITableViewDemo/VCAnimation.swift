//
//  VCAnimation.swift
//  UITableViewDemo
//
//  Created by Tony Pham on 19/10/24.
//

import UIKit

class VCAnimation: UIViewController {
    var selectedSound: String?

    @IBOutlet weak var lblSelectedSound: UILabel!
    @IBAction func selectSound(_ sender: Any) {
        // Review 1
        // performSegue
    }
    
    // Review 2
    // @IBAction func unwindToVCAnimation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSelectedSound.text = "Sound: \(selectedSound ?? "Nil")"
    }

}
