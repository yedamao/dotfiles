ct()
{
  if [ "$(uname 2> /dev/null)" = "Linux" ]; then
    date -d @$(  echo "($1 + 500) / 1000" | bc )
  else
    gdate -d @$(  echo "($1 + 500) / 1000" | bc )
  fi
}
