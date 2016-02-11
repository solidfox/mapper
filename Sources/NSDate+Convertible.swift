import Foundation

/**
 Date Convertible implementation
 
 This implementation assumes the given is a string containing a date on the
 ISO 8601 compliant form produced by JavaScript's toJSON method.
 E.g. 2012-04-23T18:25:43.511Z
 if not a `MapperError` is thrown
 */
extension NSDate:Convertible {
    public static func fromMap(value: AnyObject?) throws -> NSDate {
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSz"
        if let string = value as? String, let date = dateFormatter.dateFromString(string) {
            return date
        }
        
        throw MapperError()
    }
}