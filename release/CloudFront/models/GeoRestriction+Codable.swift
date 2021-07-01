// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GeoRestriction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case quantity = "Quantity"
        case restrictionType = "RestrictionType"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let items = items {
            var itemsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("items"))
            for string0 in items {
                try itemsContainer.encode(string0, forKey: Key("Location"))
            }
        }
        if let quantity = quantity {
            try container.encode(quantity, forKey: Key("quantity"))
        }
        if let restrictionType = restrictionType {
            try container.encode(restrictionType, forKey: Key("restrictionType"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let restrictionTypeDecoded = try containerValues.decodeIfPresent(GeoRestrictionType.self, forKey: .restrictionType)
        restrictionType = restrictionTypeDecoded
        let quantityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .quantity)
        quantity = quantityDecoded
        if containerValues.contains(.items) {
            struct KeyVal0{struct Location{}}
            let itemsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.Location>.CodingKeys.self, forKey: .items)
            if let itemsWrappedContainer = itemsWrappedContainer {
                let itemsContainer = try itemsWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var itemsBuffer:[String]? = nil
                if let itemsContainer = itemsContainer {
                    itemsBuffer = [String]()
                    for stringContainer0 in itemsContainer {
                        itemsBuffer?.append(stringContainer0)
                    }
                }
                items = itemsBuffer
            } else {
                items = []
            }
        } else {
            items = nil
        }
    }
}