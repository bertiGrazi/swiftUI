//
//  MapView.swift
//  AluraViagens
//
//  Created by Grazielli Berti on 02/01/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordenada: CLLocationCoordinate2D
    func makeUIView(context: Context) -> MKMapView {
        //qual tipo de view do UIKIt vamos utilizar no SwiftUI
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //onde vamos utilizar, de fato, a view do mapa
        
        //vizualicao da região que estamos abrindo no mapa
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        //criando a região
        let region = MKCoordinateRegion(center: coordenada, span: span)
        //vai vir de uma região
        uiView.setRegion(region, animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordenada: viagens[0].localizacao)
    }
}

