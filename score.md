# Score

```
$ ./bin/benchmarker --stage=prod --request-timeout=10s --initialize-request-timeout=60s

09:58:55.668748 [PASSED]: true
09:58:55.668754 [SCORE] 14209 (addition: 15229, deduction: 1020)
[ADMIN] 09:58:55.668772 [SCORE] map[GET /user/:userId/gacha/index:1023 GET /user/:userId/home:1051 GET /user/:userId/item:216 GET /user/:userId/present/index/:n:1265 POST /login:839 POST /login(ban):184 POST /user:233 POST /user/:userId/card:215 POST /user/:userId/card/addexp/:cardId:215 POST /user/:userId/gacha/draw/:gachaId:1004 POST /user/:userId/present/receive:1243 POST /user/:userId/reward:820
```
