// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DisassociateResolverQueryLogConfigInputBody: Equatable {
    public let resolverQueryLogConfigId: String?
    public let resourceId: String?
}

extension DisassociateResolverQueryLogConfigInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case resolverQueryLogConfigId = "ResolverQueryLogConfigId"
        case resourceId = "ResourceId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resolverQueryLogConfigIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resolverQueryLogConfigId)
        resolverQueryLogConfigId = resolverQueryLogConfigIdDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
    }
}