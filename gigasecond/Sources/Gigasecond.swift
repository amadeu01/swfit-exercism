import Foundation

struct Gigasecond {
    private let gigasecond = TimeInterval(pow(10.0, 9.0))
    let RFC3339DateFormatter = DateFormatter()
    let gigasecondDate: Date

    init?(from dateString: String) {
        if dateString.isEmpty {
            return nil
        }
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

        let date = RFC3339DateFormatter.date(from: dateString)
        gigasecondDate = (date?.addingTimeInterval(gigasecond))!
    }
}

extension Gigasecond: CustomStringConvertible {
    var description: String {
        return RFC3339DateFormatter.string(from: gigasecondDate)
    }
}
