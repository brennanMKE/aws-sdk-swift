// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DeleteMessageBatchInput: Equatable {
    /// <p>A list of receipt handles for the messages to be deleted.</p>
    public let entries: [DeleteMessageBatchRequestEntry]?
    /// <p>The URL of the Amazon SQS queue from which messages are deleted.</p>
    ///          <p>Queue URLs and names are case-sensitive.</p>
    public let queueUrl: String?

    public init (
        entries: [DeleteMessageBatchRequestEntry]? = nil,
        queueUrl: String? = nil
    )
    {
        self.entries = entries
        self.queueUrl = queueUrl
    }
}

extension DeleteMessageBatchInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteMessageBatchInput(entries: \(String(describing: entries)), queueUrl: \(String(describing: queueUrl)))"}
}