// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDataSourceInput: Equatable {
    /// <p>A token that you provide to identify the request to create a data
    ///       source. Multiple calls to the <code>CreateDataSource</code> operation with
    ///       the same client token will create only one data source.</p>
    public var clientToken: String?
    /// <p>The connector configuration information that is required to access the
    ///       repository.</p>
    ///          <p>You can't specify the <code>Configuration</code> parameter when the
    ///         <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    ///       you receive a <code>ValidationException</code> exception.</p>
    ///          <p>The <code>Configuration</code> parameter is required for all other
    ///       data sources.</p>
    public let configuration: DataSourceConfiguration?
    /// <p>A description for the data source.</p>
    public let description: String?
    /// <p>The identifier of the index that should be associated with this data
    ///       source.</p>
    public let indexId: String?
    /// <p>A unique name for the data source. A data source name can't be changed
    ///       without deleting and recreating the data source.</p>
    public let name: String?
    /// <p>The Amazon Resource Name (ARN) of a role with permission to access the
    ///       data source. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM Roles for
    ///         Amazon Kendra</a>.</p>
    ///          <p>You can't specify the <code>RoleArn</code> parameter when the
    ///         <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    ///       you receive a <code>ValidationException</code> exception.</p>
    ///          <p>The <code>RoleArn</code> parameter is required for all other data
    ///       sources.</p>
    public let roleArn: String?
    /// <p>Sets the frequency that Amazon Kendra will check the documents in your
    ///       repository and update the index. If you don't set a schedule Amazon Kendra
    ///       will not periodically update the index. You can call the
    ///         <code>StartDataSourceSyncJob</code> operation to update the
    ///       index.</p>
    ///          <p>You can't specify the <code>Schedule</code> parameter when the
    ///         <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    ///       you receive a <code>ValidationException</code> exception.</p>
    public let schedule: String?
    /// <p>A list of key-value pairs that identify the data source. You can use
    ///       the tags to identify and organize your resources and to control access to
    ///       resources.</p>
    public let tags: [Tag]?
    /// <p>The type of repository that contains the data source.</p>
    public let type: DataSourceType?

    public init (
        clientToken: String? = nil,
        configuration: DataSourceConfiguration? = nil,
        description: String? = nil,
        indexId: String? = nil,
        name: String? = nil,
        roleArn: String? = nil,
        schedule: String? = nil,
        tags: [Tag]? = nil,
        type: DataSourceType? = nil
    )
    {
        self.clientToken = clientToken
        self.configuration = configuration
        self.description = description
        self.indexId = indexId
        self.name = name
        self.roleArn = roleArn
        self.schedule = schedule
        self.tags = tags
        self.type = type
    }
}

extension CreateDataSourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDataSourceInput(clientToken: \(String(describing: clientToken)), configuration: \(String(describing: configuration)), description: \(String(describing: description)), indexId: \(String(describing: indexId)), name: \(String(describing: name)), roleArn: \(String(describing: roleArn)), schedule: \(String(describing: schedule)), tags: \(String(describing: tags)), type: \(String(describing: type)))"}
}