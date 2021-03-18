// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the request to confirm user registration.</p>
public struct AdminConfirmSignUpInput: Equatable {
    /**
     <p>A map of custom key-value pairs that you can provide as input for any custom workflows
                 that this action triggers. </p>
             <p>If your user pool configuration includes triggers, the AdminConfirmSignUp API action
                 invokes the AWS Lambda function that is specified for the <i>post
                     confirmation</i> trigger. When Amazon Cognito invokes this function, it
                 passes a JSON payload, which the function receives as input. In this payload, the
                     <code>clientMetadata</code> attribute provides the data that you assigned to the
                 ClientMetadata parameter in your AdminConfirmSignUp request. In your function code in
                 AWS Lambda, you can process the ClientMetadata value to enhance your workflow for your
                 specific needs.</p>
             <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">Customizing User Pool Workflows with Lambda Triggers</a> in the
                     <i>Amazon Cognito Developer Guide</i>.</p>
             <note>
                 <p>Take the following limitations into consideration when you use the ClientMetadata
                     parameter:</p>
                 <ul>
                    <li>
                         <p>Amazon Cognito does not store the ClientMetadata value. This data is
                             available only to AWS Lambda triggers that are assigned to a user pool to
                             support custom workflows. If your user pool configuration does not include
                             triggers, the ClientMetadata parameter serves no purpose.</p>
                     </li>
                    <li>
                         <p>Amazon Cognito does not validate the ClientMetadata value.</p>
                     </li>
                    <li>
                         <p>Amazon Cognito does not encrypt the the ClientMetadata value, so don't use
                             it to provide sensitive information.</p>
                     </li>
                 </ul>
             </note>
     */
    public let clientMetadata: [String:String]?
    /// <p>The user pool ID for which you want to confirm user registration.</p>
    public let userPoolId: String?
    /// <p>The user name for which you want to confirm user registration.</p>
    public let username: String?

    public init (
        clientMetadata: [String:String]? = nil,
        userPoolId: String? = nil,
        username: String? = nil
    )
    {
        self.clientMetadata = clientMetadata
        self.userPoolId = userPoolId
        self.username = username
    }
}
