// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An error or warning for a desired configuration option value.</p>
public struct ValidationMessage: Equatable {
    /// <p>A message describing the error or warning.</p>
    public let message: String?
    /// <p>The namespace to which the option belongs.</p>
    public let namespace: String?
    /// <p>The name of the option.</p>
    public let optionName: String?
    /// <p>An indication of the severity of this message:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>error</code>: This message indicates that this is not a valid setting for an
    ///           option.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>warning</code>: This message is providing information you should take into
    ///           account.</p>
    ///             </li>
    ///          </ul>
    public let severity: ValidationSeverity?

    public init (
        message: String? = nil,
        namespace: String? = nil,
        optionName: String? = nil,
        severity: ValidationSeverity? = nil
    )
    {
        self.message = message
        self.namespace = namespace
        self.optionName = optionName
        self.severity = severity
    }
}

extension ValidationMessage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ValidationMessage(message: \(String(describing: message)), namespace: \(String(describing: namespace)), optionName: \(String(describing: optionName)), severity: \(String(describing: severity)))"}
}