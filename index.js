const Koa = require('koa');
const app = new Koa();
const DateFormat = require("./utils/formatTime")

app.use(async ctx => {
  const time = DateFormat(Date.now())
  ctx.body = `更新了${time}`;
});

app.listen(3010);