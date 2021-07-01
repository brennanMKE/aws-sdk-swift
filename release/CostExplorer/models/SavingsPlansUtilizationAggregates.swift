// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The aggregated utilization metrics for your Savings Plans usage.</p>
public struct SavingsPlansUtilizationAggregates: Equatable {
    /// <p>The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.</p>
    public let amortizedCommitment: SavingsPlansAmortizedCommitment?
    /// <p>The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans, as well as the <code>onDemandCostEquivalent</code> of the Savings Plans when considering the utilization rate.</p>
    public let savings: SavingsPlansSavings?
    /// <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.</p>
    public let utilization: SavingsPlansUtilization?

    public init (
        amortizedCommitment: SavingsPlansAmortizedCommitment? = nil,
        savings: SavingsPlansSavings? = nil,
        utilization: SavingsPlansUtilization? = nil
    )
    {
        self.amortizedCommitment = amortizedCommitment
        self.savings = savings
        self.utilization = utilization
    }
}

extension SavingsPlansUtilizationAggregates: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SavingsPlansUtilizationAggregates(amortizedCommitment: \(String(describing: amortizedCommitment)), savings: \(String(describing: savings)), utilization: \(String(describing: utilization)))"}
}