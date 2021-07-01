// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAccessPreviewFindingsInputBody: Equatable {
    public let analyzerArn: String?
    public let filter: [String:Criterion]?
    public let nextToken: String?
    public let maxResults: Int?
}

extension ListAccessPreviewFindingsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case analyzerArn
        case filter
        case maxResults
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let analyzerArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .analyzerArn)
        analyzerArn = analyzerArnDecoded
        let filterContainer = try containerValues.decodeIfPresent([String: Criterion?].self, forKey: .filter)
        var filterDecoded0: [String:Criterion]? = nil
        if let filterContainer = filterContainer {
            filterDecoded0 = [String:Criterion]()
            for (key0, criterion0) in filterContainer {
                if let criterion0 = criterion0 {
                    filterDecoded0?[key0] = criterion0
                }
            }
        }
        filter = filterDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}