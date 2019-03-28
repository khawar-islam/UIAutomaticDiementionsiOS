//
//  DemoXib.swift
//  XibDemo
//
//  Created by hitesh on 27/03/19.
//  Copyright © 2019 hitesh. All rights reserved.
//

import UIKit

class DemoXib: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var radioStackView: UIStackView!
    @IBOutlet weak var lastView: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("DemoXib", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    // MARK:- IBActions
    @IBAction func radioButtonAction(_ sender: UIButton) {
        
        let view1 = radioStackView.viewWithTag(200) // get the first view
        let view2 = radioStackView.viewWithTag(201) // 2nd view
        
        sender.setImage( UIImage(named: "selected")  , for: .normal)
        
        switch sender.tag {
        case 100:
            let btn2 = view2?.viewWithTag(101) as? UIButton // get the second radio button in view 2 and set it unselected
            btn2?.setImage(UIImage(named: "unselected"), for: .normal)
        case 101:
            let btn1 = view1?.viewWithTag(100) as? UIButton // get the first radio button in view 2 and set it unselected
            btn1?.setImage(UIImage(named: "unselected"), for: .normal)
        default:
            break
        }

        lastView.isHidden = sender.tag == 101 && sender.currentImage == UIImage(named: "selected") // only show the bottom uiview if sender is same as the radio button 2 and the image is the selected one
    }
    

}
