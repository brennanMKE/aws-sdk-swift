// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input to the <code>DeleteIdentities</code> action.</p>
public struct DeleteIdentitiesInput: Equatable {
    /// <p>A list of 1-60 identities that you want to delete.</p>
    public let identityIdsToDelete: [String]?

    public init (
        identityIdsToDelete: [String]? = nil
    )
    {
        self.identityIdsToDelete = identityIdsToDelete
    }
}
