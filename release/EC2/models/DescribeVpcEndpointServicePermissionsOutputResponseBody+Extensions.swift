// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeVpcEndpointServicePermissionsOutputResponseBody: Equatable {
    public let allowedPrincipals: [AllowedPrincipal]?
    public let nextToken: String?
}

extension DescribeVpcEndpointServicePermissionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case allowedPrincipals = "allowedPrincipals"
        case nextToken = "nextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.allowedPrincipals) {
            struct KeyVal0{struct item{}}
            let allowedPrincipalsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .allowedPrincipals)
            if let allowedPrincipalsWrappedContainer = allowedPrincipalsWrappedContainer {
                let allowedPrincipalsContainer = try allowedPrincipalsWrappedContainer.decodeIfPresent([AllowedPrincipal].self, forKey: .member)
                var allowedPrincipalsBuffer:[AllowedPrincipal]? = nil
                if let allowedPrincipalsContainer = allowedPrincipalsContainer {
                    allowedPrincipalsBuffer = [AllowedPrincipal]()
                    for structureContainer0 in allowedPrincipalsContainer {
                        allowedPrincipalsBuffer?.append(structureContainer0)
                    }
                }
                allowedPrincipals = allowedPrincipalsBuffer
            } else {
                allowedPrincipals = []
            }
        } else {
            allowedPrincipals = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}