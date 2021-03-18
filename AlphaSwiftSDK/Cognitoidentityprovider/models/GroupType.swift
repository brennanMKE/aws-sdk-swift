// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

/// <p>The group type.</p>
public struct GroupType: Equatable {
    /// <p>The date the group was created.</p>
    public let creationDate: Date?
    /// <p>A string containing the description of the group.</p>
    public let description: String?
    /// <p>The name of the group.</p>
    public let groupName: String?
    /// <p>The date the group was last modified.</p>
    public let lastModifiedDate: Date?
    /**
     <p>A nonnegative integer value that specifies the precedence of this group relative to
                 the other groups that a user can belong to in the user pool. If a user belongs to two or
                 more groups, it is the group with the highest precedence whose role ARN will be used in
                 the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the
                 user's tokens. Groups with higher <code>Precedence</code> values take precedence over
                 groups with lower <code>Precedence</code> values or with null <code>Precedence</code>
                 values.</p>
             <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
                 group takes precedence over the other. If two groups with the same
                     <code>Precedence</code> have the same role ARN, that role is used in the
                     <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
                 two groups have different role ARNs, the <code>cognito:preferred_role</code> claim is
                 not set in users' tokens.</p>
             <p>The default <code>Precedence</code> value is null.</p>
     */
    public let precedence: Int?
    /// <p>The role ARN for the group.</p>
    public let roleArn: String?
    /// <p>The user pool ID for the user pool.</p>
    public let userPoolId: String?

    public init (
        creationDate: Date? = nil,
        description: String? = nil,
        groupName: String? = nil,
        lastModifiedDate: Date? = nil,
        precedence: Int? = nil,
        roleArn: String? = nil,
        userPoolId: String? = nil
    )
    {
        self.creationDate = creationDate
        self.description = description
        self.groupName = groupName
        self.lastModifiedDate = lastModifiedDate
        self.precedence = precedence
        self.roleArn = roleArn
        self.userPoolId = userPoolId
    }
}
