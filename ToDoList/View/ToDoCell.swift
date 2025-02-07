//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Maricarmen on 13/05/24.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    @IBOutlet weak var isCompleteButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var delegate: ToDoCellDelegate?
    
    @IBAction func completeButtonTapped() {
        
        delegate?.checkmarkTapped(sender: self)
    }

}
