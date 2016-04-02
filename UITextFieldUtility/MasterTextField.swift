//
//  MasterTextField.swift
//  RentAjarApp
//
//  Created by Madhav Anadkat on 3/18/16.
//  Copyright © 2016 BrevitySoftware. All rights reserved.
//

import UIKit

class MasterTextField: UITextField, UITextFieldDelegate {

    let inset: CGFloat = 10
    
    // placeholder position
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , inset , inset)
    }
    
    // text position
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , inset , inset)
    }
    
    override func placeholderRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, inset, inset)
    }
    
      
    
}
