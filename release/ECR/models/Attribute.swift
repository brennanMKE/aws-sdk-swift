// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>This data type is used in the <a>ImageScanFinding</a> data type.</p>
public struct Attribute: Equatable {
    /// <p>The attribute key.</p>
    public let key: String?
    /// <p>The value assigned to the attribute key.</p>
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

extension Attribute: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Attribute(key: \(String(describing: key)), value: \(String(describing: value)))"}
}