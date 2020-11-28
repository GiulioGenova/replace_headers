NR == FNR {
  rep[$1] = $2
  next
}

{
  for (key in rep)
    gsub("\\y"key"\\y", rep[key])
  print
}
