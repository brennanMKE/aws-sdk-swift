// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteActionOutputResponseBody: Equatable {
    public let actionArn: String?
}

extension DeleteActionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case actionArn = "ActionArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let actionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .actionArn)
        actionArn = actionArnDecoded
    }
}