// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDomainEndpointOptionsOutputResponseBody: Equatable {
    public let domainEndpointOptions: DomainEndpointOptionsStatus?
}

extension DescribeDomainEndpointOptionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domainEndpointOptions = "DomainEndpointOptions"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeDomainEndpointOptionsResult"))
        let domainEndpointOptionsDecoded = try containerValues.decodeIfPresent(DomainEndpointOptionsStatus.self, forKey: .domainEndpointOptions)
        domainEndpointOptions = domainEndpointOptionsDecoded
    }
}