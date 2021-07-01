// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> Response of DescribeBudgets </p>
public struct DescribeBudgetsOutputResponse: Equatable {
    /// <p>A list of budgets.</p>
    public let budgets: [Budget]?
    /// <p>The pagination token in the service response that indicates the next set of results that you can retrieve.</p>
    public let nextToken: String?

    public init (
        budgets: [Budget]? = nil,
        nextToken: String? = nil
    )
    {
        self.budgets = budgets
        self.nextToken = nextToken
    }
}

extension DescribeBudgetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeBudgetsOutputResponse(budgets: \(String(describing: budgets)), nextToken: \(String(describing: nextToken)))"}
}