//
//  ViewController.swift
//  NEU Map
//
//  Created by iMac_08 on 6/23/2559 BE.
//  Copyright © 2559 Natthaphet. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    
    
    
    @IBOutlet weak var myMapView: MKMapView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myLat:CLLocationDegrees = 16.423483
        var myLng:CLLocationDegrees = 102.815804
        
        var lotDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(lotDelta, lngDelta)
        var neuLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLng)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(neuLocation, theSpan)
        
        self.myMapView.setRegion(theRegion, animated: true)
        
        var neuAnotation = MKPointAnnotation()
        neuAnotation.coordinate = neuLocation
        neuAnotation.title = "ม.ภาค"
        neuAnotation.subtitle = "จังหวัต ขอนแก่น"
        self.myMapView.addAnnotation(neuAnotation)
        
        
        
        
        
        
        
        
    }// viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//didReceiveMemoryWarning


}

