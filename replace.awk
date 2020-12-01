NR == FNR {
  rep[$1] = $2
  next
}

{

if (FNR <= 4){

  for (key in rep)
    
    gsub("\\y"key"\\y", rep[key])

  print;
} else{ print; }


}
