// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeModelQualityJobDefinitionInputBody: Equatable {
    public let jobDefinitionName: String?
}

extension DescribeModelQualityJobDefinitionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case jobDefinitionName = "JobDefinitionName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobDefinitionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobDefinitionName)
        jobDefinitionName = jobDefinitionNameDecoded
    }
}