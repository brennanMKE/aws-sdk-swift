// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SmsClient {
    /// Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
    func createApp(input: CreateAppInput) async throws -> CreateAppOutputResponse
    {
        typealias createAppContinuation = CheckedContinuation<CreateAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAppContinuation) in
            createApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a replication job. The replication job schedules periodic replication runs to replicate your server to Amazon Web Services. Each replication run creates an Amazon Machine Image (AMI).
    func createReplicationJob(input: CreateReplicationJobInput) async throws -> CreateReplicationJobOutputResponse
    {
        typealias createReplicationJobContinuation = CheckedContinuation<CreateReplicationJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createReplicationJobContinuation) in
            createReplicationJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified application. Optionally deletes the launched stack associated with the application and all Server Migration Service replication jobs for servers in the application.
    func deleteApp(input: DeleteAppInput) async throws -> DeleteAppOutputResponse
    {
        typealias deleteAppContinuation = CheckedContinuation<DeleteAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppContinuation) in
            deleteApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the launch configuration for the specified application.
    func deleteAppLaunchConfiguration(input: DeleteAppLaunchConfigurationInput) async throws -> DeleteAppLaunchConfigurationOutputResponse
    {
        typealias deleteAppLaunchConfigurationContinuation = CheckedContinuation<DeleteAppLaunchConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppLaunchConfigurationContinuation) in
            deleteAppLaunchConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the replication configuration for the specified application.
    func deleteAppReplicationConfiguration(input: DeleteAppReplicationConfigurationInput) async throws -> DeleteAppReplicationConfigurationOutputResponse
    {
        typealias deleteAppReplicationConfigurationContinuation = CheckedContinuation<DeleteAppReplicationConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppReplicationConfigurationContinuation) in
            deleteAppReplicationConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the validation configuration for the specified application.
    func deleteAppValidationConfiguration(input: DeleteAppValidationConfigurationInput) async throws -> DeleteAppValidationConfigurationOutputResponse
    {
        typealias deleteAppValidationConfigurationContinuation = CheckedContinuation<DeleteAppValidationConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppValidationConfigurationContinuation) in
            deleteAppValidationConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified replication job. After you delete a replication job, there are no further replication runs. Amazon Web Services deletes the contents of the Amazon S3 bucket used to store Server Migration Service artifacts. The AMIs created by the replication runs are not deleted.
    func deleteReplicationJob(input: DeleteReplicationJobInput) async throws -> DeleteReplicationJobOutputResponse
    {
        typealias deleteReplicationJobContinuation = CheckedContinuation<DeleteReplicationJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteReplicationJobContinuation) in
            deleteReplicationJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes all servers from your server catalog.
    func deleteServerCatalog(input: DeleteServerCatalogInput) async throws -> DeleteServerCatalogOutputResponse
    {
        typealias deleteServerCatalogContinuation = CheckedContinuation<DeleteServerCatalogOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteServerCatalogContinuation) in
            deleteServerCatalog(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociates the specified connector from Server Migration Service. After you disassociate a connector, it is no longer available to support replication jobs.
    func disassociateConnector(input: DisassociateConnectorInput) async throws -> DisassociateConnectorOutputResponse
    {
        typealias disassociateConnectorContinuation = CheckedContinuation<DisassociateConnectorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateConnectorContinuation) in
            disassociateConnector(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    func generateChangeSet(input: GenerateChangeSetInput) async throws -> GenerateChangeSetOutputResponse
    {
        typealias generateChangeSetContinuation = CheckedContinuation<GenerateChangeSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: generateChangeSetContinuation) in
            generateChangeSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Generates an CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    func generateTemplate(input: GenerateTemplateInput) async throws -> GenerateTemplateOutputResponse
    {
        typealias generateTemplateContinuation = CheckedContinuation<GenerateTemplateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: generateTemplateContinuation) in
            generateTemplate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieve information about the specified application.
    func getApp(input: GetAppInput) async throws -> GetAppOutputResponse
    {
        typealias getAppContinuation = CheckedContinuation<GetAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppContinuation) in
            getApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the application launch configuration associated with the specified application.
    func getAppLaunchConfiguration(input: GetAppLaunchConfigurationInput) async throws -> GetAppLaunchConfigurationOutputResponse
    {
        typealias getAppLaunchConfigurationContinuation = CheckedContinuation<GetAppLaunchConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppLaunchConfigurationContinuation) in
            getAppLaunchConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the application replication configuration associated with the specified application.
    func getAppReplicationConfiguration(input: GetAppReplicationConfigurationInput) async throws -> GetAppReplicationConfigurationOutputResponse
    {
        typealias getAppReplicationConfigurationContinuation = CheckedContinuation<GetAppReplicationConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppReplicationConfigurationContinuation) in
            getAppReplicationConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about a configuration for validating an application.
    func getAppValidationConfiguration(input: GetAppValidationConfigurationInput) async throws -> GetAppValidationConfigurationOutputResponse
    {
        typealias getAppValidationConfigurationContinuation = CheckedContinuation<GetAppValidationConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppValidationConfigurationContinuation) in
            getAppValidationConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves output from validating an application.
    func getAppValidationOutput(input: GetAppValidationOutputInput) async throws -> GetAppValidationOutputOutputResponse
    {
        typealias getAppValidationOutputContinuation = CheckedContinuation<GetAppValidationOutputOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppValidationOutputContinuation) in
            getAppValidationOutput(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the connectors registered with the Server Migration Service.
    func getConnectors(input: GetConnectorsInput) async throws -> GetConnectorsOutputResponse
    {
        typealias getConnectorsContinuation = CheckedContinuation<GetConnectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getConnectorsContinuation) in
            getConnectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the specified replication job or all of your replication jobs.
    func getReplicationJobs(input: GetReplicationJobsInput) async throws -> GetReplicationJobsOutputResponse
    {
        typealias getReplicationJobsContinuation = CheckedContinuation<GetReplicationJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReplicationJobsContinuation) in
            getReplicationJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the replication runs for the specified replication job.
    func getReplicationRuns(input: GetReplicationRunsInput) async throws -> GetReplicationRunsOutputResponse
    {
        typealias getReplicationRunsContinuation = CheckedContinuation<GetReplicationRunsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReplicationRunsContinuation) in
            getReplicationRuns(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the servers in your server catalog. Before you can describe your servers, you must import them using [ImportServerCatalog].
    func getServers(input: GetServersInput) async throws -> GetServersOutputResponse
    {
        typealias getServersContinuation = CheckedContinuation<GetServersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getServersContinuation) in
            getServers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Allows application import from Migration Hub.
    func importAppCatalog(input: ImportAppCatalogInput) async throws -> ImportAppCatalogOutputResponse
    {
        typealias importAppCatalogContinuation = CheckedContinuation<ImportAppCatalogOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importAppCatalogContinuation) in
            importAppCatalog(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import. This call returns immediately, but might take additional time to retrieve all the servers.
    func importServerCatalog(input: ImportServerCatalogInput) async throws -> ImportServerCatalogOutputResponse
    {
        typealias importServerCatalogContinuation = CheckedContinuation<ImportServerCatalogOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importServerCatalogContinuation) in
            importServerCatalog(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Launches the specified application as a stack in CloudFormation.
    func launchApp(input: LaunchAppInput) async throws -> LaunchAppOutputResponse
    {
        typealias launchAppContinuation = CheckedContinuation<LaunchAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: launchAppContinuation) in
            launchApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves summaries for all applications.
    func listApps(input: ListAppsInput) async throws -> ListAppsOutputResponse
    {
        typealias listAppsContinuation = CheckedContinuation<ListAppsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAppsContinuation) in
            listApps(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides information to Server Migration Service about whether application validation is successful.
    func notifyAppValidationOutput(input: NotifyAppValidationOutputInput) async throws -> NotifyAppValidationOutputOutputResponse
    {
        typealias notifyAppValidationOutputContinuation = CheckedContinuation<NotifyAppValidationOutputOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: notifyAppValidationOutputContinuation) in
            notifyAppValidationOutput(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates or updates the launch configuration for the specified application.
    func putAppLaunchConfiguration(input: PutAppLaunchConfigurationInput) async throws -> PutAppLaunchConfigurationOutputResponse
    {
        typealias putAppLaunchConfigurationContinuation = CheckedContinuation<PutAppLaunchConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putAppLaunchConfigurationContinuation) in
            putAppLaunchConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates or updates the replication configuration for the specified application.
    func putAppReplicationConfiguration(input: PutAppReplicationConfigurationInput) async throws -> PutAppReplicationConfigurationOutputResponse
    {
        typealias putAppReplicationConfigurationContinuation = CheckedContinuation<PutAppReplicationConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putAppReplicationConfigurationContinuation) in
            putAppReplicationConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates or updates a validation configuration for the specified application.
    func putAppValidationConfiguration(input: PutAppValidationConfigurationInput) async throws -> PutAppValidationConfigurationOutputResponse
    {
        typealias putAppValidationConfigurationContinuation = CheckedContinuation<PutAppValidationConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putAppValidationConfigurationContinuation) in
            putAppValidationConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts replicating the specified application by creating replication jobs for each server in the application.
    func startAppReplication(input: StartAppReplicationInput) async throws -> StartAppReplicationOutputResponse
    {
        typealias startAppReplicationContinuation = CheckedContinuation<StartAppReplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startAppReplicationContinuation) in
            startAppReplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts an on-demand replication run for the specified application.
    func startOnDemandAppReplication(input: StartOnDemandAppReplicationInput) async throws -> StartOnDemandAppReplicationOutputResponse
    {
        typealias startOnDemandAppReplicationContinuation = CheckedContinuation<StartOnDemandAppReplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startOnDemandAppReplicationContinuation) in
            startOnDemandAppReplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.
    func startOnDemandReplicationRun(input: StartOnDemandReplicationRunInput) async throws -> StartOnDemandReplicationRunOutputResponse
    {
        typealias startOnDemandReplicationRunContinuation = CheckedContinuation<StartOnDemandReplicationRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startOnDemandReplicationRunContinuation) in
            startOnDemandReplicationRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops replicating the specified application by deleting the replication job for each server in the application.
    func stopAppReplication(input: StopAppReplicationInput) async throws -> StopAppReplicationOutputResponse
    {
        typealias stopAppReplicationContinuation = CheckedContinuation<StopAppReplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopAppReplicationContinuation) in
            stopAppReplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Terminates the stack for the specified application.
    func terminateApp(input: TerminateAppInput) async throws -> TerminateAppOutputResponse
    {
        typealias terminateAppContinuation = CheckedContinuation<TerminateAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: terminateAppContinuation) in
            terminateApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified application.
    func updateApp(input: UpdateAppInput) async throws -> UpdateAppOutputResponse
    {
        typealias updateAppContinuation = CheckedContinuation<UpdateAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAppContinuation) in
            updateApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified settings for the specified replication job.
    func updateReplicationJob(input: UpdateReplicationJobInput) async throws -> UpdateReplicationJobOutputResponse
    {
        typealias updateReplicationJobContinuation = CheckedContinuation<UpdateReplicationJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateReplicationJobContinuation) in
            updateReplicationJob(input: input) { result in
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
