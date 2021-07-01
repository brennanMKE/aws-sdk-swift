// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeUpdateActionsOutputResponseBody: Equatable {
    public let marker: String?
    public let updateActions: [UpdateAction]?
}

extension DescribeUpdateActionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case updateActions = "UpdateActions"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeUpdateActionsResult"))
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
        if containerValues.contains(.updateActions) {
            struct KeyVal0{struct UpdateAction{}}
            let updateActionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.UpdateAction>.CodingKeys.self, forKey: .updateActions)
            if let updateActionsWrappedContainer = updateActionsWrappedContainer {
                let updateActionsContainer = try updateActionsWrappedContainer.decodeIfPresent([UpdateAction].self, forKey: .member)
                var updateActionsBuffer:[UpdateAction]? = nil
                if let updateActionsContainer = updateActionsContainer {
                    updateActionsBuffer = [UpdateAction]()
                    for structureContainer0 in updateActionsContainer {
                        updateActionsBuffer?.append(structureContainer0)
                    }
                }
                updateActions = updateActionsBuffer
            } else {
                updateActions = []
            }
        } else {
            updateActions = nil
        }
    }
}