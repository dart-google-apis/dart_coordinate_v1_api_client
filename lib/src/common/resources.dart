part of coordinate_v1_api_client;

class CustomFieldDefResource extends Resource {

  CustomFieldDefResource(Client client) : super(client) {
  }

  /**
   * Retrieves a list of custom field definitions for a team.
   *
   * [teamId] - Team ID
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomFieldDefListResponse> list(String teamId, {Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/custom_fields";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomFieldDefListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class JobsResource extends Resource {

  JobsResource(Client client) : super(client) {
  }

  /**
   * Retrieves a job, including all the changes made to the job.
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [optParams] - Additional query parameters
   */
  Future<Job> get(String teamId, String jobId, {Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs/{jobId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Job.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Inserts a new job. Only the state field of the job should be set.
   *
   * [request] - Job to send in this request
   *
   * [teamId] - Team ID
   *
   * [address] - Job address as newline (Unix) separated string
   *
   * [lat] - The latitude coordinate of this job's location.
   *
   * [lng] - The longitude coordinate of this job's location.
   *
   * [title] - Job title
   *
   * [assignee] - Assignee email address, or empty string to unassign.
   *
   * [customField] - Map from custom field id (from /team//custom_fields) to the field value. For example '123=Alice'
   *
   * [customerName] - Customer name
   *
   * [customerPhoneNumber] - Customer phone number
   *
   * [note] - Job note as newline (Unix) separated string
   *
   * [optParams] - Additional query parameters
   */
  Future<Job> insert(Job request, String teamId, String address, num lat, num lng, String title, {String assignee, String customField, String customerName, String customerPhoneNumber, String note, Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (address == null) paramErrors.add("address is required");
    if (address != null) queryParams["address"] = address;
    if (assignee != null) queryParams["assignee"] = assignee;
    if (customField != null) queryParams["customField"] = customField;
    if (customerName != null) queryParams["customerName"] = customerName;
    if (customerPhoneNumber != null) queryParams["customerPhoneNumber"] = customerPhoneNumber;
    if (lat == null) paramErrors.add("lat is required");
    if (lat != null) queryParams["lat"] = lat;
    if (lng == null) paramErrors.add("lng is required");
    if (lng != null) queryParams["lng"] = lng;
    if (note != null) queryParams["note"] = note;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (title == null) paramErrors.add("title is required");
    if (title != null) queryParams["title"] = title;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Job.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves jobs created or modified since the given timestamp.
   *
   * [teamId] - Team ID
   *
   * [maxResults] - Maximum number of results to return in one page.
   *
   * [minModifiedTimestampMs] - Minimum time a job was modified in milliseconds since epoch.
   *
   * [pageToken] - Continuation token
   *
   * [optParams] - Additional query parameters
   */
  Future<JobListResponse> list(String teamId, {int maxResults, String minModifiedTimestampMs, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (minModifiedTimestampMs != null) queryParams["minModifiedTimestampMs"] = minModifiedTimestampMs;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new JobListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a job. Fields that are set in the job state will be updated. This method supports patch semantics.
   *
   * [request] - Job to send in this request
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [address] - Job address as newline (Unix) separated string
   *
   * [assignee] - Assignee email address, or empty string to unassign.
   *
   * [customField] - Map from custom field id (from /team//custom_fields) to the field value. For example '123=Alice'
   *
   * [customerName] - Customer name
   *
   * [customerPhoneNumber] - Customer phone number
   *
   * [lat] - The latitude coordinate of this job's location.
   *
   * [lng] - The longitude coordinate of this job's location.
   *
   * [note] - Job note as newline (Unix) separated string
   *
   * [progress] - Job progress
   *   Allowed values:
   *     COMPLETED - Completed
   *     IN_PROGRESS - In progress
   *     NOT_ACCEPTED - Not accepted
   *     NOT_STARTED - Not started
   *     OBSOLETE - Obsolete
   *
   * [title] - Job title
   *
   * [optParams] - Additional query parameters
   */
  Future<Job> patch(Job request, String teamId, String jobId, {String address, String assignee, String customField, String customerName, String customerPhoneNumber, num lat, num lng, String note, String progress, String title, Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs/{jobId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (address != null) queryParams["address"] = address;
    if (assignee != null) queryParams["assignee"] = assignee;
    if (customField != null) queryParams["customField"] = customField;
    if (customerName != null) queryParams["customerName"] = customerName;
    if (customerPhoneNumber != null) queryParams["customerPhoneNumber"] = customerPhoneNumber;
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (lat != null) queryParams["lat"] = lat;
    if (lng != null) queryParams["lng"] = lng;
    if (note != null) queryParams["note"] = note;
    if (progress != null && !["COMPLETED", "IN_PROGRESS", "NOT_ACCEPTED", "NOT_STARTED", "OBSOLETE"].contains(progress)) {
      paramErrors.add("Allowed values for progress: COMPLETED, IN_PROGRESS, NOT_ACCEPTED, NOT_STARTED, OBSOLETE");
    }
    if (progress != null) queryParams["progress"] = progress;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (title != null) queryParams["title"] = title;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Job.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a job. Fields that are set in the job state will be updated.
   *
   * [request] - Job to send in this request
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [address] - Job address as newline (Unix) separated string
   *
   * [assignee] - Assignee email address, or empty string to unassign.
   *
   * [customField] - Map from custom field id (from /team//custom_fields) to the field value. For example '123=Alice'
   *
   * [customerName] - Customer name
   *
   * [customerPhoneNumber] - Customer phone number
   *
   * [lat] - The latitude coordinate of this job's location.
   *
   * [lng] - The longitude coordinate of this job's location.
   *
   * [note] - Job note as newline (Unix) separated string
   *
   * [progress] - Job progress
   *   Allowed values:
   *     COMPLETED - Completed
   *     IN_PROGRESS - In progress
   *     NOT_ACCEPTED - Not accepted
   *     NOT_STARTED - Not started
   *     OBSOLETE - Obsolete
   *
   * [title] - Job title
   *
   * [optParams] - Additional query parameters
   */
  Future<Job> update(Job request, String teamId, String jobId, {String address, String assignee, String customField, String customerName, String customerPhoneNumber, num lat, num lng, String note, String progress, String title, Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs/{jobId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (address != null) queryParams["address"] = address;
    if (assignee != null) queryParams["assignee"] = assignee;
    if (customField != null) queryParams["customField"] = customField;
    if (customerName != null) queryParams["customerName"] = customerName;
    if (customerPhoneNumber != null) queryParams["customerPhoneNumber"] = customerPhoneNumber;
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (lat != null) queryParams["lat"] = lat;
    if (lng != null) queryParams["lng"] = lng;
    if (note != null) queryParams["note"] = note;
    if (progress != null && !["COMPLETED", "IN_PROGRESS", "NOT_ACCEPTED", "NOT_STARTED", "OBSOLETE"].contains(progress)) {
      paramErrors.add("Allowed values for progress: COMPLETED, IN_PROGRESS, NOT_ACCEPTED, NOT_STARTED, OBSOLETE");
    }
    if (progress != null) queryParams["progress"] = progress;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (title != null) queryParams["title"] = title;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Job.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LocationResource extends Resource {

  LocationResource(Client client) : super(client) {
  }

  /**
   * Retrieves a list of locations for a worker.
   *
   * [teamId] - Team ID
   *
   * [workerEmail] - Worker email address.
   *
   * [startTimestampMs] - Start timestamp in milliseconds since the epoch.
   *
   * [maxResults] - Maximum number of results to return in one page.
   *
   * [pageToken] - Continuation token
   *
   * [optParams] - Additional query parameters
   */
  Future<LocationListResponse> list(String teamId, String workerEmail, String startTimestampMs, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/workers/{workerEmail}/locations";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startTimestampMs == null) paramErrors.add("startTimestampMs is required");
    if (startTimestampMs != null) queryParams["startTimestampMs"] = startTimestampMs;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (workerEmail == null) paramErrors.add("workerEmail is required");
    if (workerEmail != null) urlParams["workerEmail"] = workerEmail;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LocationListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ScheduleResource extends Resource {

  ScheduleResource(Client client) : super(client) {
  }

  /**
   * Retrieves the schedule for a job.
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [optParams] - Additional query parameters
   */
  Future<Schedule> get(String teamId, String jobId, {Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs/{jobId}/schedule";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Schedule.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Replaces the schedule of a job with the provided schedule. This method supports patch semantics.
   *
   * [request] - Schedule to send in this request
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [allDay] - Whether the job is scheduled for the whole day. Time of day in start/end times is ignored if this is true.
   *
   * [endTime] - Scheduled end time in milliseconds since epoch.
   *
   * [startTime] - Scheduled start time in milliseconds since epoch.
   *
   * [optParams] - Additional query parameters
   */
  Future<Schedule> patch(Schedule request, String teamId, String jobId, {bool allDay, String endTime, String startTime, Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs/{jobId}/schedule";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (allDay != null) queryParams["allDay"] = allDay;
    if (endTime != null) queryParams["endTime"] = endTime;
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (startTime != null) queryParams["startTime"] = startTime;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Schedule.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Replaces the schedule of a job with the provided schedule.
   *
   * [request] - Schedule to send in this request
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [allDay] - Whether the job is scheduled for the whole day. Time of day in start/end times is ignored if this is true.
   *
   * [endTime] - Scheduled end time in milliseconds since epoch.
   *
   * [startTime] - Scheduled start time in milliseconds since epoch.
   *
   * [optParams] - Additional query parameters
   */
  Future<Schedule> update(Schedule request, String teamId, String jobId, {bool allDay, String endTime, String startTime, Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/jobs/{jobId}/schedule";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (allDay != null) queryParams["allDay"] = allDay;
    if (endTime != null) queryParams["endTime"] = endTime;
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (startTime != null) queryParams["startTime"] = startTime;
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Schedule.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class WorkerResource extends Resource {

  WorkerResource(Client client) : super(client) {
  }

  /**
   * Retrieves a list of workers in a team.
   *
   * [teamId] - Team ID
   *
   * [optParams] - Additional query parameters
   */
  Future<WorkerListResponse> list(String teamId, {Map optParams}) {
    var completer = new Completer();
    var url = "{teamId}/workers";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (teamId == null) paramErrors.add("teamId is required");
    if (teamId != null) urlParams["teamId"] = teamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new WorkerListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

