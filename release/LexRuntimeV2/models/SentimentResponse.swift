// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about the sentiment expressed in a user's
///          response in a conversation. Sentiments are determined using Amazon
///          Comprehend. Sentiments are only returned if they are enabled for the
///          bot.</p>
///          <p>For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-sentiment.html">
///             Determine Sentiment </a> in the <i>Amazon Comprehend
///             developer guide</i>.</p>
public struct SentimentResponse: Equatable {
    /// <p>The overall sentiment expressed in the user's response. This is the
    ///          sentiment most likely expressed by the user based on the analysis by
    ///          Amazon Comprehend.</p>
    public let sentiment: SentimentType?
    /// <p>The individual sentiment responses for the utterance.</p>
    public let sentimentScore: SentimentScore?

    public init (
        sentiment: SentimentType? = nil,
        sentimentScore: SentimentScore? = nil
    )
    {
        self.sentiment = sentiment
        self.sentimentScore = sentimentScore
    }
}

extension SentimentResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SentimentResponse(sentiment: \(String(describing: sentiment)), sentimentScore: \(String(describing: sentimentScore)))"}
}