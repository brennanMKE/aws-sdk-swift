// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The Amazon Chime SDK Identity APIs in this section allow software developers to create
///          and manage unique instances of their messaging applications. These APIs provide the
///          overarching framework for creating and sending messages. For more information about the
///          identity APIs, refer to .
public protocol ChimeSdkIdentityClientProtocol {
    /// Creates an Amazon Chime SDK messaging AppInstance under an AWS account.
    ///          Only SDK messaging customers use this API. CreateAppInstance supports
    ///          idempotency behavior as described in the AWS API Standard.
    ///          identity
    func createAppInstance(input: CreateAppInstanceInput, completion: @escaping (ClientRuntime.SdkResult<CreateAppInstanceOutputResponse, CreateAppInstanceOutputError>) -> Void)
    /// Promotes an AppInstanceUser to an AppInstanceAdmin. The
    ///          promoted user can perform the following actions.
    ///
    ///
    ///
    ///
    ///                   ChannelModerator actions across all channels in the
    ///                   AppInstance.
    ///
    ///
    ///
    ///                   DeleteChannelMessage actions.
    ///
    ///
    ///
    ///          Only an AppInstanceUser can be promoted to an AppInstanceAdmin
    ///          role.
    func createAppInstanceAdmin(input: CreateAppInstanceAdminInput, completion: @escaping (ClientRuntime.SdkResult<CreateAppInstanceAdminOutputResponse, CreateAppInstanceAdminOutputError>) -> Void)
    /// Creates a user under an Amazon Chime AppInstance. The request consists of a
    ///          unique appInstanceUserId and Name for that user.
    func createAppInstanceUser(input: CreateAppInstanceUserInput, completion: @escaping (ClientRuntime.SdkResult<CreateAppInstanceUserOutputResponse, CreateAppInstanceUserOutputError>) -> Void)
    /// Deletes an AppInstance and all associated data asynchronously.
    func deleteAppInstance(input: DeleteAppInstanceInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAppInstanceOutputResponse, DeleteAppInstanceOutputError>) -> Void)
    /// Demotes an AppInstanceAdmin to an AppInstanceUser. This action
    ///          does not delete the user.
    func deleteAppInstanceAdmin(input: DeleteAppInstanceAdminInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAppInstanceAdminOutputResponse, DeleteAppInstanceAdminOutputError>) -> Void)
    /// Deletes an AppInstanceUser.
    func deleteAppInstanceUser(input: DeleteAppInstanceUserInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAppInstanceUserOutputResponse, DeleteAppInstanceUserOutputError>) -> Void)
    /// Returns the full details of an AppInstance.
    func describeAppInstance(input: DescribeAppInstanceInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAppInstanceOutputResponse, DescribeAppInstanceOutputError>) -> Void)
    /// Returns the full details of an AppInstanceAdmin.
    func describeAppInstanceAdmin(input: DescribeAppInstanceAdminInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAppInstanceAdminOutputResponse, DescribeAppInstanceAdminOutputError>) -> Void)
    /// Returns the full details of an AppInstanceUser.
    func describeAppInstanceUser(input: DescribeAppInstanceUserInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAppInstanceUserOutputResponse, DescribeAppInstanceUserOutputError>) -> Void)
    /// Gets the retention settings for an AppInstance.
    func getAppInstanceRetentionSettings(input: GetAppInstanceRetentionSettingsInput, completion: @escaping (ClientRuntime.SdkResult<GetAppInstanceRetentionSettingsOutputResponse, GetAppInstanceRetentionSettingsOutputError>) -> Void)
    /// Returns a list of the administrators in the AppInstance.
    func listAppInstanceAdmins(input: ListAppInstanceAdminsInput, completion: @escaping (ClientRuntime.SdkResult<ListAppInstanceAdminsOutputResponse, ListAppInstanceAdminsOutputError>) -> Void)
    /// Lists all Amazon Chime AppInstances created under a single AWS
    ///          account.
    func listAppInstances(input: ListAppInstancesInput, completion: @escaping (ClientRuntime.SdkResult<ListAppInstancesOutputResponse, ListAppInstancesOutputError>) -> Void)
    /// List all AppInstanceUsers created under a single
    ///          AppInstance.
    func listAppInstanceUsers(input: ListAppInstanceUsersInput, completion: @escaping (ClientRuntime.SdkResult<ListAppInstanceUsersOutputResponse, ListAppInstanceUsersOutputError>) -> Void)
    /// Sets the amount of time in days that a given AppInstance retains
    ///          data.
    func putAppInstanceRetentionSettings(input: PutAppInstanceRetentionSettingsInput, completion: @escaping (ClientRuntime.SdkResult<PutAppInstanceRetentionSettingsOutputResponse, PutAppInstanceRetentionSettingsOutputError>) -> Void)
    /// Updates AppInstance metadata.
    func updateAppInstance(input: UpdateAppInstanceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAppInstanceOutputResponse, UpdateAppInstanceOutputError>) -> Void)
    /// Updates the details of an AppInstanceUser. You can update names and
    ///          metadata.
    func updateAppInstanceUser(input: UpdateAppInstanceUserInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAppInstanceUserOutputResponse, UpdateAppInstanceUserOutputError>) -> Void)
}

public enum ChimeSdkIdentityClientTypes {}
