// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about whether instances in the original environment are terminated when a
///             blue/green deployment is successful. <code>BlueInstanceTerminationOption</code> does not
///             apply to Lambda deployments. </p>
public struct BlueInstanceTerminationOption: Equatable {
    /// <p>The action to take on instances in the original environment after a successful
    ///             blue/green deployment.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>TERMINATE</code>: Instances are terminated after a specified wait
    ///                     time.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>KEEP_ALIVE</code>: Instances are left running after they are
    ///                     deregistered from the load balancer and removed from the deployment
    ///                     group.</p>
    ///             </li>
    ///          </ul>
    public let action: InstanceAction?
    /// <p>For an Amazon EC2 deployment, the number of minutes to wait after a successful
    ///             blue/green deployment before terminating instances from the original environment.</p>
    ///
    ///         <p> For an Amazon ECS deployment, the number of minutes before deleting the original
    ///             (blue) task set. During an Amazon ECS deployment, CodeDeploy shifts traffic from the
    ///             original (blue) task set to a replacement (green) task set. </p>
    ///
    ///         <p> The maximum setting is 2880 minutes (2 days). </p>
    public let terminationWaitTimeInMinutes: Int

    public init (
        action: InstanceAction? = nil,
        terminationWaitTimeInMinutes: Int = 0
    )
    {
        self.action = action
        self.terminationWaitTimeInMinutes = terminationWaitTimeInMinutes
    }
}

extension BlueInstanceTerminationOption: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BlueInstanceTerminationOption(action: \(String(describing: action)), terminationWaitTimeInMinutes: \(String(describing: terminationWaitTimeInMinutes)))"}
}