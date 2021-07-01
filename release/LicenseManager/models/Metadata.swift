// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes key/value pairs.</p>
public struct Metadata: Equatable {
    /// <p>The key name.</p>
    public let name: String?
    /// <p>The value.</p>
    public let value: String?

    public init (
        name: String? = nil,
        value: String? = nil
    )
    {
        self.name = name
        self.value = value
    }
}

extension Metadata: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Metadata(name: \(String(describing: name)), value: \(String(describing: value)))"}
}