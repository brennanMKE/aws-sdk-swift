// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAccessPointOutputResponseBody: Equatable {
    public let accessPointArn: String?
}

extension CreateAccessPointOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accessPointArn = "AccessPointArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessPointArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessPointArn)
        accessPointArn = accessPointArnDecoded
    }
}