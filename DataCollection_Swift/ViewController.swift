//
//  ViewController.swift
//  DataCollection_Swift
//
//  Created by geowin on 2020/7/22.
//  Copyright © 2020 geowin. All rights reserved.
//

import UIKit
import ArcGIS

class ViewController: UIViewController {
    var lastSelectedButton: UIButton?
    @IBOutlet weak var mapView: AGSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialMap()
        registerLicense()
        
//        UIApplication.shared
    }
    
    //MARK: 初始化地图
    private func initialMap(){
        let tiledLayer = AGSArcGISTiledLayer(url:.baseMapURL)
        let baseMap = AGSBasemap(baseLayer: tiledLayer)
        
        let map = AGSMap(basemap: baseMap)
        let location = CLLocationCoordinate2D(latitude: 40.838096, longitude: 111.677914)
        let center = AGSPoint(clLocationCoordinate2D: location)
        map.initialViewpoint = AGSViewpoint(center: center, scale: 20000)
        
        mapView.map = map
        
    }
    
    //MARK: 注册LicenseKey
    private func registerLicense(){
        do {
            try AGSArcGISRuntimeEnvironment.setLicenseKey(.licenseKey)
        } catch  {
            print("License register failed")
        }
        /// hide attributionText
        mapView.isAttributionTextVisible = false
    }


    @IBAction func buttonClick(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
//        if lastSelectedButton != nil {
//            lastSelectedButton?.isSelected = false
//        }
//        lastSelectedButton = sender
//        sender.isSelected = true
//        switch sender.tag {
//        case 1:
//            print(sender.tag)
//            break
//
//        default: break
            
//        }
    }
}

