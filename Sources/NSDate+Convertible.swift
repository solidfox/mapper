import Foundation

/**
 Date Convertible implementation
 
 This implementation assumes the given is a string containing a date on the
 ISO 8601 compliant form produced by JavaScript's toJSON method.
 E.g. 2012-04-23T18:25:43.511Z
 
 It also supports variations such as
 2012-04-23T18:25:43Z
 2012-04-23T18:25:43GMT+01
 2012-04-23Z
 
 Note that some form of time zone indication is required to avoid localization ambiguity.
 
 For unsupported formats a `MapperError` is thrown
 */
extension NSDate:Convertible {
    public static func fromMap(value: AnyObject?) throws -> NSDate {
        guard let string = value as? String else {
            throw MapperError()
        }
        
        let supportedDateFormats = [
            "yyyy-MM-dd'T'HH:mm:ss.SSSz",
            "yyyy-MM-dd'T'HH:mm:ssz",
            "yyyy-MM-ddz",
            "yyyyMMdd'T'HHmmss.SSSz",
            "yyyyMMdd'T'HHmmssz",
            "yyyyMMddz"
        ]
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        
        for dateFormat in supportedDateFormats {
            dateFormatter.dateFormat = dateFormat
            if let date = dateFormatter.dateFromString(string) {
                return date
            }
        }
        
        throw MapperError()
    }
}