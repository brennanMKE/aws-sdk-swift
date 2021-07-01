// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAutoMLJobOutputResponseBody: Equatable {
    public let autoMLJobArn: String?
}

extension CreateAutoMLJobOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case autoMLJobArn = "AutoMLJobArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let autoMLJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .autoMLJobArn)
        autoMLJobArn = autoMLJobArnDecoded
    }
}