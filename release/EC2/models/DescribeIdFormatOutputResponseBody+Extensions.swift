// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeIdFormatOutputResponseBody: Equatable {
    public let statuses: [IdFormat]?
}

extension DescribeIdFormatOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case statuses = "statusSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.statuses) {
            struct KeyVal0{struct item{}}
            let statusesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .statuses)
            if let statusesWrappedContainer = statusesWrappedContainer {
                let statusesContainer = try statusesWrappedContainer.decodeIfPresent([IdFormat].self, forKey: .member)
                var statusesBuffer:[IdFormat]? = nil
                if let statusesContainer = statusesContainer {
                    statusesBuffer = [IdFormat]()
                    for structureContainer0 in statusesContainer {
                        statusesBuffer?.append(structureContainer0)
                    }
                }
                statuses = statusesBuffer
            } else {
                statuses = []
            }
        } else {
            statuses = nil
        }
    }
}