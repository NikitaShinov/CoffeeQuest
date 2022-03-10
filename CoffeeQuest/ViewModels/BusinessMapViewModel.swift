import UIKit
import MapKit

public class BusinessMapViewModel: NSObject {
  
  // MARK: - Properties
  public let coordinate: CLLocationCoordinate2D
  public let name: String
  public let rating: Double
  
  public let image: UIImage
  public let ratingDescription: String
  
  // MARK: - Object Lifecycle
  public init(coordinate: CLLocationCoordinate2D,
              name: String,
              rating: Double,
              image: UIImage) {
    
    self.coordinate = coordinate
    self.name = name
    self.rating = rating
    self.image = image
    self.ratingDescription = "\(rating) stars"
    
  }
}

// MARK: - MKAnnotation
extension BusinessMapViewModel: MKAnnotation {
  
  public var title: String? {
    return name
  }
  
  public var subtitle: String? {
    return ratingDescription
  }
}
