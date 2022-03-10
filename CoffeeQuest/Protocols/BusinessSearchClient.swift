import MapKit

public protocol BusinessSearchClient {
  func search(with coordinate: CLLocationCoordinate2D,
              term: String,
              limit: UInt,
              offset: UInt,
              success: @escaping (([Business]) -> Void),
              failure: @escaping ((Error?) -> Void))
}

