// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetMaintenanceWindowTaskInputBody: Equatable {
    public let windowId: String?
    public let windowTaskId: String?
}

extension GetMaintenanceWindowTaskInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case windowId = "WindowId"
        case windowTaskId = "WindowTaskId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let windowIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .windowId)
        windowId = windowIdDecoded
        let windowTaskIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .windowTaskId)
        windowTaskId = windowTaskIdDecoded
    }
}