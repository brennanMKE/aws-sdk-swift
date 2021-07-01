// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchDeleteImageInput: Equatable {
    /// <p>A list of image ID references that correspond to images to delete. The format of the
    ///             <code>imageIds</code> reference is <code>imageTag=tag</code> or
    ///             <code>imageDigest=digest</code>.</p>
    public let imageIds: [ImageIdentifier]?
    /// <p>The AWS account ID associated with the registry that contains the image to delete.
    ///          If you do not specify a registry, the default public registry is assumed.</p>
    public let registryId: String?
    /// <p>The repository in a public registry that contains the image to delete.</p>
    public let repositoryName: String?

    public init (
        imageIds: [ImageIdentifier]? = nil,
        registryId: String? = nil,
        repositoryName: String? = nil
    )
    {
        self.imageIds = imageIds
        self.registryId = registryId
        self.repositoryName = repositoryName
    }
}

extension BatchDeleteImageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchDeleteImageInput(imageIds: \(String(describing: imageIds)), registryId: \(String(describing: registryId)), repositoryName: \(String(describing: repositoryName)))"}
}