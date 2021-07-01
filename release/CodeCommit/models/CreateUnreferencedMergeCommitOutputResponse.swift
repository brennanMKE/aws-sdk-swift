// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateUnreferencedMergeCommitOutputResponse: Equatable {
    /// <p>The full commit ID of the commit that contains your merge results.</p>
    public let commitId: String?
    /// <p>The full SHA-1 pointer of the tree information for the commit that contains the merge results.</p>
    public let treeId: String?

    public init (
        commitId: String? = nil,
        treeId: String? = nil
    )
    {
        self.commitId = commitId
        self.treeId = treeId
    }
}

extension CreateUnreferencedMergeCommitOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateUnreferencedMergeCommitOutputResponse(commitId: \(String(describing: commitId)), treeId: \(String(describing: treeId)))"}
}