//
//  VCSoundTable.swift
//  UITableViewDemo
//
//  Created by Tony Pham on 29/9/24.
//

import UIKit

class VCSoundTable: UIViewController {
    @IBOutlet weak var soundTable: UITableView!
    
    var selectedSound: String = ""
    
    var sounds: [String] = [
        "Sound 1", "Sound 2", "Sound 3", "Sound 4", "Sound 5",
        "Sound 6", "Sound 7", "Sound 8", "Sound 9", "Sound 10",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soundTable.dataSource = self
        soundTable.delegate = self
    }
}

extension VCSoundTable: UITableViewDataSource, UITableViewDelegate {
    
    // Khai báo số lượng phần tử muốn hiển thị trong bảng
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sounds.count
    }
    
    // Truy cập và hiệu chỉnh nội dung của một cell cụ thể
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // cell.textLabel?.text = sounds[indexPath.row] //decated
        var content = cell.defaultContentConfiguration()
        content.text = sounds[indexPath.row]
        content.secondaryText = "Soundtrack"
        cell.contentConfiguration = content
        return cell
    }
    
    // Xử lý sự kiện chọn một cell trong bảng
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let content = cell?.contentConfiguration as? UIListContentConfiguration
        
        selectedSound = content?.text ?? ""
        print(selectedSound)
    }
}


