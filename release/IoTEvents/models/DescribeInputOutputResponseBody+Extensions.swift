// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeInputOutputResponseBody: Equatable {
    public let input: Input?
}

extension DescribeInputOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case input
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let inputDecoded = try containerValues.decodeIfPresent(Input.self, forKey: .input)
        input = inputDecoded
    }
}