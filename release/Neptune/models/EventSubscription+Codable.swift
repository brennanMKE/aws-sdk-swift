// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EventSubscription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case custSubscriptionId = "CustSubscriptionId"
        case customerAwsId = "CustomerAwsId"
        case enabled = "Enabled"
        case eventCategoriesList = "EventCategoriesList"
        case eventSubscriptionArn = "EventSubscriptionArn"
        case snsTopicArn = "SnsTopicArn"
        case sourceIdsList = "SourceIdsList"
        case sourceType = "SourceType"
        case status = "Status"
        case subscriptionCreationTime = "SubscriptionCreationTime"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let custSubscriptionId = custSubscriptionId {
            try container.encode(custSubscriptionId, forKey: Key("CustSubscriptionId"))
        }
        if let customerAwsId = customerAwsId {
            try container.encode(customerAwsId, forKey: Key("CustomerAwsId"))
        }
        if enabled != false {
            try container.encode(enabled, forKey: Key("Enabled"))
        }
        if let eventCategoriesList = eventCategoriesList {
            var eventCategoriesListContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("EventCategoriesList"))
            for (index0, string0) in eventCategoriesList.enumerated() {
                try eventCategoriesListContainer.encode(string0, forKey: Key("EventCategory.\(index0.advanced(by: 1))"))
            }
        }
        if let eventSubscriptionArn = eventSubscriptionArn {
            try container.encode(eventSubscriptionArn, forKey: Key("EventSubscriptionArn"))
        }
        if let snsTopicArn = snsTopicArn {
            try container.encode(snsTopicArn, forKey: Key("SnsTopicArn"))
        }
        if let sourceIdsList = sourceIdsList {
            var sourceIdsListContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("SourceIdsList"))
            for (index0, string0) in sourceIdsList.enumerated() {
                try sourceIdsListContainer.encode(string0, forKey: Key("SourceId.\(index0.advanced(by: 1))"))
            }
        }
        if let sourceType = sourceType {
            try container.encode(sourceType, forKey: Key("SourceType"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("Status"))
        }
        if let subscriptionCreationTime = subscriptionCreationTime {
            try container.encode(subscriptionCreationTime, forKey: Key("SubscriptionCreationTime"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let customerAwsIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customerAwsId)
        customerAwsId = customerAwsIdDecoded
        let custSubscriptionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .custSubscriptionId)
        custSubscriptionId = custSubscriptionIdDecoded
        let snsTopicArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snsTopicArn)
        snsTopicArn = snsTopicArnDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let subscriptionCreationTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subscriptionCreationTime)
        subscriptionCreationTime = subscriptionCreationTimeDecoded
        let sourceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceType)
        sourceType = sourceTypeDecoded
        if containerValues.contains(.sourceIdsList) {
            struct KeyVal0{struct SourceId{}}
            let sourceIdsListWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.SourceId>.CodingKeys.self, forKey: .sourceIdsList)
            if let sourceIdsListWrappedContainer = sourceIdsListWrappedContainer {
                let sourceIdsListContainer = try sourceIdsListWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var sourceIdsListBuffer:[String]? = nil
                if let sourceIdsListContainer = sourceIdsListContainer {
                    sourceIdsListBuffer = [String]()
                    for stringContainer0 in sourceIdsListContainer {
                        sourceIdsListBuffer?.append(stringContainer0)
                    }
                }
                sourceIdsList = sourceIdsListBuffer
            } else {
                sourceIdsList = []
            }
        } else {
            sourceIdsList = nil
        }
        if containerValues.contains(.eventCategoriesList) {
            struct KeyVal0{struct EventCategory{}}
            let eventCategoriesListWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.EventCategory>.CodingKeys.self, forKey: .eventCategoriesList)
            if let eventCategoriesListWrappedContainer = eventCategoriesListWrappedContainer {
                let eventCategoriesListContainer = try eventCategoriesListWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var eventCategoriesListBuffer:[String]? = nil
                if let eventCategoriesListContainer = eventCategoriesListContainer {
                    eventCategoriesListBuffer = [String]()
                    for stringContainer0 in eventCategoriesListContainer {
                        eventCategoriesListBuffer?.append(stringContainer0)
                    }
                }
                eventCategoriesList = eventCategoriesListBuffer
            } else {
                eventCategoriesList = []
            }
        } else {
            eventCategoriesList = nil
        }
        let enabledDecoded = try containerValues.decode(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
        let eventSubscriptionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventSubscriptionArn)
        eventSubscriptionArn = eventSubscriptionArnDecoded
    }
}