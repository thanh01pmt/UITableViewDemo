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
        performSegue(withIdentifier: "toVCSoundTable", sender: self)
    }
    
    @IBAction func unwindToVCAnimation(_ unwindSegue: UIStoryboardSegue) {
        let source = unwindSegue.source as? VCSoundTable
        selectedSound = source?.selectedSound
        lblSelectedSound.text = "Sound: \(selectedSound ?? "Nil")"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSelectedSound.text = "Sound: \(selectedSound ?? "Nil")"
    }

}
