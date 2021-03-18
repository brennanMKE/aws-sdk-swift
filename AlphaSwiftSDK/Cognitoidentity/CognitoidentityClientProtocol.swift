// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/**
 <fullname>Amazon Cognito Federated Identities</fullname>
          <p>Amazon Cognito Federated Identities is a web service that delivers scoped temporary
          credentials to mobile devices and other untrusted environments. It uniquely identifies a
          device and supplies the user with a consistent identity over the lifetime of an
          application.</p>
          <p>Using Amazon Cognito Federated Identities, you can enable authentication with one or
          more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon
          Cognito user pool, and you can also choose to support unauthenticated access from your app.
          Cognito delivers a unique identifier for each user and acts as an OpenID token provider
          trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS
          credentials.</p>
          <p>For a description of the authentication flow from the Amazon Cognito Developer Guide
          see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Authentication Flow</a>.</p>
          <p>For more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito Federated Identities</a>.</p>
 */
public protocol CognitoidentityClientProtocol {
    /**
     <p>Creates a new identity pool. The identity pool is a store of user identity
              information that is specific to your AWS account. The keys for <code>SupportedLoginProviders</code> are as follows:</p>

              <ul>
                 <li>
                    <p>Facebook: <code>graph.facebook.com</code>
                    </p>
                 </li>
                 <li>
                    <p>Google: <code>accounts.google.com</code>
                    </p>
                 </li>
                 <li>
                    <p>Amazon: <code>www.amazon.com</code>
                    </p>
                 </li>
                 <li>
                    <p>Twitter: <code>api.twitter.com</code>
                    </p>
                 </li>
                 <li>
                    <p>Digits: <code>www.digits.com</code>
                    </p>
                 </li>
              </ul>

              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func createIdentityPool(input: CreateIdentityPoolInput, completion: @escaping (SdkResult<CreateIdentityPoolOutput, CreateIdentityPoolError>) -> Void)
    /**
     <p>Deletes identities from an identity pool. You can specify a list of 1-60 identities
              that you want to delete.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func deleteIdentities(input: DeleteIdentitiesInput, completion: @escaping (SdkResult<DeleteIdentitiesOutput, DeleteIdentitiesError>) -> Void)
    /**
     <p>Deletes an identity pool. Once a pool is deleted, users will not be able to
              authenticate with the pool.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func deleteIdentityPool(input: DeleteIdentityPoolInput, completion: @escaping (SdkResult<DeleteIdentityPoolOutput, DeleteIdentityPoolError>) -> Void)
    /**
     <p>Returns metadata related to the given identity, including when the identity was
              created and any associated linked logins.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func describeIdentity(input: DescribeIdentityInput, completion: @escaping (SdkResult<DescribeIdentityOutput, DescribeIdentityError>) -> Void)
    /**
     <p>Gets details about a particular identity pool, including the pool name, ID
              description, creation date, and current number of users.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func describeIdentityPool(input: DescribeIdentityPoolInput, completion: @escaping (SdkResult<DescribeIdentityPoolOutput, DescribeIdentityPoolError>) -> Void)
    /**
     <p>Returns credentials for the provided identity ID. Any provided logins will be
              validated against supported login providers. If the token is for
              cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service
              with the appropriate role for the token.</p>
              <p>This is a public API. You do not need any credentials to call this API.</p>
     */
    func getCredentialsForIdentity(input: GetCredentialsForIdentityInput, completion: @escaping (SdkResult<GetCredentialsForIdentityOutput, GetCredentialsForIdentityError>) -> Void)
    /**
     <p>Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an
              implicit linked account.</p>
              <p>This is a public API. You do not need any credentials to call this API.</p>
     */
    func getId(input: GetIdInput, completion: @escaping (SdkResult<GetIdOutput, GetIdError>) -> Void)
    /**
     <p>Gets the roles for an identity pool.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func getIdentityPoolRoles(input: GetIdentityPoolRolesInput, completion: @escaping (SdkResult<GetIdentityPoolRolesOutput, GetIdentityPoolRolesError>) -> Void)
    /**
     <p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by
                 <a>GetId</a>. You can optionally add additional logins for the identity.
              Supplying multiple logins creates an implicit link.</p>
              <p>The OpenId token is valid for 10 minutes.</p>
              <p>This is a public API. You do not need any credentials to call this API.</p>
     */
    func getOpenIdToken(input: GetOpenIdTokenInput, completion: @escaping (SdkResult<GetOpenIdTokenOutput, GetOpenIdTokenError>) -> Void)
    /**
     <p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect
              token for a user authenticated by your backend authentication process. Supplying multiple
              logins will create an implicit linked account. You can only specify one developer provider
              as part of the <code>Logins</code> map, which is linked to the identity pool. The developer
              provider is the "domain" by which Cognito will refer to your users.</p>
              <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity
              and to link new logins (that is, user credentials issued by a public provider or developer
              provider) to an existing identity. When you want to create a new identity, the
                 <code>IdentityId</code> should be null. When you want to associate a new login with an
              existing authenticated/unauthenticated identity, you can do so by providing the existing
                 <code>IdentityId</code>. This API will create the identity in the specified
                 <code>IdentityPoolId</code>.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func getOpenIdTokenForDeveloperIdentity(input: GetOpenIdTokenForDeveloperIdentityInput, completion: @escaping (SdkResult<GetOpenIdTokenForDeveloperIdentityOutput, GetOpenIdTokenForDeveloperIdentityError>) -> Void)
    /**
     <p>Lists the identities in an identity pool.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func listIdentities(input: ListIdentitiesInput, completion: @escaping (SdkResult<ListIdentitiesOutput, ListIdentitiesError>) -> Void)
    /**
     <p>Lists all of the Cognito identity pools registered for your account.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func listIdentityPools(input: ListIdentityPoolsInput, completion: @escaping (SdkResult<ListIdentityPoolsOutput, ListIdentityPoolsError>) -> Void)
    /**
     <p>Lists the tags that are assigned to an Amazon Cognito identity pool.</p>
              <p>A tag is a label that you can apply to identity pools to categorize and manage them in
              different ways, such as by purpose, owner, environment, or other criteria.</p>
              <p>You can use this action up to 10 times per second, per account.</p>
     */
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutput, ListTagsForResourceError>) -> Void)
    /**
     <p>Retrieves the <code>IdentityID</code> associated with a
                 <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code>
              values associated with an <code>IdentityId</code> for an existing identity. Either
                 <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you
              supply only one of these values, the other value will be searched in the database and
              returned as a part of the response. If you supply both,
                 <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If
              the values are verified against the database, the response returns both values and is the
              same as the request. Otherwise a <code>ResourceConflictException</code> is
              thrown.</p>
              <p>
                 <code>LookupDeveloperIdentity</code> is intended for low-throughput control plane
              operations: for example, to enable customer service to locate an identity ID by username.
              If you are using it for higher-volume operations such as user authentication, your requests
              are likely to be throttled. <a>GetOpenIdTokenForDeveloperIdentity</a> is a
              better option for higher-volume operations for user authentication.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func lookupDeveloperIdentity(input: LookupDeveloperIdentityInput, completion: @escaping (SdkResult<LookupDeveloperIdentityOutput, LookupDeveloperIdentityError>) -> Void)
    /**
     <p>Merges two users having different <code>IdentityId</code>s, existing in the same
              identity pool, and identified by the same developer provider. You can use this action to
              request that discrete users be merged and identified as a single user in the Cognito
              environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>)
              with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only
              developer-authenticated users can be merged. If the users to be merged are associated with
              the same public provider, but as two different users, an exception will be
              thrown.</p>
              <p>The number of linked logins is limited to 20. So, the number of linked logins for the
              source user, <code>SourceUserIdentifier</code>, and the destination user,
              <code>DestinationUserIdentifier</code>, together should not be larger than 20.
              Otherwise, an exception will be thrown.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func mergeDeveloperIdentities(input: MergeDeveloperIdentitiesInput, completion: @escaping (SdkResult<MergeDeveloperIdentitiesOutput, MergeDeveloperIdentitiesError>) -> Void)
    /**
     <p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func setIdentityPoolRoles(input: SetIdentityPoolRolesInput, completion: @escaping (SdkResult<SetIdentityPoolRolesOutput, SetIdentityPoolRolesError>) -> Void)
    /**
     <p>Assigns a set of tags to an Amazon Cognito identity pool. A tag is a label that you can
              use to categorize and manage identity pools in different ways, such as by purpose, owner,
              environment, or other criteria.</p>
              <p>Each tag consists of a key and value, both of which you define. A key is a general
              category for more specific values. For example, if you have two versions of an identity
              pool, one for testing and another for production, you might assign an
                 <code>Environment</code> tag key to both identity pools. The value of this key might be
                 <code>Test</code> for one identity pool and <code>Production</code> for the
              other.</p>
              <p>Tags are useful for cost tracking and access control. You can activate your tags so that
              they appear on the Billing and Cost Management console, where you can track the costs
              associated with your identity pools. In an IAM policy, you can constrain permissions for
              identity pools based on specific tags or tag values.</p>
              <p>You can use this action up to 5 times per second, per account. An identity pool can have
              as many as 50 tags.</p>
     */
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutput, TagResourceError>) -> Void)
    /**
     <p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked
              developer users will be considered new identities next time they are seen. If, for a given
              Cognito identity, you remove all federated identities as well as the developer user
              identifier, the Cognito identity becomes inaccessible.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func unlinkDeveloperIdentity(input: UnlinkDeveloperIdentityInput, completion: @escaping (SdkResult<UnlinkDeveloperIdentityOutput, UnlinkDeveloperIdentityError>) -> Void)
    /**
     <p>Unlinks a federated identity from an existing account. Unlinked logins will be
              considered new identities next time they are seen. Removing the last linked login will make
              this identity inaccessible.</p>
              <p>This is a public API. You do not need any credentials to call this API.</p>
     */
    func unlinkIdentity(input: UnlinkIdentityInput, completion: @escaping (SdkResult<UnlinkIdentityOutput, UnlinkIdentityError>) -> Void)
    /**
     <p>Removes the specified tags from an Amazon Cognito identity pool. You can use this action
              up to 5 times per second, per account</p>
     */
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutput, UntagResourceError>) -> Void)
    /**
     <p>Updates an identity pool.</p>
              <p>You must use AWS Developer credentials to call this API.</p>
     */
    func updateIdentityPool(input: UpdateIdentityPoolInput, completion: @escaping (SdkResult<UpdateIdentityPoolOutput, UpdateIdentityPoolError>) -> Void)
}