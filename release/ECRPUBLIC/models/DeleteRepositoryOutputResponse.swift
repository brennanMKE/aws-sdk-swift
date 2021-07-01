// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteRepositoryOutputResponse: Equatable {
    /// <p>The repository that was deleted.</p>
    public let repository: Repository?

    public init (
        repository: Repository? = nil
    )
    {
        self.repository = repository
    }
}

extension DeleteRepositoryOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteRepositoryOutputResponse(repository: \(String(describing: repository)))"}
}