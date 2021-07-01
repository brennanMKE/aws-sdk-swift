// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDirectConnectGatewayAttachmentsOutputResponseBody: Equatable {
    public let directConnectGatewayAttachments: [DirectConnectGatewayAttachment]?
    public let nextToken: String?
}

extension DescribeDirectConnectGatewayAttachmentsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case directConnectGatewayAttachments
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let directConnectGatewayAttachmentsContainer = try containerValues.decodeIfPresent([DirectConnectGatewayAttachment?].self, forKey: .directConnectGatewayAttachments)
        var directConnectGatewayAttachmentsDecoded0:[DirectConnectGatewayAttachment]? = nil
        if let directConnectGatewayAttachmentsContainer = directConnectGatewayAttachmentsContainer {
            directConnectGatewayAttachmentsDecoded0 = [DirectConnectGatewayAttachment]()
            for structure0 in directConnectGatewayAttachmentsContainer {
                if let structure0 = structure0 {
                    directConnectGatewayAttachmentsDecoded0?.append(structure0)
                }
            }
        }
        directConnectGatewayAttachments = directConnectGatewayAttachmentsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}