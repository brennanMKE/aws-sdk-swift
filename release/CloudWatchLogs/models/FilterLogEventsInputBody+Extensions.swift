// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct FilterLogEventsInputBody: Equatable {
    public let logGroupName: String?
    public let logStreamNames: [String]?
    public let logStreamNamePrefix: String?
    public let startTime: Int?
    public let endTime: Int?
    public let filterPattern: String?
    public let nextToken: String?
    public let limit: Int?
    public let interleaved: Bool?
}

extension FilterLogEventsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endTime
        case filterPattern
        case interleaved
        case limit
        case logGroupName
        case logStreamNamePrefix
        case logStreamNames
        case nextToken
        case startTime
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let logGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .logGroupName)
        logGroupName = logGroupNameDecoded
        let logStreamNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .logStreamNames)
        var logStreamNamesDecoded0:[String]? = nil
        if let logStreamNamesContainer = logStreamNamesContainer {
            logStreamNamesDecoded0 = [String]()
            for string0 in logStreamNamesContainer {
                if let string0 = string0 {
                    logStreamNamesDecoded0?.append(string0)
                }
            }
        }
        logStreamNames = logStreamNamesDecoded0
        let logStreamNamePrefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .logStreamNamePrefix)
        logStreamNamePrefix = logStreamNamePrefixDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .endTime)
        endTime = endTimeDecoded
        let filterPatternDecoded = try containerValues.decodeIfPresent(String.self, forKey: .filterPattern)
        filterPattern = filterPatternDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let limitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .limit)
        limit = limitDecoded
        let interleavedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .interleaved)
        interleaved = interleavedDecoded
    }
}