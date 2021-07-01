// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeIndexOutputResponseBody: Equatable {
    public let indexName: String?
    public let indexStatus: IndexStatus?
    public let schema: String?
}

extension DescribeIndexOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case indexName
        case indexStatus
        case schema
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexName)
        indexName = indexNameDecoded
        let indexStatusDecoded = try containerValues.decodeIfPresent(IndexStatus.self, forKey: .indexStatus)
        indexStatus = indexStatusDecoded
        let schemaDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schema)
        schema = schemaDecoded
    }
}