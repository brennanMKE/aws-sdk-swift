// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeTransitGatewayConnectsOutputResponseBody: Equatable {
    public let transitGatewayConnects: [TransitGatewayConnect]?
    public let nextToken: String?
}

extension DescribeTransitGatewayConnectsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case transitGatewayConnects = "transitGatewayConnectSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.transitGatewayConnects) {
            struct KeyVal0{struct item{}}
            let transitGatewayConnectsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .transitGatewayConnects)
            if let transitGatewayConnectsWrappedContainer = transitGatewayConnectsWrappedContainer {
                let transitGatewayConnectsContainer = try transitGatewayConnectsWrappedContainer.decodeIfPresent([TransitGatewayConnect].self, forKey: .member)
                var transitGatewayConnectsBuffer:[TransitGatewayConnect]? = nil
                if let transitGatewayConnectsContainer = transitGatewayConnectsContainer {
                    transitGatewayConnectsBuffer = [TransitGatewayConnect]()
                    for structureContainer0 in transitGatewayConnectsContainer {
                        transitGatewayConnectsBuffer?.append(structureContainer0)
                    }
                }
                transitGatewayConnects = transitGatewayConnectsBuffer
            } else {
                transitGatewayConnects = []
            }
        } else {
            transitGatewayConnects = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}