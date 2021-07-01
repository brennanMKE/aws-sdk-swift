// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code>
///                <a>SendMessageBatch</a>.</code>
///          </p>
public struct SendMessageBatchResultEntry: Equatable {
    /// <p>An identifier for the message in this batch.</p>
    public let id: String?
    /// <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
    public let mD5OfMessageAttributes: String?
    /// <p>An MD5 digest of the non-URL-encoded message body string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
    public let mD5OfMessageBody: String?
    /// <p>An MD5 digest of the non-URL-encoded message system attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
    public let mD5OfMessageSystemAttributes: String?
    /// <p>An identifier for the message.</p>
    public let messageId: String?
    /// <p>This parameter applies only to FIFO (first-in-first-out) queues.</p>
    ///          <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p>
    ///          <p>The length of <code>SequenceNumber</code> is 128 bits. As <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
    public let sequenceNumber: String?

    public init (
        id: String? = nil,
        mD5OfMessageAttributes: String? = nil,
        mD5OfMessageBody: String? = nil,
        mD5OfMessageSystemAttributes: String? = nil,
        messageId: String? = nil,
        sequenceNumber: String? = nil
    )
    {
        self.id = id
        self.mD5OfMessageAttributes = mD5OfMessageAttributes
        self.mD5OfMessageBody = mD5OfMessageBody
        self.mD5OfMessageSystemAttributes = mD5OfMessageSystemAttributes
        self.messageId = messageId
        self.sequenceNumber = sequenceNumber
    }
}

extension SendMessageBatchResultEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendMessageBatchResultEntry(id: \(String(describing: id)), mD5OfMessageAttributes: \(String(describing: mD5OfMessageAttributes)), mD5OfMessageBody: \(String(describing: mD5OfMessageBody)), mD5OfMessageSystemAttributes: \(String(describing: mD5OfMessageSystemAttributes)), messageId: \(String(describing: messageId)), sequenceNumber: \(String(describing: sequenceNumber)))"}
}