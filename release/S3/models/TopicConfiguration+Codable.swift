// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TopicConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case events = "Event"
        case filter = "Filter"
        case id = "Id"
        case topicArn = "Topic"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let events = events {
            if events.isEmpty {
                var eventsContainer = container.nestedUnkeyedContainer(forKey: Key("Event"))
                try eventsContainer.encodeNil()
            } else {
                for event0 in events {
                    var eventsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("Event"))
                    try eventsContainer0.encode(event0, forKey: Key(""))
                }
            }
        }
        if let filter = filter {
            try container.encode(filter, forKey: Key("filter"))
        }
        if let id = id {
            try container.encode(id, forKey: Key("id"))
        }
        if let topicArn = topicArn {
            try container.encode(topicArn, forKey: Key("Topic"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let topicArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .topicArn)
        topicArn = topicArnDecoded
        if containerValues.contains(.events) {
            let eventsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .events)
            if eventsWrappedContainer != nil {
                let eventsContainer = try containerValues.decodeIfPresent([Event].self, forKey: .events)
                var eventsBuffer:[Event]? = nil
                if let eventsContainer = eventsContainer {
                    eventsBuffer = [Event]()
                    for stringContainer0 in eventsContainer {
                        eventsBuffer?.append(stringContainer0)
                    }
                }
                events = eventsBuffer
            } else {
                events = []
            }
        } else {
            events = nil
        }
        let filterDecoded = try containerValues.decodeIfPresent(NotificationConfigurationFilter.self, forKey: .filter)
        filter = filterDecoded
    }
}