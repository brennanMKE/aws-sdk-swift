// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateTableOutputResponseBody: Equatable {
    public let table: Table?
}

extension UpdateTableOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case table = "Table"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableDecoded = try containerValues.decodeIfPresent(Table.self, forKey: .table)
        table = tableDecoded
    }
}