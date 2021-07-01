// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ModifyLoadBalancerAttributesOutputResponseBody: Equatable {
    public let loadBalancerName: String?
    public let loadBalancerAttributes: LoadBalancerAttributes?
}

extension ModifyLoadBalancerAttributesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case loadBalancerAttributes = "LoadBalancerAttributes"
        case loadBalancerName = "LoadBalancerName"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ModifyLoadBalancerAttributesResult"))
        let loadBalancerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .loadBalancerName)
        loadBalancerName = loadBalancerNameDecoded
        let loadBalancerAttributesDecoded = try containerValues.decodeIfPresent(LoadBalancerAttributes.self, forKey: .loadBalancerAttributes)
        loadBalancerAttributes = loadBalancerAttributesDecoded
    }
}