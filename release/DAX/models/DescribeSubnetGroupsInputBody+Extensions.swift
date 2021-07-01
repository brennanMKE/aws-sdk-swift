// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeSubnetGroupsInputBody: Equatable {
    public let subnetGroupNames: [String]?
    public let maxResults: Int?
    public let nextToken: String?
}

extension DescribeSubnetGroupsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case subnetGroupNames = "SubnetGroupNames"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let subnetGroupNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .subnetGroupNames)
        var subnetGroupNamesDecoded0:[String]? = nil
        if let subnetGroupNamesContainer = subnetGroupNamesContainer {
            subnetGroupNamesDecoded0 = [String]()
            for string0 in subnetGroupNamesContainer {
                if let string0 = string0 {
                    subnetGroupNamesDecoded0?.append(string0)
                }
            }
        }
        subnetGroupNames = subnetGroupNamesDecoded0
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}