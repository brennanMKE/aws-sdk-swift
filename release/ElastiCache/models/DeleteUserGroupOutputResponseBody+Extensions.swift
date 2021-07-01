// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteUserGroupOutputResponseBody: Equatable {
    public let userGroupId: String?
    public let status: String?
    public let engine: String?
    public let userIds: [String]?
    public let pendingChanges: UserGroupPendingChanges?
    public let replicationGroups: [String]?
    public let aRN: String?
}

extension DeleteUserGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aRN = "ARN"
        case engine = "Engine"
        case pendingChanges = "PendingChanges"
        case replicationGroups = "ReplicationGroups"
        case status = "Status"
        case userGroupId = "UserGroupId"
        case userIds = "UserIds"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DeleteUserGroupResult"))
        let userGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userGroupId)
        userGroupId = userGroupIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let engineDecoded = try containerValues.decodeIfPresent(String.self, forKey: .engine)
        engine = engineDecoded
        if containerValues.contains(.userIds) {
            struct KeyVal0{struct member{}}
            let userIdsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .userIds)
            if let userIdsWrappedContainer = userIdsWrappedContainer {
                let userIdsContainer = try userIdsWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var userIdsBuffer:[String]? = nil
                if let userIdsContainer = userIdsContainer {
                    userIdsBuffer = [String]()
                    for stringContainer0 in userIdsContainer {
                        userIdsBuffer?.append(stringContainer0)
                    }
                }
                userIds = userIdsBuffer
            } else {
                userIds = []
            }
        } else {
            userIds = nil
        }
        let pendingChangesDecoded = try containerValues.decodeIfPresent(UserGroupPendingChanges.self, forKey: .pendingChanges)
        pendingChanges = pendingChangesDecoded
        if containerValues.contains(.replicationGroups) {
            struct KeyVal0{struct member{}}
            let replicationGroupsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .replicationGroups)
            if let replicationGroupsWrappedContainer = replicationGroupsWrappedContainer {
                let replicationGroupsContainer = try replicationGroupsWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var replicationGroupsBuffer:[String]? = nil
                if let replicationGroupsContainer = replicationGroupsContainer {
                    replicationGroupsBuffer = [String]()
                    for stringContainer0 in replicationGroupsContainer {
                        replicationGroupsBuffer?.append(stringContainer0)
                    }
                }
                replicationGroups = replicationGroupsBuffer
            } else {
                replicationGroups = []
            }
        } else {
            replicationGroups = nil
        }
        let aRNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aRN)
        aRN = aRNDecoded
    }
}