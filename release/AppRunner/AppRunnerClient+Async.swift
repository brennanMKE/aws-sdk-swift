// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AppRunnerClient {
    /// <p>Associate your own domain name with the AWS App Runner subdomain URL of your App Runner service.</p>
    ///          <p>After you call <code>AssociateCustomDomain</code> and receive a successful response, use the information in the <a>CustomDomain</a> record
    ///       that's returned to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain and one or
    ///       more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name that you associated. App Runner tracks
    ///       domain validity in a certificate stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide">AWS Certificate Manager (ACM)</a>.</p>
    func associateCustomDomain(input: AssociateCustomDomainInput) async throws -> AssociateCustomDomainOutputResponse
    {
        typealias associateCustomDomainContinuation = CheckedContinuation<AssociateCustomDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateCustomDomainContinuation) in
            associateCustomDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Create an AWS App Runner automatic scaling configuration resource. App Runner requires this resource
    ///       when you create App Runner services that require non-default auto scaling settings. You can share an
    ///       auto scaling configuration across multiple services.</p>
    ///          <p>Create multiple revisions of a configuration by using the same <code>AutoScalingConfigurationName</code> and different
    ///         <code>AutoScalingConfigurationRevision</code> values. When you create a service, you can set it to use the latest active revision of an auto scaling
    ///       configuration or a specific revision.</p>
    ///          <p>Configure a higher <code>MinSize</code> to increase the spread of your App Runner service over more Availability Zones in the AWS Region. The tradeoff is
    ///       a higher minimal cost.</p>
    ///          <p>Configure a lower <code>MaxSize</code> to control your cost. The tradeoff is lower responsiveness during peak demand.</p>
    func createAutoScalingConfiguration(input: CreateAutoScalingConfigurationInput) async throws -> CreateAutoScalingConfigurationOutputResponse
    {
        typealias createAutoScalingConfigurationContinuation = CheckedContinuation<CreateAutoScalingConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAutoScalingConfigurationContinuation) in
            createAutoScalingConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Create an AWS App Runner connection resource. App Runner requires a connection resource when you create App Runner services that access private repositories from
    ///       certain third-party providers. You can share a connection across multiple services.</p>
    ///          <p>A connection resource is needed to access GitHub repositories. GitHub requires a user interface approval process through the App Runner console before you
    ///       can use the connection.</p>
    func createConnection(input: CreateConnectionInput) async throws -> CreateConnectionOutputResponse
    {
        typealias createConnectionContinuation = CheckedContinuation<CreateConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createConnectionContinuation) in
            createConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Create an AWS App Runner service. After the service is created, the action also automatically starts a deployment.</p>
    ///          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html">ListOperations</a> call to track the operation's progress.</p>
    func createService(input: CreateServiceInput) async throws -> CreateServiceOutputResponse
    {
        typealias createServiceContinuation = CheckedContinuation<CreateServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createServiceContinuation) in
            createService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Delete an AWS App Runner automatic scaling configuration resource. You can delete a specific revision or the latest active revision. You can't delete a
    ///       configuration that's used by one or more App Runner services.</p>
    func deleteAutoScalingConfiguration(input: DeleteAutoScalingConfigurationInput) async throws -> DeleteAutoScalingConfigurationOutputResponse
    {
        typealias deleteAutoScalingConfigurationContinuation = CheckedContinuation<DeleteAutoScalingConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAutoScalingConfigurationContinuation) in
            deleteAutoScalingConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Delete an AWS App Runner connection. You must first ensure that there are no running App Runner services that use this connection. If there are any, the
    ///         <code>DeleteConnection</code> action fails.</p>
    func deleteConnection(input: DeleteConnectionInput) async throws -> DeleteConnectionOutputResponse
    {
        typealias deleteConnectionContinuation = CheckedContinuation<DeleteConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteConnectionContinuation) in
            deleteConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Delete an AWS App Runner service.</p>
    ///          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    ///       call to track the operation's progress.</p>
    func deleteService(input: DeleteServiceInput) async throws -> DeleteServiceOutputResponse
    {
        typealias deleteServiceContinuation = CheckedContinuation<DeleteServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteServiceContinuation) in
            deleteService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Return a full description of an AWS App Runner automatic scaling configuration resource.</p>
    func describeAutoScalingConfiguration(input: DescribeAutoScalingConfigurationInput) async throws -> DescribeAutoScalingConfigurationOutputResponse
    {
        typealias describeAutoScalingConfigurationContinuation = CheckedContinuation<DescribeAutoScalingConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAutoScalingConfigurationContinuation) in
            describeAutoScalingConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Return a description of custom domain names that are associated with an AWS App Runner service.</p>
    func describeCustomDomains(input: DescribeCustomDomainsInput) async throws -> DescribeCustomDomainsOutputResponse
    {
        typealias describeCustomDomainsContinuation = CheckedContinuation<DescribeCustomDomainsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeCustomDomainsContinuation) in
            describeCustomDomains(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Return a full description of an AWS App Runner service.</p>
    func describeService(input: DescribeServiceInput) async throws -> DescribeServiceOutputResponse
    {
        typealias describeServiceContinuation = CheckedContinuation<DescribeServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeServiceContinuation) in
            describeService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Disassociate a custom domain name from an AWS App Runner service.</p>
    ///          <p>Certificates tracking domain validity are associated with a custom domain and are stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide">AWS
    ///         Certificate Manager (ACM)</a>. These certificates aren't deleted as part of this action. App Runner delays certificate deletion for
    ///       30 days after a domain is disassociated from your service.</p>
    func disassociateCustomDomain(input: DisassociateCustomDomainInput) async throws -> DisassociateCustomDomainOutputResponse
    {
        typealias disassociateCustomDomainContinuation = CheckedContinuation<DisassociateCustomDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateCustomDomainContinuation) in
            disassociateCustomDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of AWS App Runner automatic scaling configurations in your AWS account. You can query the revisions for a specific configuration name or
    ///       the revisions for all configurations in your account. You can optionally query only the latest revision of each requested name.</p>
    func listAutoScalingConfigurations(input: ListAutoScalingConfigurationsInput) async throws -> ListAutoScalingConfigurationsOutputResponse
    {
        typealias listAutoScalingConfigurationsContinuation = CheckedContinuation<ListAutoScalingConfigurationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAutoScalingConfigurationsContinuation) in
            listAutoScalingConfigurations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of AWS App Runner connections that are associated with your AWS account.</p>
    func listConnections(input: ListConnectionsInput) async throws -> ListConnectionsOutputResponse
    {
        typealias listConnectionsContinuation = CheckedContinuation<ListConnectionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listConnectionsContinuation) in
            listConnections(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Return a list of operations that occurred on an AWS App Runner service.</p>
    ///          <p>The resulting list of <a>OperationSummary</a> objects is sorted in reverse chronological order. The first object on the list represents the
    ///       last started operation.</p>
    func listOperations(input: ListOperationsInput) async throws -> ListOperationsOutputResponse
    {
        typealias listOperationsContinuation = CheckedContinuation<ListOperationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listOperationsContinuation) in
            listOperations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of running AWS App Runner services in your AWS account.</p>
    func listServices(input: ListServicesInput) async throws -> ListServicesOutputResponse
    {
        typealias listServicesContinuation = CheckedContinuation<ListServicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listServicesContinuation) in
            listServices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>List tags that are associated with for an AWS App Runner resource. The response contains a list of tag key-value pairs.</p>
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Pause an active AWS App Runner service. App Runner reduces compute capacity for the service to zero and loses state (for example, ephemeral storage is
    ///       removed).</p>
    ///          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    ///       call to track the operation's progress.</p>
    func pauseService(input: PauseServiceInput) async throws -> PauseServiceOutputResponse
    {
        typealias pauseServiceContinuation = CheckedContinuation<PauseServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: pauseServiceContinuation) in
            pauseService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Resume an active AWS App Runner service. App Runner provisions compute capacity for the service.</p>
    ///          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    ///       call to track the operation's progress.</p>
    func resumeService(input: ResumeServiceInput) async throws -> ResumeServiceOutputResponse
    {
        typealias resumeServiceContinuation = CheckedContinuation<ResumeServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: resumeServiceContinuation) in
            resumeService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Initiate a manual deployment of the latest commit in a source code repository or the latest image in a source image repository to an AWS App Runner
    ///       service.</p>
    ///          <p>For a source code repository, App Runner retrieves the commit and builds a Docker image. For a source image repository, App Runner retrieves the latest Docker
    ///       image. In both cases, App Runner then deploys the new image to your service and starts a new container instance.</p>
    ///          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    ///       call to track the operation's progress.</p>
    func startDeployment(input: StartDeploymentInput) async throws -> StartDeploymentOutputResponse
    {
        typealias startDeploymentContinuation = CheckedContinuation<StartDeploymentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startDeploymentContinuation) in
            startDeployment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Add tags to, or update the tag values of, an App Runner resource. A tag is a key-value pair.</p>
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Remove tags from an App Runner resource.</p>
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Update an AWS App Runner service. You can update the source configuration and instance configuration of the service. You can also update the ARN of the auto
    ///       scaling configuration resource that's associated with the service. However, you can't change the name or the encryption configuration of the service.
    ///       These can be set only when you create the service.</p>
    ///          <p>To update the tags applied to your service, use the separate actions <a>TagResource</a> and <a>UntagResource</a>.</p>
    ///          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    ///       call to track the operation's progress.</p>
    func updateService(input: UpdateServiceInput) async throws -> UpdateServiceOutputResponse
    {
        typealias updateServiceContinuation = CheckedContinuation<UpdateServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateServiceContinuation) in
            updateService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif