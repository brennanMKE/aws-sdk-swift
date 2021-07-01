// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDomainAssociationsOutputResponseBody: Equatable {
    public let domainAssociations: [DomainAssociation]?
    public let nextToken: String?
}

extension ListDomainAssociationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domainAssociations
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainAssociationsContainer = try containerValues.decodeIfPresent([DomainAssociation?].self, forKey: .domainAssociations)
        var domainAssociationsDecoded0:[DomainAssociation]? = nil
        if let domainAssociationsContainer = domainAssociationsContainer {
            domainAssociationsDecoded0 = [DomainAssociation]()
            for structure0 in domainAssociationsContainer {
                if let structure0 = structure0 {
                    domainAssociationsDecoded0?.append(structure0)
                }
            }
        }
        domainAssociations = domainAssociationsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}