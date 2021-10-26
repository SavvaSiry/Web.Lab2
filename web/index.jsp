<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="ru-RU">
<head>
  <link href="stylesheets/main_page.css" rel="stylesheet">
  <link href="stylesheets/check_button.css" rel="stylesheet">
  <link rel="icon" type="image/jpg" href="images/favicon.jpg">
  <title>Лабораторная №2</title>
</head>
<body>
<header class="header">
  <h1>Веб-программирование, Лаб. 2, Вариант 10215</h1>
  <h2>Сирый Савва</h2>

</header>
<table id="mainTable" class="shaded">
  <thead><td colspan="5"><h3>Валидация введённых значений:</h3></td></thead>
  <tbody>
  <tr><td colspan="5"><hr></td></tr>
  <tr>
    <td rowspan="3">Выберите X:</td>
    <td><input name="X-button" class="illuminated animated" type="button" value="-2.0"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="-1.5"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="-1.0"></td>
    <td rowspan="6">
      <svg width="300" height="300" viewBox="0 0 300 300" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M257 158.499H150.165V264L45 158.499H96.748V52H149.832C197.573 52 257 81.9529 257 158.499Z" fill="#FFB800"/>
        <path d="M257 158.499H150.165V264L45 158.499H96.748V52H149.832C197.573 52 257 81.9529 257 158.499Z" fill="url(#paint0_linear_0:1)"/>
        <path d="M150 0L150 300" stroke="#FF8A00" stroke-width="2"/>
        <path d="M0 158H300" stroke="#FF8A00" stroke-width="2"/>
        <path d="M203.333 143.333L203.333 172.333" stroke="#FF8A00" stroke-width="2"/>
        <path d="M96.6667 143.333L96.6667 172.333" stroke="#FF8A00" stroke-width="2"/>
        <path d="M135.333 211.333H164.333" stroke="#FF8A00" stroke-width="2"/>
        <path d="M135.333 104.667H164.333" stroke="#FF8A00" stroke-width="2"/>
        <path d="M150 52H97V158" stroke="#FF8A00" stroke-width="2"/>
        <path d="M44 158L150 265" stroke="#FF8A00" stroke-width="2"/>
        <path d="M150 52.003C235.065 51.4731 256.11 121.114 256 156" stroke="#FF8A00" stroke-width="2"/>
        <defs>
          <linearGradient id="paint0_linear_0:1" x1="151" y1="52" x2="151" y2="264" gradientUnits="userSpaceOnUse">
            <stop stop-color="#E31D1D"/>
            <stop offset="1" stop-color="#F50303" stop-opacity="0"/>
            <stop offset="1" stop-color="#77C711" stop-opacity="0"/>
          </linearGradient>
        </defs>
      </svg>
    </td>
  </tr>
  <tr>
    <td><input name="X-button" class="illuminated animated" type="button" value="-0.5"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="0"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="0.5"></td>
  </tr>
  <tr>
    <td><input name="X-button" class="illuminated animated" type="button" value="1"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="1.5"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="2"></td>
  </tr>
  <tr>
    <td>Введите Y:</td>
    <td colspan="3"><input required name="Y-input" class="illuminated animated" type="text" placeholder="значение в промежутке (-5 до 3)" maxlength="6"></td>
  </tr>
  <tr>
    <td rowspan="2">Выберите R: <br> Если выбрать несколько, <br> вы получите сумму...</td>
    <br>

    <td >
      <h3></h3>
      1<input type="checkbox" name="radius" autocomplete="off" class="rb" id="r_1" value="1" my-title="1">
    </td>

    <td>
      +
      2<input type="checkbox" name="radius" class="rb" autocomplete="off" id="r_2" value="2" my-title="2">
    <td>
     +
      3<input type="checkbox" name="radius" class="rb" id="r_3" autocomplete="off" value="3" my-title="3">
    </td>
  </tr>
  <tr>
    <td>
      +
      4<input type="checkbox" name="radius" class="rb" id="r_4" value="4" autocomplete="off" my-title="4">
    <td>
    +
      5<input type="checkbox" name="radius" class="rb" id="r_5" value="5" autocomplete="off" my-title="5">
    </td>
  </tr>

















  <tr>
    <td colspan="5">
      <button id="checkButton">Проверить</button>
      <hr>
    </td>
  </tr>
  </tbody>
  <tfoot>
  <tr>
    <td colspan="5" id="outputContainer"><h4><span class="outputStub notification">Результаты отсутствуют</span></h4></td>
  </tr>
  </tfoot>
</table>
<script>
  let request = "x=0" + "&y=0" + "&r=0" + "&key=update";
  fetch("app", {
    method: "POST",
    headers: {"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"},
    body: request
  }).then(response => response.text()).then(function (serverAnswer) {
    document.getElementById("outputContainer").innerHTML = serverAnswer;
  }).catch(err => createNotification(`Ошибка HTTP ${err.textContent}. Повторите попытку позже.`));
</script>
<script src="scripts/validator.js"></script>
<script src="scripts/easter_egg.js"></script>
<script src="scripts/graph_drawer.js"></script>
</body>
</html>