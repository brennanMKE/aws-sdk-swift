// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ResetFpgaImageAttributeInput: Equatable {
    /// <p>The attribute.</p>
    public let attribute: ResetFpgaImageAttributeName?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the AFI.</p>
    public let fpgaImageId: String?

    public init (
        attribute: ResetFpgaImageAttributeName? = nil,
        dryRun: Bool = false,
        fpgaImageId: String? = nil
    )
    {
        self.attribute = attribute
        self.dryRun = dryRun
        self.fpgaImageId = fpgaImageId
    }
}

extension ResetFpgaImageAttributeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResetFpgaImageAttributeInput(attribute: \(String(describing: attribute)), dryRun: \(String(describing: dryRun)), fpgaImageId: \(String(describing: fpgaImageId)))"}
}