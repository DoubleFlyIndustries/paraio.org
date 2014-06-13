---
title: Introduction
---

Para was created because we needed a simple and flexible back-end service to support our front-end work.
We wanted to have a system that allowed us to persist objects easily to anything - RDBMS, NoSQL data store or memory.
Our second requirement was full text search. We wanted to be able to find any persisted object quickly.

There are two ways to use Para:
- as a standalone service running inside a servlet container like Jetty or Tomcat;
- as part of your project as a Maven dependency.

Running Para as a standalone service on one or more nodes gives you scalability and allows you to support
many different clients and applications. This is done through Para's simple RESTful API which talks JSON to your clients.

And if you are building a server-side application, add Para as a dependency to quickly make your domain objects
persistable and searchable. You can still keep the RESTful API feature or turn it off completely.