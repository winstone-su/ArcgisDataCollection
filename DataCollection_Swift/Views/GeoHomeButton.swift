//
//  GeoHomeButton.swift
//  DataCollection_Swift
//
//  Created by geowin on 2020/7/22.
//  Copyright © 2020 geowin. All rights reserved.
//

import UIKit

class GeoHomeButton: UIButton {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
//    override func draw(_ rect: CGRect) {
//        // Drawing code
//        let midX = self.frame.size.width / 2
//        let midY = self.frame.size.height / 2
//        self.titleLabel?.center = CGPoint(x: midX, y: midY + 15)
//        self.imageView?.center = CGPoint(x: midX, y: midY - 10)
//    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let midX = self.frame.size.width / 2
        let midY = self.frame.size.height / 2
        self.titleLabel?.center = CGPoint(x: midX, y: midY + 15)
        self.imageView?.center = CGPoint(x: midX, y: midY - 10)
    }
    

}
