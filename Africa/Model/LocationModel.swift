
import Foundation
import MapKit

// MARK: - LocatioModelElement
struct NationalParklocation: Codable , Identifiable{
    var id, name, image: String
    var latitude, longitude: Double
// computed property
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}



