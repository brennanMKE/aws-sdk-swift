// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details about a function's deployment package.</p>
public struct FunctionCodeLocation: Equatable {
    /// <p>URI of a container image in the Amazon ECR registry.</p>
    public let imageUri: String?
    /// <p>A presigned URL that you can use to download the deployment package.</p>
    public let location: String?
    /// <p>The service that's hosting the file.</p>
    public let repositoryType: String?
    /// <p>The resolved URI for the image.</p>
    public let resolvedImageUri: String?

    public init (
        imageUri: String? = nil,
        location: String? = nil,
        repositoryType: String? = nil,
        resolvedImageUri: String? = nil
    )
    {
        self.imageUri = imageUri
        self.location = location
        self.repositoryType = repositoryType
        self.resolvedImageUri = resolvedImageUri
    }
}

extension FunctionCodeLocation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FunctionCodeLocation(imageUri: \(String(describing: imageUri)), location: \(String(describing: location)), repositoryType: \(String(describing: repositoryType)), resolvedImageUri: \(String(describing: resolvedImageUri)))"}
}