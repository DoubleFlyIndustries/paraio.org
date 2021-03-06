---
title: Find linked objects
category: REST API
path: /v1/{type}/{id}/links/{type2}/{id2}
type: GET
---

Call this method to search for objects that linked to the object with the given `{id}`.

**Note:** When called with the parameter `?childrenonly`, the request is treated as a "one-to-many" search request.
It will do asearch for child objects directly connected to their parent by the `parentid` field. Without `?childrenonly`
the request is treated as a "many-to-many" search request.

### Request

- `{type}` - the type of the first object, e.g. "users" (required)
- `{id}` - the `id` of the first object (required)
- `{type2}` - the `type` of the second object (required)
- `{id2}` - the `id` field of the second object (optional)

#### Parameters

- `childrenonly` - if set and `{id2}` is not set, will return a list of child objects
(these are the objects with `parentid` equal to `{id}` above). Also if `field` and `term` parameters are set, the results
are filtered by the specified field and the value of that field (term).
- `count` - if set will return no items an the total number of linked objects. If `childrenonly` is set, this will
return only the count of child objects.
- `q` - query string, if set, all linked/child objects will be searched and those that match the query are returned.
To search only child objects that are linked by `parentid` use `q` in combination with `childrenonly`, otherwise
the `Linker` objects will be searched. Since v1.19 `Linker` objects contain a copy of the two objects they connect. This
enables Para to execute more complex "joined" search queries. The effectiveness of these is determined by how up-to-date
the data inside a `Linker` is.

### Response

- If the `{id2}` parameter is specified, the response will be a boolean text value - `true` if objects are linked.
- If the `{id2}` parameter is missing, the response will be a list of linked objects. (pagination parameters are applicable)
- `childrenonly` - if set, the response will be a list of child objects (pagination parameters are applicable)

- **status codes** - `200`, `400` (if `type` parameter is missing)

Example response if `id2` is missing:

```js
{
	"page":X,
	"totalHits":Y,
	"items":[
		...
	]
}
```
Response if `id2` is specified: `true` or `false`