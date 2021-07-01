// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateOutboundCrossClusterSearchConnectionInputBody: Equatable {
    public let sourceDomainInfo: DomainInformation?
    public let destinationDomainInfo: DomainInformation?
    public let connectionAlias: String?
}

extension CreateOutboundCrossClusterSearchConnectionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectionAlias = "ConnectionAlias"
        case destinationDomainInfo = "DestinationDomainInfo"
        case sourceDomainInfo = "SourceDomainInfo"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceDomainInfoDecoded = try containerValues.decodeIfPresent(DomainInformation.self, forKey: .sourceDomainInfo)
        sourceDomainInfo = sourceDomainInfoDecoded
        let destinationDomainInfoDecoded = try containerValues.decodeIfPresent(DomainInformation.self, forKey: .destinationDomainInfo)
        destinationDomainInfo = destinationDomainInfoDecoded
        let connectionAliasDecoded = try containerValues.decodeIfPresent(String.self, forKey: .connectionAlias)
        connectionAlias = connectionAliasDecoded
    }
}