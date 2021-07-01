// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutInsightSelectorsInputBody: Equatable {
    public let trailName: String?
    public let insightSelectors: [InsightSelector]?
}

extension PutInsightSelectorsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case insightSelectors = "InsightSelectors"
        case trailName = "TrailName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trailNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .trailName)
        trailName = trailNameDecoded
        let insightSelectorsContainer = try containerValues.decodeIfPresent([InsightSelector?].self, forKey: .insightSelectors)
        var insightSelectorsDecoded0:[InsightSelector]? = nil
        if let insightSelectorsContainer = insightSelectorsContainer {
            insightSelectorsDecoded0 = [InsightSelector]()
            for structure0 in insightSelectorsContainer {
                if let structure0 = structure0 {
                    insightSelectorsDecoded0?.append(structure0)
                }
            }
        }
        insightSelectors = insightSelectorsDecoded0
    }
}