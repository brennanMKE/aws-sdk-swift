// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeIndexOutputResponse: Equatable {
    /// <p>For Enterprise edition indexes, you can choose to use additional
    ///       capacity to meet the needs of your application. This contains the capacity
    ///       units used for the index. A 0 for the query capacity or the storage
    ///       capacity indicates that the index is using the default capacity for the
    ///       index.</p>
    public let capacityUnits: CapacityUnitsConfiguration?
    /// <p>The Unix datetime that the index was created.</p>
    public let createdAt: Date?
    /// <p>The description of the index.</p>
    public let description: String?
    /// <p>Configuration settings for any metadata applied to the documents in
    ///       the index.</p>
    public let documentMetadataConfigurations: [DocumentMetadataConfiguration]?
    /// <p>The Amazon Kendra edition used for the index. You decide the edition
    ///       when you create the index.</p>
    public let edition: IndexEdition?
    /// <p>When th e<code>Status</code> field value is <code>FAILED</code>, the
    ///         <code>ErrorMessage</code> field contains a message that explains
    ///       why.</p>
    public let errorMessage: String?
    /// <p>The name of the index.</p>
    public let id: String?
    /// <p>Provides information about the number of FAQ questions and answers and
    ///       the number of text documents indexed.</p>
    public let indexStatistics: IndexStatistics?
    /// <p>The name of the index.</p>
    public let name: String?
    /// <p>The Amazon Resource Name (ARN) of the IAM role that gives Amazon Kendra
    ///       permission to write to your Amazon Cloudwatch logs.</p>
    public let roleArn: String?
    /// <p>The identifier of the AWS KMS customer master key (CMK) used to
    ///       encrypt your data. Amazon Kendra doesn't support asymmetric CMKs.</p>
    public let serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration?
    /// <p>The current status of the index. When the value is
    ///       <code>ACTIVE</code>, the index is ready for use. If the
    ///         <code>Status</code> field value is <code>FAILED</code>, the
    ///         <code>ErrorMessage</code> field contains a message that explains
    ///       why.</p>
    public let status: IndexStatus?
    /// <p>The Unix datetime that the index was last updated.</p>
    public let updatedAt: Date?
    /// <p>The user context policy for the Amazon Kendra index.</p>
    public let userContextPolicy: UserContextPolicy?
    /// <p>The user token configuration for the Amazon Kendra index.</p>
    public let userTokenConfigurations: [UserTokenConfiguration]?

    public init (
        capacityUnits: CapacityUnitsConfiguration? = nil,
        createdAt: Date? = nil,
        description: String? = nil,
        documentMetadataConfigurations: [DocumentMetadataConfiguration]? = nil,
        edition: IndexEdition? = nil,
        errorMessage: String? = nil,
        id: String? = nil,
        indexStatistics: IndexStatistics? = nil,
        name: String? = nil,
        roleArn: String? = nil,
        serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration? = nil,
        status: IndexStatus? = nil,
        updatedAt: Date? = nil,
        userContextPolicy: UserContextPolicy? = nil,
        userTokenConfigurations: [UserTokenConfiguration]? = nil
    )
    {
        self.capacityUnits = capacityUnits
        self.createdAt = createdAt
        self.description = description
        self.documentMetadataConfigurations = documentMetadataConfigurations
        self.edition = edition
        self.errorMessage = errorMessage
        self.id = id
        self.indexStatistics = indexStatistics
        self.name = name
        self.roleArn = roleArn
        self.serverSideEncryptionConfiguration = serverSideEncryptionConfiguration
        self.status = status
        self.updatedAt = updatedAt
        self.userContextPolicy = userContextPolicy
        self.userTokenConfigurations = userTokenConfigurations
    }
}

extension DescribeIndexOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeIndexOutputResponse(capacityUnits: \(String(describing: capacityUnits)), createdAt: \(String(describing: createdAt)), description: \(String(describing: description)), documentMetadataConfigurations: \(String(describing: documentMetadataConfigurations)), edition: \(String(describing: edition)), errorMessage: \(String(describing: errorMessage)), id: \(String(describing: id)), indexStatistics: \(String(describing: indexStatistics)), name: \(String(describing: name)), roleArn: \(String(describing: roleArn)), serverSideEncryptionConfiguration: \(String(describing: serverSideEncryptionConfiguration)), status: \(String(describing: status)), updatedAt: \(String(describing: updatedAt)), userContextPolicy: \(String(describing: userContextPolicy)), userTokenConfigurations: \(String(describing: userTokenConfigurations)))"}
}