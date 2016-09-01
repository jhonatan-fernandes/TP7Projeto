//
//  ViewController.swift
//  TP7Ptojeto
//
//  Created by Jhonathan Santos on 01/09/16.
//  Copyright © 2016 Jhonathan Santos. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

   
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        
        
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2DMake(-22.911957, -43.165839)
        pin.title = "Aeroporto do Rio de Janeiro - Santos Dumont"
        pin.subtitle = "Aeroporto"
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2DMake(-22.894376, -43.179441)
        pin2.title = "Museu do Amanhã"
        pin2.subtitle = "Museu da Praça Mauá"
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2DMake(-22.902461, -43.172053)
        pin3.title = "CCR Barcas"
        pin3.subtitle = "Praça XV"
        
        let pin4 = MKPointAnnotation()
        pin4.coordinate = CLLocationCoordinate2DMake(-22.900998, -43.177825)
        pin4.title = "Igreja da Candelária"
        pin4.subtitle = "Praça Pio X"
        
        let pin5 = MKPointAnnotation()
        pin5.coordinate = CLLocationCoordinate2DMake(-22.894957, -43.172379)
        pin5.title = "Ilha das Cobras"
        pin5.subtitle = "Centro do RJ"
        
        self.mapView.addAnnotation(pin)
        self.mapView.addAnnotation(pin2)
        self.mapView.addAnnotation(pin3)
        self.mapView.addAnnotation(pin4)
        self.mapView.addAnnotation(pin5)
    }

    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func mudaRegiao(sender: UISegmentedControl) {
        
        
        let index = sender.selectedSegmentIndex
        if index == 0 {
            self.mapView.mapType = .Standard
        }
            
        else if index == 1 {
            self.mapView.mapType = .Satellite
        }
            
        else {
            self.mapView.mapType = .Hybrid
        }

    }
    
    @IBAction func regiaoCentro(sender: UIButton) {
        
        var coordenada = CLLocationCoordinate2D()
        
        coordenada.latitude = -22.908119
        coordenada.longitude = -43.180608
        
        let regiao = MKCoordinateRegionMakeWithDistance(coordenada, 500, 500);mapView.setRegion(regiao, animated: true)

    }
    
    @IBAction func regiaoIpanema(sender: UIButton) {
        
        var coordenada = CLLocationCoordinate2D()
        
        coordenada.latitude = -22.985147
        coordenada.longitude = -43.198270
        
        let regiao = MKCoordinateRegionMakeWithDistance(coordenada, 500, 500);mapView.setRegion(regiao, animated: true)
        
    }
    

    

}

