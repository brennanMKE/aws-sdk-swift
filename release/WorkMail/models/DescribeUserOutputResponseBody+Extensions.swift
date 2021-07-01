// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeUserOutputResponseBody: Equatable {
    public let userId: String?
    public let name: String?
    public let email: String?
    public let displayName: String?
    public let state: EntityState?
    public let userRole: UserRole?
    public let enabledDate: Date?
    public let disabledDate: Date?
}

extension DescribeUserOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case disabledDate = "DisabledDate"
        case displayName = "DisplayName"
        case email = "Email"
        case enabledDate = "EnabledDate"
        case name = "Name"
        case state = "State"
        case userId = "UserId"
        case userRole = "UserRole"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userId)
        userId = userIdDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let emailDecoded = try containerValues.decodeIfPresent(String.self, forKey: .email)
        email = emailDecoded
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let stateDecoded = try containerValues.decodeIfPresent(EntityState.self, forKey: .state)
        state = stateDecoded
        let userRoleDecoded = try containerValues.decodeIfPresent(UserRole.self, forKey: .userRole)
        userRole = userRoleDecoded
        let enabledDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .enabledDate)
        enabledDate = enabledDateDecoded
        let disabledDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .disabledDate)
        disabledDate = disabledDateDecoded
    }
}