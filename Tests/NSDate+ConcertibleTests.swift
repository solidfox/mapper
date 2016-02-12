
import Mapper
import XCTest

final class NSDateConvertibleTests: XCTestCase {
    func testCreatingNSDate() {
        struct Test: Mappable {
            let date: NSDate
            init(map: Mapper) throws {
                try self.date = map.from("date")
            }
        }
        
        let expectedDate = NSDate(timeIntervalSince1970: 0)

        let test = try! Test(map: Mapper(JSON: ["date": "1970-01-01T00:00:00.000Z"]))
        XCTAssertTrue(test.date == expectedDate)
        
        let test2 = try! Test(map: Mapper(JSON: ["date": "1970-01-01T00:00:00Z"]))
        XCTAssertTrue(test2.date == expectedDate)
        
        let test3 = try! Test(map: Mapper(JSON: ["date": "1970-01-01Z"]))
        XCTAssertTrue(test3.date == expectedDate)
    }
    
    func testInvalidDate() {
        struct Test: Mappable {
            let date: NSDate?
            init(map: Mapper) throws {
                self.date = map.optionalFrom("date")
            }
        }
        
        let test = try! Test(map: Mapper(JSON: ["date": "1970-01-01"]))
        XCTAssertNil(test.date)
    }
}
