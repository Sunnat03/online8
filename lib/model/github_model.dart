import 'dart:convert';


GithubModel githubModelFromJson(String str) => GithubModel.fromJson(json.decode(str));
String githubModelToJson(GithubModel data) => json.encode(data.toJson());
class GithubModel {
  GithubModel({
      this.login, 
      this.id, 
      this.nodeId, 
      this.avatarUrl, 
      this.gravatarId, 
      this.url, 
      this.htmlUrl, 
      this.followersUrl, 
      this.followingUrl, 
      this.gistsUrl, 
      this.starredUrl, 
      this.subscriptionsUrl, 
      this.organizationsUrl, 
      this.reposUrl, 
      this.eventsUrl, 
      this.receivedEventsUrl, 
      this.type, 
      this.siteAdmin, 
      this.name, 
      this.company, 
      this.blog, 
      this.location, 
      this.email, 
      this.hireable, 
      this.bio, 
      this.twitterUsername, 
      this.publicRepos, 
      this.publicGists, 
      this.followers, 
      this.following, 
      this.createdAt, 
      this.updatedAt,});

  GithubModel.fromJson(dynamic json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    hireable = json['hireable'];
    bio = json['bio'];
    twitterUsername = json['twitter_username'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  dynamic name;
  dynamic company;
  String? blog;
  dynamic location;
  dynamic email;
  dynamic hireable;
  dynamic bio;
  dynamic twitterUsername;
  int? publicRepos;
  int? publicGists;
  int? followers;
  int? following;
  String? createdAt;
  String? updatedAt;
GithubModel copyWith({  String? login,
  int? id,
  String? nodeId,
  String? avatarUrl,
  String? gravatarId,
  String? url,
  String? htmlUrl,
  String? followersUrl,
  String? followingUrl,
  String? gistsUrl,
  String? starredUrl,
  String? subscriptionsUrl,
  String? organizationsUrl,
  String? reposUrl,
  String? eventsUrl,
  String? receivedEventsUrl,
  String? type,
  bool? siteAdmin,
  dynamic name,
  dynamic company,
  String? blog,
  dynamic location,
  dynamic email,
  dynamic hireable,
  dynamic bio,
  dynamic twitterUsername,
  int? publicRepos,
  int? publicGists,
  int? followers,
  int? following,
  String? createdAt,
  String? updatedAt,
}) => GithubModel(  login: login ?? this.login,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  avatarUrl: avatarUrl ?? this.avatarUrl,
  gravatarId: gravatarId ?? this.gravatarId,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  followersUrl: followersUrl ?? this.followersUrl,
  followingUrl: followingUrl ?? this.followingUrl,
  gistsUrl: gistsUrl ?? this.gistsUrl,
  starredUrl: starredUrl ?? this.starredUrl,
  subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
  organizationsUrl: organizationsUrl ?? this.organizationsUrl,
  reposUrl: reposUrl ?? this.reposUrl,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
  type: type ?? this.type,
  siteAdmin: siteAdmin ?? this.siteAdmin,
  name: name ?? this.name,
  company: company ?? this.company,
  blog: blog ?? this.blog,
  location: location ?? this.location,
  email: email ?? this.email,
  hireable: hireable ?? this.hireable,
  bio: bio ?? this.bio,
  twitterUsername: twitterUsername ?? this.twitterUsername,
  publicRepos: publicRepos ?? this.publicRepos,
  publicGists: publicGists ?? this.publicGists,
  followers: followers ?? this.followers,
  following: following ?? this.following,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = login;
    map['id'] = id;
    map['node_id'] = nodeId;
    map['avatar_url'] = avatarUrl;
    map['gravatar_id'] = gravatarId;
    map['url'] = url;
    map['html_url'] = htmlUrl;
    map['followers_url'] = followersUrl;
    map['following_url'] = followingUrl;
    map['gists_url'] = gistsUrl;
    map['starred_url'] = starredUrl;
    map['subscriptions_url'] = subscriptionsUrl;
    map['organizations_url'] = organizationsUrl;
    map['repos_url'] = reposUrl;
    map['events_url'] = eventsUrl;
    map['received_events_url'] = receivedEventsUrl;
    map['type'] = type;
    map['site_admin'] = siteAdmin;
    map['name'] = name;
    map['company'] = company;
    map['blog'] = blog;
    map['location'] = location;
    map['email'] = email;
    map['hireable'] = hireable;
    map['bio'] = bio;
    map['twitter_username'] = twitterUsername;
    map['public_repos'] = publicRepos;
    map['public_gists'] = publicGists;
    map['followers'] = followers;
    map['following'] = following;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}