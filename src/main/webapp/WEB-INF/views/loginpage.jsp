<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Project</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./style.css" />
  </head>
  <body>
    <section class="login-form">
      <h1>
        <strong><span>fit</span>ness</strong>
      </h1>
      <form action="">
        <div class="int-area">
          <input type="text" name="id" id="id" autocomplete="off" required />
          <label for="id">USER NAME</label>
        </div>
        <div class="int-area">
          <input
            type="password"
            name="pw"
            id="pw"
            autocomplete="off"
            required
          />
          <label for="pw">PASSWORD</label>
        </div>
        <div class="btn-area">
          <button type="submit">LOGIN</button>
        </div>
        <div class="caption">
          <a href="#"> 비밀번호를 잊어버리셨나요?</a>
        </div>
      </form>
    </section>
  </body>
</html>
