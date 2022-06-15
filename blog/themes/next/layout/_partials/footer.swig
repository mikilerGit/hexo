
<span>
  <span class="post-meta-divider">|</span>
  本站已运行
  <span id="showDays"></span>
</span>
<script>
  var seconds = 1000;
  var minutes = seconds * 60;
  var hours = minutes * 60;
  var days = hours * 24;
  var years = days * 365;
  var birthDay = Date.UTC(2022,01,01,00,00,00); // 这里设置建站时间
  setInterval(function() {
    var today = new Date();
    var todayYear = today.getFullYear();
    var todayMonth = today.getMonth()+1;
    var todayDate = today.getDate();
    var todayHour = today.getHours();
    var todayMinute = today.getMinutes();
    var todaySecond = today.getSeconds();
    var now = Date.UTC(todayYear,todayMonth,todayDate,todayHour,todayMinute,todaySecond);
    var diff = now - birthDay;
    var diffYears = Math.floor(diff/years);
    var diffDays = Math.floor((diff/days)-diffYears*365);
    var diffHours = Math.floor((diff-(diffYears*365+diffDays)*days)/hours);
    var diffMinutes = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours)/minutes);
    var diffSeconds = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours-diffMinutes*minutes)/seconds);
      document.getElementById('showDays').innerHTML=""+diffYears+"年"+diffDays+"天"+diffHours+"小时"+diffMinutes+"分钟"+diffSeconds+"秒";
  }, 1000);
</script>
  <div class="powered-by">
  <i class="fa fa-user-md"></i>
  <span id="busuanzi_container_site_uv">
    本站总访客数:<span id="busuanzi_value_site_uv"></span>&nbsp;&nbsp;| 
  </span>
  <span id="busuanzi_container_site_pv">
      &nbsp;本站总访问量<span id="busuanzi_value_site_pv"></span>次
  </span>
  </div>
  </div>
{{- next_inject('footer') }}

