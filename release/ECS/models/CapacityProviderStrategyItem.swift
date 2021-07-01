// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The details of a capacity provider strategy. A capacity provider strategy can be set
/// 			when using the <a>RunTask</a> or <a>CreateCluster</a> APIs or as
/// 			the default capacity provider strategy for a cluster with the <a>CreateCluster</a> API.</p>
/// 		       <p>Only capacity providers that are already associated with a cluster and have an
/// 				<code>ACTIVE</code> or <code>UPDATING</code> status can be used in a capacity
/// 			provider strategy. The <a>PutClusterCapacityProviders</a> API is used to
/// 			associate a capacity provider with a cluster.</p>
/// 		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
/// 			provider must already be created. New Auto Scaling group capacity providers can be
/// 			created with the <a>CreateCapacityProvider</a> API operation.</p>
/// 		       <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or
/// 				<code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are
/// 			available to all accounts and only need to be associated with a cluster to be used in a
/// 			capacity provider strategy.</p>
public struct CapacityProviderStrategyItem: Equatable {
    /// <p>The <i>base</i> value designates how many tasks, at a minimum, to run on
    /// 			the specified capacity provider. Only one capacity provider in a capacity provider
    /// 			strategy can have a <i>base</i> defined. If no value is specified, the
    /// 			default value of <code>0</code> is used.</p>
    public let base: Int
    /// <p>The short name of the capacity provider.</p>
    public let capacityProvider: String?
    /// <p>The <i>weight</i> value designates the relative percentage of the total
    /// 			number of tasks launched that should use the specified capacity provider. The
    /// 				<code>weight</code> value is taken into consideration after the <code>base</code>
    /// 			value, if defined, is satisfied.</p>
    /// 		       <p>If no <code>weight</code> value is specified, the default value of <code>0</code> is
    /// 			used. When multiple capacity providers are specified within a capacity provider
    /// 			strategy, at least one of the capacity providers must have a weight value greater than
    /// 			zero and any capacity providers with a weight of <code>0</code> will not be used to
    /// 			place tasks. If you specify multiple capacity providers in a strategy that all have a
    /// 			weight of <code>0</code>, any <code>RunTask</code> or <code>CreateService</code> actions
    /// 			using the capacity provider strategy will fail.</p>
    /// 		       <p>An example scenario for using weights is defining a strategy that contains two
    /// 			capacity providers and both have a weight of <code>1</code>, then when the
    /// 				<code>base</code> is satisfied, the tasks will be split evenly across the two
    /// 			capacity providers. Using that same logic, if you specify a weight of <code>1</code> for
    /// 				<i>capacityProviderA</i> and a weight of <code>4</code> for
    /// 				<i>capacityProviderB</i>, then for every one task that is run using
    /// 				<i>capacityProviderA</i>, four tasks would use
    /// 				<i>capacityProviderB</i>.</p>
    public let weight: Int

    public init (
        base: Int = 0,
        capacityProvider: String? = nil,
        weight: Int = 0
    )
    {
        self.base = base
        self.capacityProvider = capacityProvider
        self.weight = weight
    }
}

extension CapacityProviderStrategyItem: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CapacityProviderStrategyItem(base: \(String(describing: base)), capacityProvider: \(String(describing: capacityProvider)), weight: \(String(describing: weight)))"}
}