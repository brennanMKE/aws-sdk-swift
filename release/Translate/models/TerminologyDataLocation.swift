// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The location of the custom terminology data.</p>
public struct TerminologyDataLocation: Equatable {
    /// <p>The location of the custom terminology data.</p>
    public let location: String?
    /// <p>The repository type for the custom terminology data.</p>
    public let repositoryType: String?

    public init (
        location: String? = nil,
        repositoryType: String? = nil
    )
    {
        self.location = location
        self.repositoryType = repositoryType
    }
}

extension TerminologyDataLocation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TerminologyDataLocation(location: \(String(describing: location)), repositoryType: \(String(describing: repositoryType)))"}
}