---
title: Grant permissions
category: REST API
path: /v1/_permissions/{subjectid}/{resource}
type: PUT
---

Grants a set of permissions (allowed HTTP methods) to a subject for a given resource.

### Request

- **body** - a JSON array of permitted HTTP methods or a wildcard `["*"]` to allow all (required).
- `{subjectid}` - the subject/user `id` to grant permissions to (required)
- `{resource}` - the resource path or object type (URL encoded), for example
`posts` corresponds to `/v1/posts`, `posts%2F123` corresponds to `/v1/posts/123` (required)

### Response

Returns a JSON object containing the resource permissions for the given user.

- **status codes** - `200`, `400`, `404`

Example response:
```js
{
  "user2": {
		"posts": ["GET", "POST"]
	}
}
```