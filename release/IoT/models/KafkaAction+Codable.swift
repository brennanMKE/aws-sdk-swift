// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension KafkaAction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientProperties
        case destinationArn
        case key
        case partition
        case topic
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientProperties = clientProperties {
            var clientPropertiesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .clientProperties)
            for (dictKey0, clientproperties0) in clientProperties {
                try clientPropertiesContainer.encode(clientproperties0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let destinationArn = destinationArn {
            try encodeContainer.encode(destinationArn, forKey: .destinationArn)
        }
        if let key = key {
            try encodeContainer.encode(key, forKey: .key)
        }
        if let partition = partition {
            try encodeContainer.encode(partition, forKey: .partition)
        }
        if let topic = topic {
            try encodeContainer.encode(topic, forKey: .topic)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationArn)
        destinationArn = destinationArnDecoded
        let topicDecoded = try containerValues.decodeIfPresent(String.self, forKey: .topic)
        topic = topicDecoded
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
        let partitionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .partition)
        partition = partitionDecoded
        let clientPropertiesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .clientProperties)
        var clientPropertiesDecoded0: [String:String]? = nil
        if let clientPropertiesContainer = clientPropertiesContainer {
            clientPropertiesDecoded0 = [String:String]()
            for (key0, string0) in clientPropertiesContainer {
                if let string0 = string0 {
                    clientPropertiesDecoded0?[key0] = string0
                }
            }
        }
        clientProperties = clientPropertiesDecoded0
    }
}