import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK: - property
    
    @State private var region: MKCoordinateRegion = {
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLevel)
        
        
        return mapRegion
    }()
    
    let locations: [NationalParklocation] = Bundle.main.decode("locations.json")
    
    // MARK: - body
    var body: some View {
        Map(coordinateRegion: $region ,
            annotationItems: locations ,
            annotationContent: {
            item in
            // MapPin(coordinate: item.location ,tint: .accentColor)
            
            //MapMarker(coordinate: item.location , tint: .accentColor)
            
            
//            MapAnnotation(coordinate: item.location){
//                Image(item.image).resizable().scaledToFit()
//                    .frame(width: 32 ,height: 32 , alignment: .center)
//                    .cornerRadius(50)
//                // MapAnnotationView(location: )
//            }
            
            
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        })
        .overlay(
              HStack(alignment: .center, spacing: 12) {
                Image("compass")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                  HStack {
                    Text("Latitude:")
                      .font(.footnote)
                      .fontWeight(.bold)
                      .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.center.latitude)")
                      .font(.footnote)
                      .foregroundColor(.white)
                  }
                  
                  Divider()
                  
                  HStack {
                    Text("Longitude:")
                      .font(.footnote)
                      .fontWeight(.bold)
                      .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.center.longitude)")
                      .font(.footnote)
                      .foregroundColor(.white)
                  }
                }
              } //: HSTACK
              .padding(.vertical, 12)
              .padding(.horizontal, 16)
              .background(
                Color.black
                  .cornerRadius(8)
                  .opacity(0.6)
              )
              .padding()
              , alignment: .top
            )
        .ignoresSafeArea()
    }
}

#Preview {
    MapView()
}
