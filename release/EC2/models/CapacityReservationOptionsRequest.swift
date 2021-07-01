// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand
///          capacity.</p>
///          <note>
///             <p>This strategy can only be used if the EC2 Fleet is of type <code>instant</code>.</p>
///          </note>
///          <p>For more information about Capacity Reservations, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html">On-Demand Capacity
///             Reservations</a> in the <i>Amazon EC2 User Guide</i>. For examples of using
///          Capacity Reservations in an EC2 Fleet, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html">EC2 Fleet example
///             configurations</a> in the <i>Amazon EC2 User Guide</i>.</p>
public struct CapacityReservationOptionsRequest: Equatable {
    /// <p>Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity.</p>
    ///          <p>If you specify <code>use-capacity-reservations-first</code>, the fleet uses unused
    ///          Capacity Reservations to fulfill On-Demand capacity up to the target On-Demand capacity. If
    ///          multiple instance pools have unused Capacity Reservations, the On-Demand allocation
    ///          strategy (<code>lowest-price</code> or <code>prioritized</code>) is applied. If the number
    ///          of unused Capacity Reservations is less than the On-Demand target capacity, the remaining
    ///          On-Demand target capacity is launched according to the On-Demand allocation strategy
    ///             (<code>lowest-price</code> or <code>prioritized</code>).</p>
    ///          <p>If you do not specify a value, the fleet fulfils the On-Demand capacity according to the
    ///          chosen On-Demand allocation strategy.</p>
    public let usageStrategy: FleetCapacityReservationUsageStrategy?

    public init (
        usageStrategy: FleetCapacityReservationUsageStrategy? = nil
    )
    {
        self.usageStrategy = usageStrategy
    }
}

extension CapacityReservationOptionsRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CapacityReservationOptionsRequest(usageStrategy: \(String(describing: usageStrategy)))"}
}