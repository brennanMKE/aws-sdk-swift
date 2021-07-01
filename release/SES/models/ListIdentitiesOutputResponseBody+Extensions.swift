// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListIdentitiesOutputResponseBody: Equatable {
    public let identities: [String]?
    public let nextToken: String?
}

extension ListIdentitiesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case identities = "Identities"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ListIdentitiesResult"))
        if containerValues.contains(.identities) {
            struct KeyVal0{struct member{}}
            let identitiesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .identities)
            if let identitiesWrappedContainer = identitiesWrappedContainer {
                let identitiesContainer = try identitiesWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var identitiesBuffer:[String]? = nil
                if let identitiesContainer = identitiesContainer {
                    identitiesBuffer = [String]()
                    for stringContainer0 in identitiesContainer {
                        identitiesBuffer?.append(stringContainer0)
                    }
                }
                identities = identitiesBuffer
            } else {
                identities = []
            }
        } else {
            identities = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}