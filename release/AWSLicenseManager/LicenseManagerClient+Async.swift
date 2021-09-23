// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension LicenseManagerClient {
    /// Accepts the specified grant.
    func acceptGrant(input: AcceptGrantInput) async throws -> AcceptGrantOutputResponse
    {
        typealias acceptGrantContinuation = CheckedContinuation<AcceptGrantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: acceptGrantContinuation) in
            acceptGrant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Checks in the specified license. Check in a license when it is no longer in use.
    func checkInLicense(input: CheckInLicenseInput) async throws -> CheckInLicenseOutputResponse
    {
        typealias checkInLicenseContinuation = CheckedContinuation<CheckInLicenseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: checkInLicenseContinuation) in
            checkInLicense(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Checks out the specified license for offline use.
    func checkoutBorrowLicense(input: CheckoutBorrowLicenseInput) async throws -> CheckoutBorrowLicenseOutputResponse
    {
        typealias checkoutBorrowLicenseContinuation = CheckedContinuation<CheckoutBorrowLicenseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: checkoutBorrowLicenseContinuation) in
            checkoutBorrowLicense(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Checks out the specified license.
    func checkoutLicense(input: CheckoutLicenseInput) async throws -> CheckoutLicenseOutputResponse
    {
        typealias checkoutLicenseContinuation = CheckedContinuation<CheckoutLicenseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: checkoutLicenseContinuation) in
            checkoutLicense(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a grant for the specified license. A grant shares the use of license entitlements with specific AWS accounts.
    func createGrant(input: CreateGrantInput) async throws -> CreateGrantOutputResponse
    {
        typealias createGrantContinuation = CheckedContinuation<CreateGrantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createGrantContinuation) in
            createGrant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new version of the specified grant.
    func createGrantVersion(input: CreateGrantVersionInput) async throws -> CreateGrantVersionOutputResponse
    {
        typealias createGrantVersionContinuation = CheckedContinuation<CreateGrantVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createGrantVersionContinuation) in
            createGrantVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a license.
    func createLicense(input: CreateLicenseInput) async throws -> CreateLicenseOutputResponse
    {
        typealias createLicenseContinuation = CheckedContinuation<CreateLicenseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLicenseContinuation) in
            createLicense(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a license configuration.
    ///          A license configuration is an abstraction of a customer license agreement that can be
    ///          consumed and enforced by License Manager. Components include specifications for the license
    ///          type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
    ///          Dedicated Instance, Dedicated Host, or all of these), license affinity  to host (how long a
    ///          license must be associated with a host), and the number of licenses purchased and used.
    func createLicenseConfiguration(input: CreateLicenseConfigurationInput) async throws -> CreateLicenseConfigurationOutputResponse
    {
        typealias createLicenseConfigurationContinuation = CheckedContinuation<CreateLicenseConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLicenseConfigurationContinuation) in
            createLicenseConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new report generator.
    func createLicenseManagerReportGenerator(input: CreateLicenseManagerReportGeneratorInput) async throws -> CreateLicenseManagerReportGeneratorOutputResponse
    {
        typealias createLicenseManagerReportGeneratorContinuation = CheckedContinuation<CreateLicenseManagerReportGeneratorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLicenseManagerReportGeneratorContinuation) in
            createLicenseManagerReportGenerator(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new version of the specified license.
    func createLicenseVersion(input: CreateLicenseVersionInput) async throws -> CreateLicenseVersionOutputResponse
    {
        typealias createLicenseVersionContinuation = CheckedContinuation<CreateLicenseVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLicenseVersionContinuation) in
            createLicenseVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a long-lived token.
    ///          A refresh token is a JWT token used to get an access token. With an access token,
    ///           you can call AssumeRoleWithWebIdentity to get role credentials that you can use to
    ///           call License Manager to manage the specified license.
    func createToken(input: CreateTokenInput) async throws -> CreateTokenOutputResponse
    {
        typealias createTokenContinuation = CheckedContinuation<CreateTokenOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createTokenContinuation) in
            createToken(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified grant.
    func deleteGrant(input: DeleteGrantInput) async throws -> DeleteGrantOutputResponse
    {
        typealias deleteGrantContinuation = CheckedContinuation<DeleteGrantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteGrantContinuation) in
            deleteGrant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified license.
    func deleteLicense(input: DeleteLicenseInput) async throws -> DeleteLicenseOutputResponse
    {
        typealias deleteLicenseContinuation = CheckedContinuation<DeleteLicenseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLicenseContinuation) in
            deleteLicense(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified license configuration.
    ///          You cannot delete a license configuration that is in use.
    func deleteLicenseConfiguration(input: DeleteLicenseConfigurationInput) async throws -> DeleteLicenseConfigurationOutputResponse
    {
        typealias deleteLicenseConfigurationContinuation = CheckedContinuation<DeleteLicenseConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLicenseConfigurationContinuation) in
            deleteLicenseConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete an existing report generator.
    ///          This action deletes the report generator, which stops it from generating future reports and cannot be reversed. However, the previous reports from this generator will remain in your S3 bucket.
    func deleteLicenseManagerReportGenerator(input: DeleteLicenseManagerReportGeneratorInput) async throws -> DeleteLicenseManagerReportGeneratorOutputResponse
    {
        typealias deleteLicenseManagerReportGeneratorContinuation = CheckedContinuation<DeleteLicenseManagerReportGeneratorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLicenseManagerReportGeneratorContinuation) in
            deleteLicenseManagerReportGenerator(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified token. Must be called in the license home Region.
    func deleteToken(input: DeleteTokenInput) async throws -> DeleteTokenOutputResponse
    {
        typealias deleteTokenContinuation = CheckedContinuation<DeleteTokenOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteTokenContinuation) in
            deleteToken(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Extends the expiration date for license consumption.
    func extendLicenseConsumption(input: ExtendLicenseConsumptionInput) async throws -> ExtendLicenseConsumptionOutputResponse
    {
        typealias extendLicenseConsumptionContinuation = CheckedContinuation<ExtendLicenseConsumptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: extendLicenseConsumptionContinuation) in
            extendLicenseConsumption(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a temporary access token to use with AssumeRoleWithWebIdentity. Access tokens
    ///           are valid for one hour.
    func getAccessToken(input: GetAccessTokenInput) async throws -> GetAccessTokenOutputResponse
    {
        typealias getAccessTokenContinuation = CheckedContinuation<GetAccessTokenOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAccessTokenContinuation) in
            getAccessToken(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets detailed information about the specified grant.
    func getGrant(input: GetGrantInput) async throws -> GetGrantOutputResponse
    {
        typealias getGrantContinuation = CheckedContinuation<GetGrantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getGrantContinuation) in
            getGrant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets detailed information about the specified license.
    func getLicense(input: GetLicenseInput) async throws -> GetLicenseOutputResponse
    {
        typealias getLicenseContinuation = CheckedContinuation<GetLicenseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLicenseContinuation) in
            getLicense(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets detailed information about the specified license configuration.
    func getLicenseConfiguration(input: GetLicenseConfigurationInput) async throws -> GetLicenseConfigurationOutputResponse
    {
        typealias getLicenseConfigurationContinuation = CheckedContinuation<GetLicenseConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLicenseConfigurationContinuation) in
            getLicenseConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information on the specified report generator.
    func getLicenseManagerReportGenerator(input: GetLicenseManagerReportGeneratorInput) async throws -> GetLicenseManagerReportGeneratorOutputResponse
    {
        typealias getLicenseManagerReportGeneratorContinuation = CheckedContinuation<GetLicenseManagerReportGeneratorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLicenseManagerReportGeneratorContinuation) in
            getLicenseManagerReportGenerator(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets detailed information about the usage of the specified license.
    func getLicenseUsage(input: GetLicenseUsageInput) async throws -> GetLicenseUsageOutputResponse
    {
        typealias getLicenseUsageContinuation = CheckedContinuation<GetLicenseUsageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLicenseUsageContinuation) in
            getLicenseUsage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the License Manager settings for the current Region.
    func getServiceSettings(input: GetServiceSettingsInput) async throws -> GetServiceSettingsOutputResponse
    {
        typealias getServiceSettingsContinuation = CheckedContinuation<GetServiceSettingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getServiceSettingsContinuation) in
            getServiceSettings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the resource associations for the specified license configuration.
    ///          Resource associations need not consume licenses from a license configuration.
    ///          For example, an AMI or a stopped instance might not consume a license (depending on
    ///          the license rules).
    func listAssociationsForLicenseConfiguration(input: ListAssociationsForLicenseConfigurationInput) async throws -> ListAssociationsForLicenseConfigurationOutputResponse
    {
        typealias listAssociationsForLicenseConfigurationContinuation = CheckedContinuation<ListAssociationsForLicenseConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssociationsForLicenseConfigurationContinuation) in
            listAssociationsForLicenseConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the grants distributed for the specified license.
    func listDistributedGrants(input: ListDistributedGrantsInput) async throws -> ListDistributedGrantsOutputResponse
    {
        typealias listDistributedGrantsContinuation = CheckedContinuation<ListDistributedGrantsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDistributedGrantsContinuation) in
            listDistributedGrants(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the license configuration operations that failed.
    func listFailuresForLicenseConfigurationOperations(input: ListFailuresForLicenseConfigurationOperationsInput) async throws -> ListFailuresForLicenseConfigurationOperationsOutputResponse
    {
        typealias listFailuresForLicenseConfigurationOperationsContinuation = CheckedContinuation<ListFailuresForLicenseConfigurationOperationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFailuresForLicenseConfigurationOperationsContinuation) in
            listFailuresForLicenseConfigurationOperations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the license configurations for your account.
    func listLicenseConfigurations(input: ListLicenseConfigurationsInput) async throws -> ListLicenseConfigurationsOutputResponse
    {
        typealias listLicenseConfigurationsContinuation = CheckedContinuation<ListLicenseConfigurationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLicenseConfigurationsContinuation) in
            listLicenseConfigurations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the report generators for your account.
    func listLicenseManagerReportGenerators(input: ListLicenseManagerReportGeneratorsInput) async throws -> ListLicenseManagerReportGeneratorsOutputResponse
    {
        typealias listLicenseManagerReportGeneratorsContinuation = CheckedContinuation<ListLicenseManagerReportGeneratorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLicenseManagerReportGeneratorsContinuation) in
            listLicenseManagerReportGenerators(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the license configurations for the specified resource.
    func listLicenseSpecificationsForResource(input: ListLicenseSpecificationsForResourceInput) async throws -> ListLicenseSpecificationsForResourceOutputResponse
    {
        typealias listLicenseSpecificationsForResourceContinuation = CheckedContinuation<ListLicenseSpecificationsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLicenseSpecificationsForResourceContinuation) in
            listLicenseSpecificationsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all versions of the specified license.
    func listLicenseVersions(input: ListLicenseVersionsInput) async throws -> ListLicenseVersionsOutputResponse
    {
        typealias listLicenseVersionsContinuation = CheckedContinuation<ListLicenseVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLicenseVersionsContinuation) in
            listLicenseVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the licenses for your account.
    func listLicenses(input: ListLicensesInput) async throws -> ListLicensesOutputResponse
    {
        typealias listLicensesContinuation = CheckedContinuation<ListLicensesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLicensesContinuation) in
            listLicenses(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists grants that are received but not accepted.
    func listReceivedGrants(input: ListReceivedGrantsInput) async throws -> ListReceivedGrantsOutputResponse
    {
        typealias listReceivedGrantsContinuation = CheckedContinuation<ListReceivedGrantsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReceivedGrantsContinuation) in
            listReceivedGrants(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists received licenses.
    func listReceivedLicenses(input: ListReceivedLicensesInput) async throws -> ListReceivedLicensesOutputResponse
    {
        typealias listReceivedLicensesContinuation = CheckedContinuation<ListReceivedLicensesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReceivedLicensesContinuation) in
            listReceivedLicenses(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists resources managed using Systems Manager inventory.
    func listResourceInventory(input: ListResourceInventoryInput) async throws -> ListResourceInventoryOutputResponse
    {
        typealias listResourceInventoryContinuation = CheckedContinuation<ListResourceInventoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listResourceInventoryContinuation) in
            listResourceInventory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags for the specified license configuration.
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

    /// Lists your tokens.
    func listTokens(input: ListTokensInput) async throws -> ListTokensOutputResponse
    {
        typealias listTokensContinuation = CheckedContinuation<ListTokensOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTokensContinuation) in
            listTokens(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all license usage records for a license configuration, displaying license
    ///          consumption details by resource at a selected point in time. Use this action to audit the
    ///          current license consumption for any license inventory and configuration.
    func listUsageForLicenseConfiguration(input: ListUsageForLicenseConfigurationInput) async throws -> ListUsageForLicenseConfigurationOutputResponse
    {
        typealias listUsageForLicenseConfigurationContinuation = CheckedContinuation<ListUsageForLicenseConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listUsageForLicenseConfigurationContinuation) in
            listUsageForLicenseConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Rejects the specified grant.
    func rejectGrant(input: RejectGrantInput) async throws -> RejectGrantOutputResponse
    {
        typealias rejectGrantContinuation = CheckedContinuation<RejectGrantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: rejectGrantContinuation) in
            rejectGrant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds the specified tags to the specified license configuration.
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

    /// Removes the specified tags from the specified license configuration.
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

    /// Modifies the attributes of an existing license configuration.
    func updateLicenseConfiguration(input: UpdateLicenseConfigurationInput) async throws -> UpdateLicenseConfigurationOutputResponse
    {
        typealias updateLicenseConfigurationContinuation = CheckedContinuation<UpdateLicenseConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLicenseConfigurationContinuation) in
            updateLicenseConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a report generator.
    ///          After you make changes to a report generator, it will start generating new reports within 60 minutes of being updated.
    func updateLicenseManagerReportGenerator(input: UpdateLicenseManagerReportGeneratorInput) async throws -> UpdateLicenseManagerReportGeneratorOutputResponse
    {
        typealias updateLicenseManagerReportGeneratorContinuation = CheckedContinuation<UpdateLicenseManagerReportGeneratorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLicenseManagerReportGeneratorContinuation) in
            updateLicenseManagerReportGenerator(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds or removes the specified license configurations for the specified AWS resource.
    ///          You can update the license specifications of AMIs, instances, and hosts.
    ///          You cannot update the license specifications for launch templates and AWS CloudFormation templates,
    ///          as they send license configurations to the operation that creates the resource.
    func updateLicenseSpecificationsForResource(input: UpdateLicenseSpecificationsForResourceInput) async throws -> UpdateLicenseSpecificationsForResourceOutputResponse
    {
        typealias updateLicenseSpecificationsForResourceContinuation = CheckedContinuation<UpdateLicenseSpecificationsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLicenseSpecificationsForResourceContinuation) in
            updateLicenseSpecificationsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates License Manager settings for the current Region.
    func updateServiceSettings(input: UpdateServiceSettingsInput) async throws -> UpdateServiceSettingsOutputResponse
    {
        typealias updateServiceSettingsContinuation = CheckedContinuation<UpdateServiceSettingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateServiceSettingsContinuation) in
            updateServiceSettings(input: input) { result in
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
