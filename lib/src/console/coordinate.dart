part of coordinate_v1_api_console;

/** Client to access the coordinate v1 API */
/** Lets you view and manage jobs in a Coordinate team. */
class Coordinate extends ConsoleClient {

  CustomFieldDefResource _customFieldDef;
  CustomFieldDefResource get customFieldDef => _customFieldDef;
  JobsResource _jobs;
  JobsResource get jobs => _jobs;
  LocationResource _location;
  LocationResource get location => _location;
  ScheduleResource _schedule;
  ScheduleResource get schedule => _schedule;
  WorkerResource _worker;
  WorkerResource get worker => _worker;

  /** OAuth Scope2: View and manage your Google Maps Coordinate jobs */
  static const core.String COORDINATE_SCOPE = "https://www.googleapis.com/auth/coordinate";

  /** OAuth Scope2: View your Google Coordinate jobs */
  static const core.String COORDINATE_READONLY_SCOPE = "https://www.googleapis.com/auth/coordinate.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Coordinate([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/coordinate/v1/teams/";
    rootUrl = "https://www.googleapis.com:443/";
    _customFieldDef = new CustomFieldDefResource(this);
    _jobs = new JobsResource(this);
    _location = new LocationResource(this);
    _schedule = new ScheduleResource(this);
    _worker = new WorkerResource(this);
  }
}
