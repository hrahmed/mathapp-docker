# Installation
### build and get dependencies, in main directory
...npm install

### (optional) Install MongoDB
  update app/config/math-config.json, default configuration is
  {
    "port": 8999,
    "mongodb": {
      "dbname": "nodemath",
      "host": "localhost",
      "port": 27017
    }
  }

### run app with no apm agent
  npm start

### run app with apm agent
  ca-apm-run ./bin/www

### Rest URLs, USE GET:
+http://localhost:8999/api/math?operation=add&value1=25&value2=99
+http://localhost:8999/api/math?operation=multiply&value1=25&value2=99
+http://localhost:8999/api/math?operation=sqrt&value1=25






