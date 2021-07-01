// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListNamedShadowsForThingOutputResponseBody: Equatable {
    public let results: [String]?
    public let nextToken: String?
    public let timestamp: Int
}

extension ListNamedShadowsForThingOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case results
        case timestamp
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resultsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .results)
        var resultsDecoded0:[String]? = nil
        if let resultsContainer = resultsContainer {
            resultsDecoded0 = [String]()
            for string0 in resultsContainer {
                if let string0 = string0 {
                    resultsDecoded0?.append(string0)
                }
            }
        }
        results = resultsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let timestampDecoded = try containerValues.decode(Int.self, forKey: .timestamp)
        timestamp = timestampDecoded
    }
}