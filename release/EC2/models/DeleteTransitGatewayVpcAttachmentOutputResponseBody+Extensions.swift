// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteTransitGatewayVpcAttachmentOutputResponseBody: Equatable {
    public let transitGatewayVpcAttachment: TransitGatewayVpcAttachment?
}

extension DeleteTransitGatewayVpcAttachmentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case transitGatewayVpcAttachment = "transitGatewayVpcAttachment"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transitGatewayVpcAttachmentDecoded = try containerValues.decodeIfPresent(TransitGatewayVpcAttachment.self, forKey: .transitGatewayVpcAttachment)
        transitGatewayVpcAttachment = transitGatewayVpcAttachmentDecoded
    }
}