import MapKit
import YelpAPI

public class AnnotationFactory {
  public func createBusinessMapView(for business: Business) -> BusinessMapViewModel {
    
    
    let coordinate = business.location
    let name = business.name
    let rating = business.rating
    let image: UIImage
    
    switch rating {
    case 0.0..<3.0: image = UIImage(named: "terrible")!
    case 3.0..<3.5: image = UIImage(named: "bad")!
    case 3.5..<4.0: image = UIImage(named: "meh")!
    case 4.0..<4.75: image = UIImage(named: "good")!
    case 4.75..<5.01: image = UIImage(named: "great")!
    default: image = UIImage(named: "bad")!
    }
    
    return BusinessMapViewModel(coordinate: coordinate,
                                name: name,
                                rating: rating,
                                image: image)
  }
}
