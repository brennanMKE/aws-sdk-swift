// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UnshareDirectoryInputBody: Equatable {
    public let directoryId: String?
    public let unshareTarget: UnshareTarget?
}

extension UnshareDirectoryInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case directoryId = "DirectoryId"
        case unshareTarget = "UnshareTarget"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let directoryIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .directoryId)
        directoryId = directoryIdDecoded
        let unshareTargetDecoded = try containerValues.decodeIfPresent(UnshareTarget.self, forKey: .unshareTarget)
        unshareTarget = unshareTargetDecoded
    }
}