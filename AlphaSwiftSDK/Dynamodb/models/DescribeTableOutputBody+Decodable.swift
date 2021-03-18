// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct DescribeTableOutputBody: Equatable {
    public let table: TableDescription?
}

extension DescribeTableOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case table = "Table"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableDecoded = try containerValues.decodeIfPresent(TableDescription.self, forKey: .table)
        table = tableDecoded
    }
}
