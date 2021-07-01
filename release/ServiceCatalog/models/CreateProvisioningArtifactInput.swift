// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateProvisioningArtifactInput: Equatable {
    /// <p>The language code.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>en</code> - English (default)</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>jp</code> - Japanese</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>zh</code> - Chinese</p>
    ///             </li>
    ///          </ul>
    public let acceptLanguage: String?
    /// <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    ///   the same response is returned for each repeated request.</p>
    public var idempotencyToken: String?
    /// <p>The configuration for the provisioning artifact.</p>
    public let parameters: ProvisioningArtifactProperties?
    /// <p>The product identifier.</p>
    public let productId: String?

    public init (
        acceptLanguage: String? = nil,
        idempotencyToken: String? = nil,
        parameters: ProvisioningArtifactProperties? = nil,
        productId: String? = nil
    )
    {
        self.acceptLanguage = acceptLanguage
        self.idempotencyToken = idempotencyToken
        self.parameters = parameters
        self.productId = productId
    }
}

extension CreateProvisioningArtifactInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateProvisioningArtifactInput(acceptLanguage: \(String(describing: acceptLanguage)), idempotencyToken: \(String(describing: idempotencyToken)), parameters: \(String(describing: parameters)), productId: \(String(describing: productId)))"}
}