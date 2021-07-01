// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AcceptVpcPeeringConnectionOutputResponseBody: Equatable {
    public let vpcPeeringConnection: VpcPeeringConnection?
}

extension AcceptVpcPeeringConnectionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case vpcPeeringConnection = "vpcPeeringConnection"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let vpcPeeringConnectionDecoded = try containerValues.decodeIfPresent(VpcPeeringConnection.self, forKey: .vpcPeeringConnection)
        vpcPeeringConnection = vpcPeeringConnectionDecoded
    }
}