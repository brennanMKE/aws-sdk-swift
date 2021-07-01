// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StreamingNotificationTarget: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case notificationTarget = "NotificationTarget"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let notificationTarget = notificationTarget {
            try encodeContainer.encode(notificationTarget.rawValue, forKey: .notificationTarget)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let notificationTargetDecoded = try containerValues.decodeIfPresent(NotificationTarget.self, forKey: .notificationTarget)
        notificationTarget = notificationTargetDecoded
    }
}