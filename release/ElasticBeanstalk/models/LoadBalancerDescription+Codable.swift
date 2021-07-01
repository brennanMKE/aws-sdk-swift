// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LoadBalancerDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domain = "Domain"
        case listeners = "Listeners"
        case loadBalancerName = "LoadBalancerName"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let domain = domain {
            try container.encode(domain, forKey: Key("Domain"))
        }
        if let listeners = listeners {
            var listenersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Listeners"))
            for (index0, listener0) in listeners.enumerated() {
                try listenersContainer.encode(listener0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let loadBalancerName = loadBalancerName {
            try container.encode(loadBalancerName, forKey: Key("LoadBalancerName"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let loadBalancerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .loadBalancerName)
        loadBalancerName = loadBalancerNameDecoded
        let domainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domain)
        domain = domainDecoded
        if containerValues.contains(.listeners) {
            struct KeyVal0{struct member{}}
            let listenersWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .listeners)
            if let listenersWrappedContainer = listenersWrappedContainer {
                let listenersContainer = try listenersWrappedContainer.decodeIfPresent([Listener].self, forKey: .member)
                var listenersBuffer:[Listener]? = nil
                if let listenersContainer = listenersContainer {
                    listenersBuffer = [Listener]()
                    for structureContainer0 in listenersContainer {
                        listenersBuffer?.append(structureContainer0)
                    }
                }
                listeners = listenersBuffer
            } else {
                listeners = []
            }
        } else {
            listeners = nil
        }
    }
}