// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Metadata about the pull request that is used when comparing the pull request source with its destination.</p>
public struct PullRequestCreatedEventMetadata: Equatable {
    /// <p>The commit ID of the tip of the branch specified as the destination branch when the pull request was created.</p>
    public let destinationCommitId: String?
    /// <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
    public let mergeBase: String?
    /// <p>The name of the repository where the pull request was created.</p>
    public let repositoryName: String?
    /// <p>The commit ID on the source branch used when the pull request was created.</p>
    public let sourceCommitId: String?

    public init (
        destinationCommitId: String? = nil,
        mergeBase: String? = nil,
        repositoryName: String? = nil,
        sourceCommitId: String? = nil
    )
    {
        self.destinationCommitId = destinationCommitId
        self.mergeBase = mergeBase
        self.repositoryName = repositoryName
        self.sourceCommitId = sourceCommitId
    }
}

extension PullRequestCreatedEventMetadata: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PullRequestCreatedEventMetadata(destinationCommitId: \(String(describing: destinationCommitId)), mergeBase: \(String(describing: mergeBase)), repositoryName: \(String(describing: repositoryName)), sourceCommitId: \(String(describing: sourceCommitId)))"}
}