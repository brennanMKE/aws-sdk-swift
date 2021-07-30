// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension CostExplorerClient {
    /// <p>Creates a new cost anomaly detection monitor with the requested type and monitor
    ///       specification. </p>
    func createAnomalyMonitor(input: CreateAnomalyMonitorInput) async throws -> CreateAnomalyMonitorOutputResponse
    {
        typealias createAnomalyMonitorContinuation = CheckedContinuation<CreateAnomalyMonitorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAnomalyMonitorContinuation) in
            createAnomalyMonitor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Adds a subscription to a cost anomaly detection monitor. You can use each subscription to
    ///       define subscribers with email or SNS notifications. Email subscribers can set a dollar
    ///       threshold and a time frequency for receiving notifications. </p>
    func createAnomalySubscription(input: CreateAnomalySubscriptionInput) async throws -> CreateAnomalySubscriptionOutputResponse
    {
        typealias createAnomalySubscriptionContinuation = CheckedContinuation<CreateAnomalySubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAnomalySubscriptionContinuation) in
            createAnomalySubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new Cost Category with the requested name and rules.</p>
    func createCostCategoryDefinition(input: CreateCostCategoryDefinitionInput) async throws -> CreateCostCategoryDefinitionOutputResponse
    {
        typealias createCostCategoryDefinitionContinuation = CheckedContinuation<CreateCostCategoryDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCostCategoryDefinitionContinuation) in
            createCostCategoryDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a cost anomaly monitor. </p>
    func deleteAnomalyMonitor(input: DeleteAnomalyMonitorInput) async throws -> DeleteAnomalyMonitorOutputResponse
    {
        typealias deleteAnomalyMonitorContinuation = CheckedContinuation<DeleteAnomalyMonitorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAnomalyMonitorContinuation) in
            deleteAnomalyMonitor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a cost anomaly subscription. </p>
    func deleteAnomalySubscription(input: DeleteAnomalySubscriptionInput) async throws -> DeleteAnomalySubscriptionOutputResponse
    {
        typealias deleteAnomalySubscriptionContinuation = CheckedContinuation<DeleteAnomalySubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAnomalySubscriptionContinuation) in
            deleteAnomalySubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.</p>
    func deleteCostCategoryDefinition(input: DeleteCostCategoryDefinitionInput) async throws -> DeleteCostCategoryDefinitionOutputResponse
    {
        typealias deleteCostCategoryDefinitionContinuation = CheckedContinuation<DeleteCostCategoryDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCostCategoryDefinitionContinuation) in
            deleteCostCategoryDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns the name, ARN, rules, definition, and effective dates of a Cost Category that's defined in the account.</p>
    ///          <p>You have the option to use <code>EffectiveOn</code> to return a Cost Category that is active on a specific date. If there is no <code>EffectiveOn</code> specified, you’ll see a Cost Category that is effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code> is omitted in the response. </p>
    func describeCostCategoryDefinition(input: DescribeCostCategoryDefinitionInput) async throws -> DescribeCostCategoryDefinitionOutputResponse
    {
        typealias describeCostCategoryDefinitionContinuation = CheckedContinuation<DescribeCostCategoryDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeCostCategoryDefinitionContinuation) in
            describeCostCategoryDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves all of the cost anomalies detected on your account, during the time period
    ///       specified by the <code>DateInterval</code> object. </p>
    func getAnomalies(input: GetAnomaliesInput) async throws -> GetAnomaliesOutputResponse
    {
        typealias getAnomaliesContinuation = CheckedContinuation<GetAnomaliesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAnomaliesContinuation) in
            getAnomalies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the cost anomaly monitor definitions for your account. You can filter using a
    ///       list of cost anomaly monitor Amazon Resource Names (ARNs). </p>
    func getAnomalyMonitors(input: GetAnomalyMonitorsInput) async throws -> GetAnomalyMonitorsOutputResponse
    {
        typealias getAnomalyMonitorsContinuation = CheckedContinuation<GetAnomalyMonitorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAnomalyMonitorsContinuation) in
            getAnomalyMonitors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the cost anomaly subscription objects for your account. You can filter using a
    ///       list of cost anomaly monitor Amazon Resource Names (ARNs). </p>
    func getAnomalySubscriptions(input: GetAnomalySubscriptionsInput) async throws -> GetAnomalySubscriptionsOutputResponse
    {
        typealias getAnomalySubscriptionsContinuation = CheckedContinuation<GetAnomalySubscriptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAnomalySubscriptionsContinuation) in
            getAnomalySubscriptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as
    /// 			<code>BlendedCosts</code> or <code>UsageQuantity</code>, that you want the request to return. You can also filter and group
    /// 			your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. For a complete list
    /// 			of valid dimensions, see the
    /// 			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a>
    /// 		  operation. Management account in an organization in AWS Organizations have access to all member accounts.</p>
    /// 	        <p>For information about filter limitations, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html">Quotas and restrictions</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    func getCostAndUsage(input: GetCostAndUsageInput) async throws -> GetCostAndUsageOutputResponse
    {
        typealias getCostAndUsageContinuation = CheckedContinuation<GetCostAndUsageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCostAndUsageContinuation) in
            getCostAndUsage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves cost and usage metrics with resources for your account. You can specify which cost and
    /// 	    usage-related metric, such as <code>BlendedCosts</code> or <code>UsageQuantity</code>, that
    /// 	    you want the request to return. You can also filter and group your data by various dimensions,
    /// 	    such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. For a complete list
    /// 	    of valid dimensions, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a> operation. Management account in an organization in AWS
    /// 	    Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.</p>
    /// 	        <note>
    ///             <p>This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information on how to access the Settings page, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html">Controlling Access for Cost Explorer</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
    ///          </note>
    func getCostAndUsageWithResources(input: GetCostAndUsageWithResourcesInput) async throws -> GetCostAndUsageWithResourcesOutputResponse
    {
        typealias getCostAndUsageWithResourcesContinuation = CheckedContinuation<GetCostAndUsageWithResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCostAndUsageWithResourcesContinuation) in
            getCostAndUsageWithResources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves an array of Cost Category names and values incurred cost.</p>
    /// 	        <note>
    ///             <p>If some Cost Category names and values are not associated with any cost, they will not be returned by this API.</p>
    ///          </note>
    func getCostCategories(input: GetCostCategoriesInput) async throws -> GetCostCategoriesOutputResponse
    {
        typealias getCostCategoriesContinuation = CheckedContinuation<GetCostCategoriesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCostCategoriesContinuation) in
            getCostCategories(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. </p>
    func getCostForecast(input: GetCostForecastInput) async throws -> GetCostForecastOutputResponse
    {
        typealias getCostForecastContinuation = CheckedContinuation<GetCostForecastOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCostForecastContinuation) in
            getCostForecast(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. </p>
    func getDimensionValues(input: GetDimensionValuesInput) async throws -> GetDimensionValuesOutputResponse
    {
        typealias getDimensionValuesContinuation = CheckedContinuation<GetDimensionValuesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDimensionValuesContinuation) in
            getDimensionValues(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or
    /// 		  Amazon Redshift usage is covered by a reservation. An organization's management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions.
    /// 			For any time period, you can filter data about reservation usage by the following dimensions:</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>AZ</p>
    ///             </li>
    ///             <li>
    ///                <p>CACHE_ENGINE</p>
    ///             </li>
    ///             <li>
    ///                <p>DATABASE_ENGINE</p>
    ///             </li>
    ///             <li>
    ///                <p>DEPLOYMENT_OPTION</p>
    ///             </li>
    ///             <li>
    ///                <p>INSTANCE_TYPE</p>
    ///             </li>
    ///             <li>
    ///                <p>LINKED_ACCOUNT</p>
    ///             </li>
    ///             <li>
    ///                <p>OPERATING_SYSTEM</p>
    ///             </li>
    ///             <li>
    ///                <p>PLATFORM</p>
    ///             </li>
    ///             <li>
    ///                <p>REGION</p>
    ///             </li>
    ///             <li>
    ///                <p>SERVICE</p>
    ///             </li>
    ///             <li>
    ///                <p>TAG</p>
    ///             </li>
    ///             <li>
    ///                <p>TENANCY</p>
    ///             </li>
    ///          </ul>
    /// 		       <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation. </p>
    func getReservationCoverage(input: GetReservationCoverageInput) async throws -> GetReservationCoverageOutputResponse
    {
        typealias getReservationCoverageContinuation = CheckedContinuation<GetReservationCoverageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReservationCoverageContinuation) in
            getReservationCoverage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs.
    /// 			Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing.</p>
    /// 		       <p>AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage
    /// 			into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations
    /// 			in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings. </p>
    /// 		       <p>For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region
    /// 			and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance
    /// 			in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units
    /// 			so that you can purchase any instance size that you want. For this example, your RI recommendation would be for <code>c4.large</code>
    /// 			because that is the smallest size instance in the c4 instance family.</p>
    func getReservationPurchaseRecommendation(input: GetReservationPurchaseRecommendationInput) async throws -> GetReservationPurchaseRecommendationOutputResponse
    {
        typealias getReservationPurchaseRecommendationContinuation = CheckedContinuation<GetReservationPurchaseRecommendationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReservationPurchaseRecommendationContinuation) in
            getReservationPurchaseRecommendation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the reservation utilization for your account. Management account in an organization have access to member accounts.
    /// 			You can filter data by dimensions in a time period. You can use <code>GetDimensionValues</code> to determine the possible
    /// 			dimension values. Currently, you can group only by <code>SUBSCRIPTION_ID</code>. </p>
    func getReservationUtilization(input: GetReservationUtilizationInput) async throws -> GetReservationUtilizationOutputResponse
    {
        typealias getReservationUtilizationContinuation = CheckedContinuation<GetReservationUtilizationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReservationUtilizationContinuation) in
            getReservationUtilization(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates recommendations that
    ///       help you save cost
    ///       by identifying idle and underutilized Amazon EC2 instances.</p>
    ///          <p>Recommendations are generated to either downsize or terminate instances, along with
    ///       providing savings detail and metrics. For details on calculation and function, see
    ///         <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html">Optimizing
    ///         Your Cost with Rightsizing
    ///       Recommendations</a>
    ///       in the <i>AWS Billing and Cost Management User
    ///       Guide</i>.</p>
    func getRightsizingRecommendation(input: GetRightsizingRecommendationInput) async throws -> GetRightsizingRecommendationOutputResponse
    {
        typealias getRightsizingRecommendationContinuation = CheckedContinuation<GetRightsizingRecommendationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRightsizingRecommendationContinuation) in
            getRightsizingRecommendation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:</p>
    /// 	        <ul>
    ///             <li>
    ///                <p>
    ///                   <code>LINKED_ACCOUNT</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>REGION</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>SERVICE</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>INSTANCE_FAMILY</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    /// 	        <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation.</p>
    func getSavingsPlansCoverage(input: GetSavingsPlansCoverageInput) async throws -> GetSavingsPlansCoverageOutputResponse
    {
        typealias getSavingsPlansCoverageContinuation = CheckedContinuation<GetSavingsPlansCoverageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSavingsPlansCoverageContinuation) in
            getSavingsPlansCoverage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves your request parameters, Savings Plan Recommendations Summary and Details. </p>
    func getSavingsPlansPurchaseRecommendation(input: GetSavingsPlansPurchaseRecommendationInput) async throws -> GetSavingsPlansPurchaseRecommendationOutputResponse
    {
        typealias getSavingsPlansPurchaseRecommendationContinuation = CheckedContinuation<GetSavingsPlansPurchaseRecommendationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSavingsPlansPurchaseRecommendationContinuation) in
            getSavingsPlansPurchaseRecommendation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Management account in an organization have access to member accounts. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p>
    /// 	        <note>
    ///             <p>You cannot group by any dimension values for <code>GetSavingsPlansUtilization</code>.</p>
    ///          </note>
    func getSavingsPlansUtilization(input: GetSavingsPlansUtilizationInput) async throws -> GetSavingsPlansUtilizationOutputResponse
    {
        typealias getSavingsPlansUtilizationContinuation = CheckedContinuation<GetSavingsPlansUtilizationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSavingsPlansUtilizationContinuation) in
            getSavingsPlansUtilization(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to <code>GetSavingsPlanUtilization</code>, but you have the option to make multiple calls to <code>GetSavingsPlanUtilizationDetails</code> by providing individual dates. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p>
    /// 	        <note>
    ///             <p>
    ///                <code>GetSavingsPlanUtilizationDetails</code> internally groups data by <code>SavingsPlansArn</code>.</p>
    ///          </note>
    func getSavingsPlansUtilizationDetails(input: GetSavingsPlansUtilizationDetailsInput) async throws -> GetSavingsPlansUtilizationDetailsOutputResponse
    {
        typealias getSavingsPlansUtilizationDetailsContinuation = CheckedContinuation<GetSavingsPlansUtilizationDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSavingsPlansUtilizationDetailsContinuation) in
            getSavingsPlansUtilizationDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. </p>
    func getTags(input: GetTagsInput) async throws -> GetTagsOutputResponse
    {
        typealias getTagsContinuation = CheckedContinuation<GetTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTagsContinuation) in
            getTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. </p>
    func getUsageForecast(input: GetUsageForecastInput) async throws -> GetUsageForecastOutputResponse
    {
        typealias getUsageForecastContinuation = CheckedContinuation<GetUsageForecastOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getUsageForecastContinuation) in
            getUsageForecast(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns the name, ARN, <code>NumberOfRules</code> and effective dates of all Cost Categories defined in the account. You have the option to use <code>EffectiveOn</code> to return a list of Cost Categories that were active on a specific date. If there is no <code>EffectiveOn</code> specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code> is omitted in the response. <code>ListCostCategoryDefinitions</code> supports pagination. The request can have a <code>MaxResults</code> range up to 100.</p>
    func listCostCategoryDefinitions(input: ListCostCategoryDefinitionsInput) async throws -> ListCostCategoryDefinitionsOutputResponse
    {
        typealias listCostCategoryDefinitionsContinuation = CheckedContinuation<ListCostCategoryDefinitionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCostCategoryDefinitionsContinuation) in
            listCostCategoryDefinitions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Modifies the feedback property of a given cost anomaly. </p>
    func provideAnomalyFeedback(input: ProvideAnomalyFeedbackInput) async throws -> ProvideAnomalyFeedbackOutputResponse
    {
        typealias provideAnomalyFeedbackContinuation = CheckedContinuation<ProvideAnomalyFeedbackOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: provideAnomalyFeedbackContinuation) in
            provideAnomalyFeedback(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates an existing cost anomaly monitor. The changes made are applied going forward, and
    ///       does not change anomalies detected in the past. </p>
    func updateAnomalyMonitor(input: UpdateAnomalyMonitorInput) async throws -> UpdateAnomalyMonitorOutputResponse
    {
        typealias updateAnomalyMonitorContinuation = CheckedContinuation<UpdateAnomalyMonitorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAnomalyMonitorContinuation) in
            updateAnomalyMonitor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p> Updates an existing cost anomaly monitor subscription. </p>
    func updateAnomalySubscription(input: UpdateAnomalySubscriptionInput) async throws -> UpdateAnomalySubscriptionOutputResponse
    {
        typealias updateAnomalySubscriptionContinuation = CheckedContinuation<UpdateAnomalySubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAnomalySubscriptionContinuation) in
            updateAnomalySubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.</p>
    func updateCostCategoryDefinition(input: UpdateCostCategoryDefinitionInput) async throws -> UpdateCostCategoryDefinitionOutputResponse
    {
        typealias updateCostCategoryDefinitionContinuation = CheckedContinuation<UpdateCostCategoryDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateCostCategoryDefinitionContinuation) in
            updateCostCategoryDefinition(input: input) { result in
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