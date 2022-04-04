import Foundation

public extension Date {  
  static var now: Date { Date() }
  
  /// Get a component representation of todays Date as Int.
  /// - Parameter keyPath:
  /// - Returns: DateComponent representation as Int. Returns 0 when component is not available
  static func getCurrent(
    _ keyPath: KeyPath<DateComponents, Int?>,
    _ date: () -> Date = Date.init,
    _ calendar: Calendar = .current
  ) -> Int {
    let components = calendar.dateComponents([.year, .month, .day], from: date())
    let component = components[keyPath: keyPath] ?? 0
    return component
  }
  
  /// - Returns: Formatted time without date components.
  var humanReadableTime: String {
    DateFormatter.localeShortTimeFormatter.string(from: self)
  }
  
  /// - Returns: Formatted date without time components.
  var humanReadableDate: String {
    DateFormatter.localeShortDateFormatter.string(from: self)
  }
}