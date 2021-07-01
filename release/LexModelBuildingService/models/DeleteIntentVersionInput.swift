// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteIntentVersionInput: Equatable {
    /// <p>The name of the intent.</p>
    public let name: String?
    /// <p>The version of the intent to delete. You cannot delete the
    ///         <code>$LATEST</code> version of the intent. To delete the
    ///         <code>$LATEST</code> version, use the <a>DeleteIntent</a>
    ///       operation.</p>
    public let version: String?

    public init (
        name: String? = nil,
        version: String? = nil
    )
    {
        self.name = name
        self.version = version
    }
}

extension DeleteIntentVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteIntentVersionInput(name: \(String(describing: name)), version: \(String(describing: version)))"}
}