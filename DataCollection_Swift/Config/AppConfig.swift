//
//  AppConfig.swift
//  DataCollection_Swift
//
//  Created by geowin on 2020/7/22.
//  Copyright © 2020 geowin. All rights reserved.
//

import Foundation

extension String{
    static let baseMap = "http://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineCommunity/MapServer"
    static let licenseKey = "runtimelite,1000,rud9017516036,none,FA0RJAY3FP57P2ELJ061s"
}

extension URL{
    static let baseMapURL = URL(string:.baseMap)!
}
