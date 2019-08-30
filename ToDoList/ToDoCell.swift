//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Maahd Shahzad on 8/30/19.
//  Copyright © 2019 Maahd Shahzad. All rights reserved.
//

import UIKit

protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    weak var delegate: ToDoCellDelegate?
    
    @IBOutlet var isCompletebutton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
