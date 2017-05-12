<?php
$token = 'EAAAAAYsX7TsBAHWeZANENFsaITLfqjbJKDGOnSHjlZBf9aDJYU3HuUz7suZCyGEnoCDaZA2mfm1ElFAsPpDWg0l4jE8n6uJGuINdlbZA4IVhxCUfWkVFm70YhOguvN4cMG89Mfd4wRX9NigrGlJJAU2qH3tW31Ar2WBszpQcLlYjzbKp9CeYcJc3fuvT24EcN2ZBuMfvW7z2lEGIsKdhSL'; //token of Nguyen
$limitnf=20; // 20 Status Ở Trang
$getme = json_decode(load('https://graph.facebook.com/me?fields=id&access_token'.$token),true);

$autocamxuc= json_decode(load('https://graph.facebook.com/me/home?fields=id,message,created_time,from,comments,type&access_token='.$token.'&offset=0&limit='.$limitnf.''),true);

$dalike= 0;
for($i=1; $i<=count($autocamxuc[data]); $i++){

  $getlike = json_decode(load('https://graph.facebook.com/'.$autocamxuc[data][$i-1][id].'/reactions?viewer_reaction&method=get&limit=10000&access_token='.$token.''),true);
  //vong lap like
  for($t=1;$t<=count($getlike[data]);$t++) {
    if($getme[id] == $getlike[data][$t-1][id])
      $dalike = 1;
  }
  //het vong like
  set_time_limit(0);
  if($dalike == 0) {
  $camxuc = array('LIKE','WOW','HAHA','LOVE');
  $mess=$camxuc[rand(0,count($camxuc)-1)];
  echo load('https://graph.facebook.com/'.$autocamxuc[data][$i-1][id].'/reactions?type='.$mess.'&method=post&access_token='.$token.'');
  }
}
function load($url){
$data = curl_init();
curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($data, CURLOPT_URL, $url);
$hasil = curl_exec($data);
curl_close($data);
return $hasil;
}
?>
