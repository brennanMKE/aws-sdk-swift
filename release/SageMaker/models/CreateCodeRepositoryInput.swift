// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateCodeRepositoryInput: Equatable {
    /// <p>The name of the Git repository. The name must have 1 to 63 characters. Valid
    ///             characters are a-z, A-Z, 0-9, and - (hyphen).</p>
    public let codeRepositoryName: String?
    /// <p>Specifies details about the repository, including the URL where the repository is
    ///             located, the default branch, and credentials to use to access the repository.</p>
    public let gitConfig: GitConfig?
    /// <p>An array of key-value pairs. You can use tags to categorize your AWS resources in
    ///             different ways, for example, by purpose, owner, or environment. For more information,
    ///             see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging AWS
    ///                 Resources</a>.</p>
    public let tags: [Tag]?

    public init (
        codeRepositoryName: String? = nil,
        gitConfig: GitConfig? = nil,
        tags: [Tag]? = nil
    )
    {
        self.codeRepositoryName = codeRepositoryName
        self.gitConfig = gitConfig
        self.tags = tags
    }
}

extension CreateCodeRepositoryInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateCodeRepositoryInput(codeRepositoryName: \(String(describing: codeRepositoryName)), gitConfig: \(String(describing: gitConfig)), tags: \(String(describing: tags)))"}
}