// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribePermissionSetOutputResponseBody: Equatable {
    public let permissionSet: PermissionSet?
}

extension DescribePermissionSetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case permissionSet = "PermissionSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let permissionSetDecoded = try containerValues.decodeIfPresent(PermissionSet.self, forKey: .permissionSet)
        permissionSet = permissionSetDecoded
    }
}