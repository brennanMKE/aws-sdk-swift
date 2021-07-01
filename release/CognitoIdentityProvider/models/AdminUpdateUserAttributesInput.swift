// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the request to update the user's attributes as an administrator.</p>
public struct AdminUpdateUserAttributesInput: Equatable {
    /// <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    ///             that this action triggers. </p>
    ///         <p>You create custom workflows by assigning AWS Lambda functions to user pool triggers.
    ///             When you use the AdminUpdateUserAttributes API action, Amazon Cognito invokes the
    ///             function that is assigned to the <i>custom message</i> trigger. When
    ///             Amazon Cognito invokes this function, it passes a JSON payload, which the function
    ///             receives as input. This payload contains a <code>clientMetadata</code> attribute, which
    ///             provides the data that you assigned to the ClientMetadata parameter in your
    ///             AdminUpdateUserAttributes request. In your function code in AWS Lambda, you can process
    ///             the <code>clientMetadata</code> value to enhance your workflow for your specific
    ///             needs.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">Customizing User Pool Workflows with Lambda Triggers</a> in the
    ///                 <i>Amazon Cognito Developer Guide</i>.</p>
    ///         <note>
    ///             <p>Take the following limitations into consideration when you use the ClientMetadata
    ///                 parameter:</p>
    ///             <ul>
    ///                <li>
    ///                     <p>Amazon Cognito does not store the ClientMetadata value. This data is
    ///                         available only to AWS Lambda triggers that are assigned to a user pool to
    ///                         support custom workflows. If your user pool configuration does not include
    ///                         triggers, the ClientMetadata parameter serves no purpose.</p>
    ///                 </li>
    ///                <li>
    ///                     <p>Amazon Cognito does not validate the ClientMetadata value.</p>
    ///                 </li>
    ///                <li>
    ///                     <p>Amazon Cognito does not encrypt the the ClientMetadata value, so don't use
    ///                         it to provide sensitive information.</p>
    ///                 </li>
    ///             </ul>
    ///         </note>
    public let clientMetadata: [String:String]?
    /// <p>An array of name-value pairs representing user attributes.</p>
    ///         <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    ///             attribute name.</p>
    public let userAttributes: [AttributeType]?
    /// <p>The user pool ID for the user pool where you want to update user attributes.</p>
    public let userPoolId: String?
    /// <p>The user name of the user for whom you want to update user attributes.</p>
    public let username: String?

    public init (
        clientMetadata: [String:String]? = nil,
        userAttributes: [AttributeType]? = nil,
        userPoolId: String? = nil,
        username: String? = nil
    )
    {
        self.clientMetadata = clientMetadata
        self.userAttributes = userAttributes
        self.userPoolId = userPoolId
        self.username = username
    }
}

extension AdminUpdateUserAttributesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AdminUpdateUserAttributesInput(clientMetadata: \(String(describing: clientMetadata)), userAttributes: \(String(describing: userAttributes)), userPoolId: \(String(describing: userPoolId)), username: \(String(describing: username)))"}
}