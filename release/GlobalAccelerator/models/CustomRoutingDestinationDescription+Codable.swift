// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CustomRoutingDestinationDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case fromPort = "FromPort"
        case protocols = "Protocols"
        case toPort = "ToPort"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let fromPort = fromPort {
            try encodeContainer.encode(fromPort, forKey: .fromPort)
        }
        if let protocols = protocols {
            var protocolsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .protocols)
            for protocols0 in protocols {
                try protocolsContainer.encode(protocols0.rawValue)
            }
        }
        if let toPort = toPort {
            try encodeContainer.encode(toPort, forKey: .toPort)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fromPortDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .fromPort)
        fromPort = fromPortDecoded
        let toPortDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .toPort)
        toPort = toPortDecoded
        let protocolsContainer = try containerValues.decodeIfPresent([`Protocol`?].self, forKey: .protocols)
        var protocolsDecoded0:[`Protocol`]? = nil
        if let protocolsContainer = protocolsContainer {
            protocolsDecoded0 = [`Protocol`]()
            for string0 in protocolsContainer {
                if let string0 = string0 {
                    protocolsDecoded0?.append(string0)
                }
            }
        }
        protocols = protocolsDecoded0
    }
}