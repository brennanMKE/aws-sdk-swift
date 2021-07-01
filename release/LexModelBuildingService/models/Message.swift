// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The message object that provides the message text and its
///       type.</p>
public struct Message: Equatable {
    /// <p>The text of the message.</p>
    public let content: String?
    /// <p>The content type of the message string.</p>
    public let contentType: ContentType?
    /// <p>Identifies the message group that the message belongs to. When a group
    ///       is assigned to a message, Amazon Lex returns one message from each group in the
    ///       response.</p>
    public let groupNumber: Int?

    public init (
        content: String? = nil,
        contentType: ContentType? = nil,
        groupNumber: Int? = nil
    )
    {
        self.content = content
        self.contentType = contentType
        self.groupNumber = groupNumber
    }
}

extension Message: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Message(content: \(String(describing: content)), contentType: \(String(describing: contentType)), groupNumber: \(String(describing: groupNumber)))"}
}