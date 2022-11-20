//
//  ViewController.swift
//  Weather forecast
//
//  Created by Lan on 11/19/22.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var lblCity: UILabel!
    
    @IBOutlet weak var txtCity: UITextField!
    
    @IBOutlet weak var tblView: UITableView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        
        let lat = location.coordinate.latitude
        let lng = location.coordinate.longitude
        
        print(lat)
        print(lng)
        
        getAddressFromLocation(location: location)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    func getAddressFromLocation( location: CLLocation){
        
        let clGeoCoder = CLGeocoder()
        
        clGeoCoder.reverseGeocodeLocation(location) { placeMarks, error in
            
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            var address = ""
            guard let place = placeMarks?.first else { return }
            
            if place.locality != nil {
                address += place.locality!
            }

            print(address)

            self.txtCity.text = address
            
        }
    }

    @IBAction func getWeatherAction(_ sender: Any) {
    }
    
}

