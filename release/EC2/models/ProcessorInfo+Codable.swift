// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ProcessorInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case supportedArchitectures = "supportedArchitectures"
        case sustainedClockSpeedInGhz = "sustainedClockSpeedInGhz"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let supportedArchitectures = supportedArchitectures {
            if !supportedArchitectures.isEmpty {
                for (index0, architecturetype0) in supportedArchitectures.enumerated() {
                    var supportedArchitecturesContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("SupportedArchitectures.\(index0.advanced(by: 1))"))
                    try supportedArchitecturesContainer0.encode(architecturetype0, forKey: Key(""))
                }
            }
        }
        if let sustainedClockSpeedInGhz = sustainedClockSpeedInGhz {
            try container.encode(sustainedClockSpeedInGhz, forKey: Key("SustainedClockSpeedInGhz"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.supportedArchitectures) {
            struct KeyVal0{struct item{}}
            let supportedArchitecturesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .supportedArchitectures)
            if let supportedArchitecturesWrappedContainer = supportedArchitecturesWrappedContainer {
                let supportedArchitecturesContainer = try supportedArchitecturesWrappedContainer.decodeIfPresent([ArchitectureType].self, forKey: .member)
                var supportedArchitecturesBuffer:[ArchitectureType]? = nil
                if let supportedArchitecturesContainer = supportedArchitecturesContainer {
                    supportedArchitecturesBuffer = [ArchitectureType]()
                    for stringContainer0 in supportedArchitecturesContainer {
                        supportedArchitecturesBuffer?.append(stringContainer0)
                    }
                }
                supportedArchitectures = supportedArchitecturesBuffer
            } else {
                supportedArchitectures = []
            }
        } else {
            supportedArchitectures = nil
        }
        let sustainedClockSpeedInGhzDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .sustainedClockSpeedInGhz)
        sustainedClockSpeedInGhz = sustainedClockSpeedInGhzDecoded
    }
}