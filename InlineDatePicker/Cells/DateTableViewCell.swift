//
//  DateTableViewCell.swift
//  InlineDatePicker
//
//  Created by Rajtharan Gopal on 07/06/18.
//  Copyright © 2018 Rajtharan Gopal. All rights reserved.
//

import UIKit

class DateTableViewCell: UITableViewCell {
    
    let label = UILabel()
    
    // Reuser identifier
    class func reuseIdentifier() -> String {
        return "DateTableViewCellIdentifier"
    }
    
    // Cell height
    class func cellHeight() -> CGFloat {
        return 44.0
    }

    // Awake from nib method
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // Default init methods
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        initView()
    }
    
    // Default code method
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // Init method for cell
    func initView() {
        let screenWidth = UIScreen.main.bounds.width
        label.frame = CGRect(x: 15, y: 5, width: screenWidth - 30, height: 30)
        contentView.addSubview(label)
    }
    
    // Update text
    func updateText(text: String) {
        label.text = text
    }

}