// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Branch: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case activeJobId
        case associatedResources
        case backendEnvironmentArn
        case basicAuthCredentials
        case branchArn
        case branchName
        case buildSpec
        case createTime
        case customDomains
        case description
        case destinationBranch
        case displayName
        case enableAutoBuild
        case enableBasicAuth
        case enableNotification
        case enablePerformanceMode
        case enablePullRequestPreview
        case environmentVariables
        case framework
        case pullRequestEnvironmentName
        case sourceBranch
        case stage
        case tags
        case thumbnailUrl
        case totalNumberOfJobs
        case ttl
        case updateTime
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let activeJobId = activeJobId {
            try encodeContainer.encode(activeJobId, forKey: .activeJobId)
        }
        if let associatedResources = associatedResources {
            var associatedResourcesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .associatedResources)
            for associatedresources0 in associatedResources {
                try associatedResourcesContainer.encode(associatedresources0)
            }
        }
        if let backendEnvironmentArn = backendEnvironmentArn {
            try encodeContainer.encode(backendEnvironmentArn, forKey: .backendEnvironmentArn)
        }
        if let basicAuthCredentials = basicAuthCredentials {
            try encodeContainer.encode(basicAuthCredentials, forKey: .basicAuthCredentials)
        }
        if let branchArn = branchArn {
            try encodeContainer.encode(branchArn, forKey: .branchArn)
        }
        if let branchName = branchName {
            try encodeContainer.encode(branchName, forKey: .branchName)
        }
        if let buildSpec = buildSpec {
            try encodeContainer.encode(buildSpec, forKey: .buildSpec)
        }
        if let createTime = createTime {
            try encodeContainer.encode(createTime.timeIntervalSince1970, forKey: .createTime)
        }
        if let customDomains = customDomains {
            var customDomainsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .customDomains)
            for customdomains0 in customDomains {
                try customDomainsContainer.encode(customdomains0)
            }
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let destinationBranch = destinationBranch {
            try encodeContainer.encode(destinationBranch, forKey: .destinationBranch)
        }
        if let displayName = displayName {
            try encodeContainer.encode(displayName, forKey: .displayName)
        }
        if let enableAutoBuild = enableAutoBuild {
            try encodeContainer.encode(enableAutoBuild, forKey: .enableAutoBuild)
        }
        if let enableBasicAuth = enableBasicAuth {
            try encodeContainer.encode(enableBasicAuth, forKey: .enableBasicAuth)
        }
        if let enableNotification = enableNotification {
            try encodeContainer.encode(enableNotification, forKey: .enableNotification)
        }
        if let enablePerformanceMode = enablePerformanceMode {
            try encodeContainer.encode(enablePerformanceMode, forKey: .enablePerformanceMode)
        }
        if let enablePullRequestPreview = enablePullRequestPreview {
            try encodeContainer.encode(enablePullRequestPreview, forKey: .enablePullRequestPreview)
        }
        if let environmentVariables = environmentVariables {
            var environmentVariablesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .environmentVariables)
            for (dictKey0, environmentvariables0) in environmentVariables {
                try environmentVariablesContainer.encode(environmentvariables0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let framework = framework {
            try encodeContainer.encode(framework, forKey: .framework)
        }
        if let pullRequestEnvironmentName = pullRequestEnvironmentName {
            try encodeContainer.encode(pullRequestEnvironmentName, forKey: .pullRequestEnvironmentName)
        }
        if let sourceBranch = sourceBranch {
            try encodeContainer.encode(sourceBranch, forKey: .sourceBranch)
        }
        if let stage = stage {
            try encodeContainer.encode(stage.rawValue, forKey: .stage)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let thumbnailUrl = thumbnailUrl {
            try encodeContainer.encode(thumbnailUrl, forKey: .thumbnailUrl)
        }
        if let totalNumberOfJobs = totalNumberOfJobs {
            try encodeContainer.encode(totalNumberOfJobs, forKey: .totalNumberOfJobs)
        }
        if let ttl = ttl {
            try encodeContainer.encode(ttl, forKey: .ttl)
        }
        if let updateTime = updateTime {
            try encodeContainer.encode(updateTime.timeIntervalSince1970, forKey: .updateTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let branchArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .branchArn)
        branchArn = branchArnDecoded
        let branchNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .branchName)
        branchName = branchNameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in tagsContainer {
                if let tagvalue0 = tagvalue0 {
                    tagsDecoded0?[key0] = tagvalue0
                }
            }
        }
        tags = tagsDecoded0
        let stageDecoded = try containerValues.decodeIfPresent(Stage.self, forKey: .stage)
        stage = stageDecoded
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let enableNotificationDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enableNotification)
        enableNotification = enableNotificationDecoded
        let createTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createTime)
        createTime = createTimeDecoded
        let updateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .updateTime)
        updateTime = updateTimeDecoded
        let environmentVariablesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .environmentVariables)
        var environmentVariablesDecoded0: [String:String]? = nil
        if let environmentVariablesContainer = environmentVariablesContainer {
            environmentVariablesDecoded0 = [String:String]()
            for (key0, envvalue0) in environmentVariablesContainer {
                if let envvalue0 = envvalue0 {
                    environmentVariablesDecoded0?[key0] = envvalue0
                }
            }
        }
        environmentVariables = environmentVariablesDecoded0
        let enableAutoBuildDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enableAutoBuild)
        enableAutoBuild = enableAutoBuildDecoded
        let customDomainsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .customDomains)
        var customDomainsDecoded0:[String]? = nil
        if let customDomainsContainer = customDomainsContainer {
            customDomainsDecoded0 = [String]()
            for string0 in customDomainsContainer {
                if let string0 = string0 {
                    customDomainsDecoded0?.append(string0)
                }
            }
        }
        customDomains = customDomainsDecoded0
        let frameworkDecoded = try containerValues.decodeIfPresent(String.self, forKey: .framework)
        framework = frameworkDecoded
        let activeJobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .activeJobId)
        activeJobId = activeJobIdDecoded
        let totalNumberOfJobsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .totalNumberOfJobs)
        totalNumberOfJobs = totalNumberOfJobsDecoded
        let enableBasicAuthDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enableBasicAuth)
        enableBasicAuth = enableBasicAuthDecoded
        let enablePerformanceModeDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enablePerformanceMode)
        enablePerformanceMode = enablePerformanceModeDecoded
        let thumbnailUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thumbnailUrl)
        thumbnailUrl = thumbnailUrlDecoded
        let basicAuthCredentialsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .basicAuthCredentials)
        basicAuthCredentials = basicAuthCredentialsDecoded
        let buildSpecDecoded = try containerValues.decodeIfPresent(String.self, forKey: .buildSpec)
        buildSpec = buildSpecDecoded
        let ttlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ttl)
        ttl = ttlDecoded
        let associatedResourcesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .associatedResources)
        var associatedResourcesDecoded0:[String]? = nil
        if let associatedResourcesContainer = associatedResourcesContainer {
            associatedResourcesDecoded0 = [String]()
            for string0 in associatedResourcesContainer {
                if let string0 = string0 {
                    associatedResourcesDecoded0?.append(string0)
                }
            }
        }
        associatedResources = associatedResourcesDecoded0
        let enablePullRequestPreviewDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enablePullRequestPreview)
        enablePullRequestPreview = enablePullRequestPreviewDecoded
        let pullRequestEnvironmentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pullRequestEnvironmentName)
        pullRequestEnvironmentName = pullRequestEnvironmentNameDecoded
        let destinationBranchDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationBranch)
        destinationBranch = destinationBranchDecoded
        let sourceBranchDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceBranch)
        sourceBranch = sourceBranchDecoded
        let backendEnvironmentArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .backendEnvironmentArn)
        backendEnvironmentArn = backendEnvironmentArnDecoded
    }
}