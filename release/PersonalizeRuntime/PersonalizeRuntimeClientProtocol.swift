// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p></p>
public protocol PersonalizeRuntimeClientProtocol {
    /// <p>Re-ranks a list of recommended items for the given user. The first item in the list is
    ///       deemed the most likely item to be of interest to the user.</p>
    ///          <note>
    ///             <p>The solution backing the campaign must have been created using a recipe of type
    ///         PERSONALIZED_RANKING.</p>
    ///          </note>
    func getPersonalizedRanking(input: GetPersonalizedRankingInput, completion: @escaping (SdkResult<GetPersonalizedRankingOutputResponse, GetPersonalizedRankingOutputError>) -> Void)
    /// <p>Returns a list of recommended items. The required input depends on the recipe type used to
    ///       create the solution backing the campaign, as follows:</p>
    ///          <ul>
    ///             <li>
    ///                <p>RELATED_ITEMS - <code>itemId</code> required, <code>userId</code> not used</p>
    ///             </li>
    ///             <li>
    ///                <p>USER_PERSONALIZATION - <code>itemId</code> optional, <code>userId</code>
    ///           required</p>
    ///             </li>
    ///          </ul>
    ///          <note>
    ///             <p>Campaigns that are backed by a solution created using a recipe of type
    ///         PERSONALIZED_RANKING use the  API.</p>
    ///          </note>
    func getRecommendations(input: GetRecommendationsInput, completion: @escaping (SdkResult<GetRecommendationsOutputResponse, GetRecommendationsOutputError>) -> Void)
}