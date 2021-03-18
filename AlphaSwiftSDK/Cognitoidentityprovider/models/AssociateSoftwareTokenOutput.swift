// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateSoftwareTokenOutput: Equatable {
    /**
     <p>A unique generated shared secret code that is used in the TOTP algorithm to generate a
                 one time code.</p>
     */
    public let secretCode: String?
    /**
     <p>The session which should be passed both ways in challenge-response calls to the
                 service. This allows authentication of the user as part of the MFA setup process.</p>
     */
    public let session: String?

    public init (
        secretCode: String? = nil,
        session: String? = nil
    )
    {
        self.secretCode = secretCode
        self.session = session
    }
}
