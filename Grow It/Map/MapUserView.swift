//
//  ContentView.swift
//  Grow It
//
//  Created by Nnéna on 24/04/2023.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapUserView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    @State private var selectedLocation: Profil?
    @State private var isLocationDetailPresented = false // Nouvel état pour afficher/masquer le sheet
    
    
    
    var body: some View {
        
        //            Color("beige").ignoresSafeArea()
        NavigationStack {
            ZStack {
                Map(coordinateRegion: $viewModel.mapRegion, showsUserLocation: true, annotationItems: userArray) { location in
                    MapAnnotation(coordinate: location.location) {
                        
                        Button(action: {
                            self.selectedLocation = location
                        }) {
                            Image("pinMap")
                                .resizable()
                                .frame(width: 33, height: 44)
                        }
                    }
                }
                //                .navigationTitle("Trouver des Aromatic Lovers")
                //                .foregroundColor(Color("darkGreen"))
            }
//            .ignoresSafeArea()
            .edgesIgnoringSafeArea(.top)
            .accentColor(Color(.systemMint))
            .onAppear{
                viewModel.checkIfLocationServicesIsEnabled()
            }
            .sheet(item: $selectedLocation) { location in
                LocationDetailView(selectedUser: location)
            }
        }
        
    }
    
    struct LocationDetailView: View {
        
        let selectedUser: Profil
        
        var body: some View {
            ZStack {
                Color("beige").ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack{
                        Image(selectedUser.profilPic)
                            .resizable()
                            .frame(width: 150, height: 140)
                            .cornerRadius(20)
                        Text(selectedUser.profilName)
                            .font(.title)
                            .foregroundColor(Color("darkGreen"))
                            .font(.custom("gillsans", size: 25))
                    }
                    .padding(20);                Text(selectedUser.presentation)
                    .fontWeight(.light)
                    .foregroundColor(Color("darkGreen"))
                    .font(.custom("gillsans", size: 22))
                    .padding(20)
                    Text(selectedUser.gives)
                        .fontWeight(.medium)
                        .foregroundColor(Color("darkGreen"))
                        .lineLimit(nil)
                        .font(.custom("gillsans", size: 22))
                    Text(selectedUser.wants)
                        .fontWeight(.medium)
                        .foregroundColor(Color("darkGreen"))
                        .font(.custom("gillsans", size: 22))
                    Spacer()
                    Spacer()
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
//                .background(Color("beige").ignoresSafeArea())
                .cornerRadius(10)
                .padding()
            .shadow(radius: 10)
            }
        }
        
    }
    
    
    
}


// À TOUJOURS GARDER SINON PAS DE CANVA VISIBLE
// Si fausse manip go sur les petits traits en dessous du + et sélectionner "Canva"

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapUserView()
    }
}

final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.856, longitude: 2.3422), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Show an alert letting them know this is off and to go turn it on.")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted likely due to parental controls.")
        case .denied:
            print("You have nied this app location permission. Go into settings to change it.")
        case .authorizedAlways, .authorizedWhenInUse:
            mapRegion = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager){
        checkLocationAuthorization()
    }
}
