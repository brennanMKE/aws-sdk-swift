// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateSlotTypeVersionInput: Equatable {
    /// <p>Checksum for the <code>$LATEST</code> version of the slot type that
    ///       you want to publish. If you specify a checksum and the
    ///         <code>$LATEST</code> version of the slot type has a different checksum,
    ///       Amazon Lex returns a <code>PreconditionFailedException</code> exception and
    ///       doesn't publish the new version. If you don't specify a checksum, Amazon Lex
    ///       publishes the <code>$LATEST</code> version.</p>
    public let checksum: String?
    /// <p>The name of the slot type that you want to create a new version
    ///       for. The name is case sensitive. </p>
    public let name: String?

    public init (
        checksum: String? = nil,
        name: String? = nil
    )
    {
        self.checksum = checksum
        self.name = name
    }
}

extension CreateSlotTypeVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateSlotTypeVersionInput(checksum: \(String(describing: checksum)), name: \(String(describing: name)))"}
}