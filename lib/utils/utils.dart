

int getCurrentTime(){
  return DateTime.now().millisecondsSinceEpoch;
}


String getCountDownString(int time){
  String result;
  int minute = time~/60;
  int second = time%60;
  result  = "$minute:";
  if(second<10){
    result += "0$second";
  }else{
    result += "$second";
  }
  return result;
}


String formatTime(int time) {
  var m = time / 60;
  var s = time % 60;
  if (m == 0 && s == 0) {
    return "--/--";
  } else {
    return "${(m < 10 ? "0$m" : m)}:${(s < 10 ? "0$s" : s)}";
  }
}