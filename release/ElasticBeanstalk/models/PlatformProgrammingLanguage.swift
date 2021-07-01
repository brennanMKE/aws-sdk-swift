// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A programming language supported by the platform.</p>
public struct PlatformProgrammingLanguage: Equatable {
    /// <p>The name of the programming language.</p>
    public let name: String?
    /// <p>The version of the programming language.</p>
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

extension PlatformProgrammingLanguage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PlatformProgrammingLanguage(name: \(String(describing: name)), version: \(String(describing: version)))"}
}