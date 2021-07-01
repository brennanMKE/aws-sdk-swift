// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the price for a Reserved Instance.</p>
public struct PriceScheduleSpecification: Equatable {
    /// <p>The currency for transacting the Reserved Instance resale.
    /// 				At this time, the only supported currency is <code>USD</code>.</p>
    public let currencyCode: CurrencyCodeValues?
    /// <p>The fixed price for the term.</p>
    public let price: Double
    /// <p>The number of months remaining in the reservation. For example, 2 is the second to the last month before the capacity reservation expires.</p>
    public let term: Int

    public init (
        currencyCode: CurrencyCodeValues? = nil,
        price: Double = 0.0,
        term: Int = 0
    )
    {
        self.currencyCode = currencyCode
        self.price = price
        self.term = term
    }
}

extension PriceScheduleSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PriceScheduleSpecification(currencyCode: \(String(describing: currencyCode)), price: \(String(describing: price)), term: \(String(describing: term)))"}
}