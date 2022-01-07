// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MigrationHubStrategyClient {
    /// Retrieves details about an application component.
    func getApplicationComponentDetails(input: GetApplicationComponentDetailsInput) async throws -> GetApplicationComponentDetailsOutputResponse
    {
        typealias getApplicationComponentDetailsContinuation = CheckedContinuation<GetApplicationComponentDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getApplicationComponentDetailsContinuation) in
            getApplicationComponentDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of all the recommended strategies and tools for an application component running on a server.
    func getApplicationComponentStrategies(input: GetApplicationComponentStrategiesInput) async throws -> GetApplicationComponentStrategiesOutputResponse
    {
        typealias getApplicationComponentStrategiesContinuation = CheckedContinuation<GetApplicationComponentStrategiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getApplicationComponentStrategiesContinuation) in
            getApplicationComponentStrategies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the status of an on-going assessment.
    func getAssessment(input: GetAssessmentInput) async throws -> GetAssessmentOutputResponse
    {
        typealias getAssessmentContinuation = CheckedContinuation<GetAssessmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAssessmentContinuation) in
            getAssessment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the details about a specific import task.
    func getImportFileTask(input: GetImportFileTaskInput) async throws -> GetImportFileTaskOutputResponse
    {
        typealias getImportFileTaskContinuation = CheckedContinuation<GetImportFileTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getImportFileTaskContinuation) in
            getImportFileTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves your migration and modernization preferences.
    func getPortfolioPreferences(input: GetPortfolioPreferencesInput) async throws -> GetPortfolioPreferencesOutputResponse
    {
        typealias getPortfolioPreferencesContinuation = CheckedContinuation<GetPortfolioPreferencesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getPortfolioPreferencesContinuation) in
            getPortfolioPreferences(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves overall summary including the number of servers to rehost and the overall number of anti-patterns.
    func getPortfolioSummary(input: GetPortfolioSummaryInput) async throws -> GetPortfolioSummaryOutputResponse
    {
        typealias getPortfolioSummaryContinuation = CheckedContinuation<GetPortfolioSummaryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getPortfolioSummaryContinuation) in
            getPortfolioSummary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves detailed information about the specified recommendation report.
    func getRecommendationReportDetails(input: GetRecommendationReportDetailsInput) async throws -> GetRecommendationReportDetailsOutputResponse
    {
        typealias getRecommendationReportDetailsContinuation = CheckedContinuation<GetRecommendationReportDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRecommendationReportDetailsContinuation) in
            getRecommendationReportDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves detailed information about a specified server.
    func getServerDetails(input: GetServerDetailsInput) async throws -> GetServerDetailsOutputResponse
    {
        typealias getServerDetailsContinuation = CheckedContinuation<GetServerDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getServerDetailsContinuation) in
            getServerDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves recommended strategies and tools for the specified server.
    func getServerStrategies(input: GetServerStrategiesInput) async throws -> GetServerStrategiesOutputResponse
    {
        typealias getServerStrategiesContinuation = CheckedContinuation<GetServerStrategiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getServerStrategiesContinuation) in
            getServerStrategies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of all the application components (processes).
    func listApplicationComponents(input: ListApplicationComponentsInput) async throws -> ListApplicationComponentsOutputResponse
    {
        typealias listApplicationComponentsContinuation = CheckedContinuation<ListApplicationComponentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationComponentsContinuation) in
            listApplicationComponents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of all the installed collectors.
    func listCollectors(input: ListCollectorsInput) async throws -> ListCollectorsOutputResponse
    {
        typealias listCollectorsContinuation = CheckedContinuation<ListCollectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCollectorsContinuation) in
            listCollectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of all the imports performed.
    func listImportFileTask(input: ListImportFileTaskInput) async throws -> ListImportFileTaskOutputResponse
    {
        typealias listImportFileTaskContinuation = CheckedContinuation<ListImportFileTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listImportFileTaskContinuation) in
            listImportFileTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of all the servers.
    func listServers(input: ListServersInput) async throws -> ListServersOutputResponse
    {
        typealias listServersContinuation = CheckedContinuation<ListServersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listServersContinuation) in
            listServers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Saves the specified migration and modernization preferences.
    func putPortfolioPreferences(input: PutPortfolioPreferencesInput) async throws -> PutPortfolioPreferencesOutputResponse
    {
        typealias putPortfolioPreferencesContinuation = CheckedContinuation<PutPortfolioPreferencesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putPortfolioPreferencesContinuation) in
            putPortfolioPreferences(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts the assessment of an on-premises environment.
    func startAssessment(input: StartAssessmentInput) async throws -> StartAssessmentOutputResponse
    {
        typealias startAssessmentContinuation = CheckedContinuation<StartAssessmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startAssessmentContinuation) in
            startAssessment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts a file import.
    func startImportFileTask(input: StartImportFileTaskInput) async throws -> StartImportFileTaskOutputResponse
    {
        typealias startImportFileTaskContinuation = CheckedContinuation<StartImportFileTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startImportFileTaskContinuation) in
            startImportFileTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts generating a recommendation report.
    func startRecommendationReportGeneration(input: StartRecommendationReportGenerationInput) async throws -> StartRecommendationReportGenerationOutputResponse
    {
        typealias startRecommendationReportGenerationContinuation = CheckedContinuation<StartRecommendationReportGenerationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startRecommendationReportGenerationContinuation) in
            startRecommendationReportGeneration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops the assessment of an on-premises environment.
    func stopAssessment(input: StopAssessmentInput) async throws -> StopAssessmentOutputResponse
    {
        typealias stopAssessmentContinuation = CheckedContinuation<StopAssessmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopAssessmentContinuation) in
            stopAssessment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the configuration of an application component.
    func updateApplicationComponentConfig(input: UpdateApplicationComponentConfigInput) async throws -> UpdateApplicationComponentConfigOutputResponse
    {
        typealias updateApplicationComponentConfigContinuation = CheckedContinuation<UpdateApplicationComponentConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateApplicationComponentConfigContinuation) in
            updateApplicationComponentConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the configuration of the specified server.
    func updateServerConfig(input: UpdateServerConfigInput) async throws -> UpdateServerConfigOutputResponse
    {
        typealias updateServerConfigContinuation = CheckedContinuation<UpdateServerConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateServerConfigContinuation) in
            updateServerConfig(input: input) { result in
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
