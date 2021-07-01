// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A list of failures when performing a batch grant or batch revoke operation.</p>
public struct BatchPermissionsFailureEntry: Equatable {
    /// <p>An error message that applies to the failure of the entry.</p>
    public let error: ErrorDetail?
    /// <p>An identifier for an entry of the batch request.</p>
    public let requestEntry: BatchPermissionsRequestEntry?

    public init (
        error: ErrorDetail? = nil,
        requestEntry: BatchPermissionsRequestEntry? = nil
    )
    {
        self.error = error
        self.requestEntry = requestEntry
    }
}

extension BatchPermissionsFailureEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchPermissionsFailureEntry(error: \(String(describing: error)), requestEntry: \(String(describing: requestEntry)))"}
}