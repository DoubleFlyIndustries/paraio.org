---
title: ElasticSearch
category: Search
---

ElasticSearch is used as the default search engine in Para. The `Search` interface is implemented in the `ElasticSearch`
class.

There are several configuration properties for ElasticSearch:

<table class="table table-striped">
	<thead>
		<tr>
			<th>property</th>
			<th>description</th>
		</tr>
	</thead>
	<tbody>
		<tr><td>`para.es.shards`</td><td> The number of shards per index. Used when creating an new index. Default is `5`.</td></tr>
		<tr><td>`para.es.replicas`</td><td> The number of copies of an index. Default is `0`. </td></tr>
		<tr><td>`para.es.dir`</td><td> The directory where ElasticSearch will store data, logs etc. Default is `/var/lib/elasticsearch`. </td></tr>
	</tbody>
</table>

> Para relies heavily of [ElasticSearch](http://www.elasticsearch.org/guide) for indexing and full text search.