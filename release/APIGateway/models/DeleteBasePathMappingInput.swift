// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to delete the <a>BasePathMapping</a> resource.</p>
public struct DeleteBasePathMappingInput: Equatable {
    /// <p>[Required] The base path name of the <a>BasePathMapping</a> resource to delete.</p>
    ///         <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>
    public let basePath: String?
    /// <p>[Required] The domain name of the <a>BasePathMapping</a> resource to delete.</p>
    public let domainName: String?

    public init (
        basePath: String? = nil,
        domainName: String? = nil
    )
    {
        self.basePath = basePath
        self.domainName = domainName
    }
}

extension DeleteBasePathMappingInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteBasePathMappingInput(basePath: \(String(describing: basePath)), domainName: \(String(describing: domainName)))"}
}