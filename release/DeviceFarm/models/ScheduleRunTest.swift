// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents test settings. This data structure is passed in as the test parameter to ScheduleRun. For an
///             example of the JSON request syntax, see <a>ScheduleRun</a>.</p>
public struct ScheduleRunTest: Equatable {
    /// <p>The test's filter.</p>
    public let filter: String?
    /// <p>The test's parameters, such as test framework parameters and fixture settings.
    ///             Parameters are represented by name-value pairs of strings.</p>
    ///         <p>For all tests:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>app_performance_monitoring</code>: Performance monitoring is enabled by default.
    ///                     Set this parameter to false to disable it.</p>
    ///             </li>
    ///          </ul>
    ///         <p>For Calabash tests:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>profile: A cucumber profile (for example, <code>my_profile_name</code>).</p>
    ///             </li>
    ///             <li>
    ///                 <p>tags: You can limit execution to features or scenarios that have (or don't
    ///                     have) certain tags (for example, @smoke or @smoke,~@wip).</p>
    ///             </li>
    ///          </ul>
    ///         <p>For Appium tests (all types):</p>
    ///         <ul>
    ///             <li>
    ///                 <p>appium_version: The Appium version. Currently supported values are 1.6.5
    ///                     (and later), latest, and default.</p>
    ///                 <ul>
    ///                   <li>
    ///
    ///                         <p>latest runs the latest Appium version supported by Device
    ///                             Farm (1.9.1).</p>
    ///                     </li>
    ///                   <li>
    ///                         <p>For default, Device Farm selects a compatible version of
    ///                             Appium for the device. The current behavior is to run 1.7.2 on Android
    ///                             devices and iOS 9 and earlier and 1.7.2 for iOS 10 and later.</p>
    ///                     </li>
    ///                   <li>
    ///                         <p>This behavior is subject to change.</p>
    ///                     </li>
    ///                </ul>
    ///             </li>
    ///          </ul>
    ///         <p>For fuzz tests (Android only):</p>
    ///         <ul>
    ///             <li>
    ///                 <p>event_count: The number of events, between 1 and 10000, that the UI fuzz
    ///                     test should perform.</p>
    ///             </li>
    ///             <li>
    ///                 <p>throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should
    ///                     wait between events.</p>
    ///             </li>
    ///             <li>
    ///                 <p>seed: A seed to use for randomizing the UI fuzz test. Using the same seed
    ///                     value between tests ensures identical event sequences.</p>
    ///             </li>
    ///          </ul>
    ///         <p>For Explorer tests:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>username: A user name to use if the Explorer encounters a login form. If not supplied, no user
    ///                     name is inserted.</p>
    ///             </li>
    ///             <li>
    ///                 <p>password: A password to use if the Explorer encounters a login form. If not supplied, no
    ///                     password is inserted.</p>
    ///             </li>
    ///          </ul>
    ///         <p>For Instrumentation:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>filter: A test filter string. Examples:</p>
    ///                 <ul>
    ///                   <li>
    ///                         <p>Running a single test case: <code>com.android.abc.Test1</code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Running a single test: <code>com.android.abc.Test1#smoke</code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Running multiple tests:
    ///                             <code>com.android.abc.Test1,com.android.abc.Test2</code>
    ///                      </p>
    ///                     </li>
    ///                </ul>
    ///             </li>
    ///          </ul>
    ///         <p>For XCTest and XCTestUI:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>filter: A test filter string. Examples:</p>
    ///                 <ul>
    ///                   <li>
    ///                         <p>Running a single test class: <code>LoginTests</code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Running a multiple test classes: <code>LoginTests,SmokeTests</code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Running a single test: <code>LoginTests/testValid</code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Running multiple tests:
    ///                             <code>LoginTests/testValid,LoginTests/testInvalid</code>
    ///                      </p>
    ///                     </li>
    ///                </ul>
    ///             </li>
    ///          </ul>
    ///         <p>For UIAutomator:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>filter: A test filter string. Examples:</p>
    ///                 <ul>
    ///                   <li>
    ///                         <p>Running a single test case: <code>com.android.abc.Test1</code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Running a single test: <code>com.android.abc.Test1#smoke</code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Running multiple tests:
    ///                             <code>com.android.abc.Test1,com.android.abc.Test2</code>
    ///                      </p>
    ///                     </li>
    ///                </ul>
    ///             </li>
    ///          </ul>
    public let parameters: [String:String]?
    /// <p>The ARN of the uploaded test to be run.</p>
    public let testPackageArn: String?
    /// <p>The ARN of the YAML-formatted test specification.</p>
    public let testSpecArn: String?
    /// <p>The test's type.</p>
    ///         <p>Must be one of the following values:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>BUILTIN_FUZZ</p>
    ///             </li>
    ///             <li>
    ///                 <p>BUILTIN_EXPLORER. For Android, an app explorer that traverses an
    ///                     Android app, interacting with it and capturing screenshots at the same
    ///                     time.</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_JUNIT</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_JAVA_TESTNG</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_PYTHON</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_NODE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_RUBY</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_JAVA_JUNIT</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_JAVA_TESTNG</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_PYTHON</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_NODE</p>
    ///             </li>
    ///             <li>
    ///                 <p>APPIUM_WEB_RUBY</p>
    ///             </li>
    ///             <li>
    ///                 <p>CALABASH</p>
    ///             </li>
    ///             <li>
    ///                 <p>INSTRUMENTATION</p>
    ///             </li>
    ///             <li>
    ///                 <p>UIAUTOMATION</p>
    ///             </li>
    ///             <li>
    ///                 <p>UIAUTOMATOR</p>
    ///             </li>
    ///             <li>
    ///                 <p>XCTEST</p>
    ///             </li>
    ///             <li>
    ///                 <p>XCTEST_UI</p>
    ///             </li>
    ///          </ul>
    public let type: TestType?

    public init (
        filter: String? = nil,
        parameters: [String:String]? = nil,
        testPackageArn: String? = nil,
        testSpecArn: String? = nil,
        type: TestType? = nil
    )
    {
        self.filter = filter
        self.parameters = parameters
        self.testPackageArn = testPackageArn
        self.testSpecArn = testSpecArn
        self.type = type
    }
}

extension ScheduleRunTest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ScheduleRunTest(filter: \(String(describing: filter)), parameters: \(String(describing: parameters)), testPackageArn: \(String(describing: testPackageArn)), testSpecArn: \(String(describing: testSpecArn)), type: \(String(describing: type)))"}
}