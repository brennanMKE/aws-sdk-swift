// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateServiceActionInput: Equatable {
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
    /// <p>The self-service action definition. Can be one of the following:</p>
    ///          <dl>
    ///             <dt>Name</dt>
    ///             <dd>
    ///                <p>The name of the AWS Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p>
    ///                <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p>
    ///             </dd>
    ///             <dt>Version</dt>
    ///             <dd>
    ///                <p>The AWS Systems Manager automation document version. For example, <code>"Version": "1"</code>
    ///                </p>
    ///             </dd>
    ///             <dt>AssumeRole</dt>
    ///             <dd>
    ///                <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"</code>.</p>
    ///                <p>To reuse the provisioned product launch role, set to <code>"AssumeRole": "LAUNCH_ROLE"</code>.</p>
    ///             </dd>
    ///             <dt>Parameters</dt>
    ///             <dd>
    ///                <p>The list of parameters in JSON format.</p>
    ///                <p>For example: <code>[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]</code> or <code>[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]</code>.</p>
    ///             </dd>
    ///          </dl>
    public let definition: [String:String]?
    /// <p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
    public let definitionType: ServiceActionDefinitionType?
    /// <p>The self-service action description.</p>
    public let description: String?
    /// <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    ///   the same response is returned for each repeated request.</p>
    public var idempotencyToken: String?
    /// <p>The self-service action name.</p>
    public let name: String?

    public init (
        acceptLanguage: String? = nil,
        definition: [String:String]? = nil,
        definitionType: ServiceActionDefinitionType? = nil,
        description: String? = nil,
        idempotencyToken: String? = nil,
        name: String? = nil
    )
    {
        self.acceptLanguage = acceptLanguage
        self.definition = definition
        self.definitionType = definitionType
        self.description = description
        self.idempotencyToken = idempotencyToken
        self.name = name
    }
}

extension CreateServiceActionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateServiceActionInput(acceptLanguage: \(String(describing: acceptLanguage)), definition: \(String(describing: definition)), definitionType: \(String(describing: definitionType)), description: \(String(describing: description)), idempotencyToken: \(String(describing: idempotencyToken)), name: \(String(describing: name)))"}
}