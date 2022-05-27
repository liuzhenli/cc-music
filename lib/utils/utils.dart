

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
