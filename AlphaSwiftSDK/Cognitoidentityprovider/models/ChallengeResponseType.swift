// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The challenge response type.</p>
public struct ChallengeResponseType: Equatable {
    /// <p>The challenge name</p>
    public let challengeName: ChallengeName?
    /// <p>The challenge response.</p>
    public let challengeResponse: ChallengeResponse?

    public init (
        challengeName: ChallengeName? = nil,
        challengeResponse: ChallengeResponse? = nil
    )
    {
        self.challengeName = challengeName
        self.challengeResponse = challengeResponse
    }
}
