// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct StorageLensTag: Equatable {
    /// <p></p>
    public let key: String?
    /// <p></p>
    public let value: String?

    public init (
        key: String? = nil,
        value: String? = nil
    )
    {
        self.key = key
        self.value = value
    }
}

extension StorageLensTag: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StorageLensTag(key: \(String(describing: key)), value: \(String(describing: value)))"}
}