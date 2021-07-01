// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VirtualNodeSpec: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case backendDefaults
        case backends
        case listeners
        case logging
        case serviceDiscovery
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let backendDefaults = backendDefaults {
            try encodeContainer.encode(backendDefaults, forKey: .backendDefaults)
        }
        if let backends = backends {
            var backendsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .backends)
            for backends0 in backends {
                try backendsContainer.encode(backends0)
            }
        }
        if let listeners = listeners {
            var listenersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .listeners)
            for listeners0 in listeners {
                try listenersContainer.encode(listeners0)
            }
        }
        if let logging = logging {
            try encodeContainer.encode(logging, forKey: .logging)
        }
        if let serviceDiscovery = serviceDiscovery {
            try encodeContainer.encode(serviceDiscovery, forKey: .serviceDiscovery)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceDiscoveryDecoded = try containerValues.decodeIfPresent(ServiceDiscovery.self, forKey: .serviceDiscovery)
        serviceDiscovery = serviceDiscoveryDecoded
        let listenersContainer = try containerValues.decodeIfPresent([Listener?].self, forKey: .listeners)
        var listenersDecoded0:[Listener]? = nil
        if let listenersContainer = listenersContainer {
            listenersDecoded0 = [Listener]()
            for structure0 in listenersContainer {
                if let structure0 = structure0 {
                    listenersDecoded0?.append(structure0)
                }
            }
        }
        listeners = listenersDecoded0
        let backendsContainer = try containerValues.decodeIfPresent([Backend?].self, forKey: .backends)
        var backendsDecoded0:[Backend]? = nil
        if let backendsContainer = backendsContainer {
            backendsDecoded0 = [Backend]()
            for union0 in backendsContainer {
                if let union0 = union0 {
                    backendsDecoded0?.append(union0)
                }
            }
        }
        backends = backendsDecoded0
        let backendDefaultsDecoded = try containerValues.decodeIfPresent(BackendDefaults.self, forKey: .backendDefaults)
        backendDefaults = backendDefaultsDecoded
        let loggingDecoded = try containerValues.decodeIfPresent(Logging.self, forKey: .logging)
        logging = loggingDecoded
    }
}