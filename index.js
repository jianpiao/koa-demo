const Koa = require('koa');
const app = new Koa();

app.use(async ctx => {
  ctx.body = `更新了${Date.now()}`;
});

app.listen(3010);