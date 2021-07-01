// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagResourceInput: Equatable {
    /// <p>The identifier for the secret that you want to attach tags to. You can specify either the
    ///       Amazon Resource Name (ARN) or the friendly name of the secret.</p>
    ///          <note>
    ///             <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can
    ///         specify a partial ARN too—for example, if you don’t include the final hyphen and six random
    ///         characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN
    ///         match can work as long as it uniquely matches only one secret. However, if your secret has a
    ///         name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six
    ///         characters to the ARN) and you try to use that as a partial ARN, then those characters cause
    ///         Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected
    ///         results. To avoid this situation, we recommend that you don’t create secret names ending
    ///         with a hyphen followed by six characters.</p>
    ///             <p>If you specify an incomplete ARN without the random suffix, and instead provide the
    ///         'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager,
    ///         you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
    ///         </note>
    public let secretId: String?
    /// <p>The tags to attach to the secret. Each element in the list consists of a <code>Key</code>
    ///       and a <code>Value</code>.</p>
    ///          <p>This parameter to the API requires a JSON text string argument. For information on how to
    ///       format a JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. For the
    ///       AWS CLI, you can also use the syntax: <code>--Tags Key="Key1",Value="Value1"
    ///         Key="Key2",Value="Value2"[,…]</code>
    ///          </p>
    public let tags: [Tag]?

    public init (
        secretId: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.secretId = secretId
        self.tags = tags
    }
}

extension TagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagResourceInput(secretId: \(String(describing: secretId)), tags: \(String(describing: tags)))"}
}