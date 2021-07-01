// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetCalendarStateInputBody: Equatable {
    public let calendarNames: [String]?
    public let atTime: String?
}

extension GetCalendarStateInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case atTime = "AtTime"
        case calendarNames = "CalendarNames"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let calendarNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .calendarNames)
        var calendarNamesDecoded0:[String]? = nil
        if let calendarNamesContainer = calendarNamesContainer {
            calendarNamesDecoded0 = [String]()
            for string0 in calendarNamesContainer {
                if let string0 = string0 {
                    calendarNamesDecoded0?.append(string0)
                }
            }
        }
        calendarNames = calendarNamesDecoded0
        let atTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .atTime)
        atTime = atTimeDecoded
    }
}