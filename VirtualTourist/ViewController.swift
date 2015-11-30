//
//  ViewController.swift
//  VirtualTourist
//
//  Created by ROHIT GUPTA on 11/28/15.
//  Copyright © 2015 ROHIT GUPTA. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var map: MKMapView!
    
    let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lattiude : CLLocationDegrees = 33.8090
        let longitude : CLLocationDegrees = -117.9190
        
        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(lattiude, longitude)
        
        let latitudeDelta : CLLocationDegrees = 0.03
        let longitudeDelta : CLLocationDegrees = 0.03
        let span : MKCoordinateSpan = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
        
        let region : MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        // add map location and pin
        
        let disneyland = MKPointAnnotation()
        disneyland.coordinate = location
        disneyland.title = "The Happiest Place in the World!"
        map.addAnnotation(disneyland)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

