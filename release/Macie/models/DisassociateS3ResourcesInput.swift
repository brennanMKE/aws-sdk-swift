// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateS3ResourcesInput: Equatable {
    /// <p>The S3 resources (buckets or prefixes) that you want to remove from being monitored and
    ///       classified by Amazon Macie Classic. </p>
    public let associatedS3Resources: [S3Resource]?
    /// <p>The ID of the Amazon Macie Classic member account whose resources you want to remove
    ///       from being monitored by Macie Classic. </p>
    public let memberAccountId: String?

    public init (
        associatedS3Resources: [S3Resource]? = nil,
        memberAccountId: String? = nil
    )
    {
        self.associatedS3Resources = associatedS3Resources
        self.memberAccountId = memberAccountId
    }
}

extension DisassociateS3ResourcesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateS3ResourcesInput(associatedS3Resources: \(String(describing: associatedS3Resources)), memberAccountId: \(String(describing: memberAccountId)))"}
}