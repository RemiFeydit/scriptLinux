nb=$((RANDOM %= 1000))
tentatives=0
offer=-1
re='^[0-9]+$'

while (test $offer -ne $nb) 
do
echo -n "Entrez un nombre : "; read offer

if ! [[ $offer =~ $re ]]
   then
   isNumber=false 
   echo -n "Entrez un nombre : "; read offer
else
  isNumber=true
fi

if ($isNumber = true)
then
  if (test $nb -gt $offer)
     then
     echo "Trop petit"
     ((tentatives++))
  elif (test $nb -lt $offer)
     then
     echo "Trop grand"
     ((tentatives++))
  elif (test $nb -eq $offer)
     then
     echo "C'est gagné !!!"
     echo "Vous avez trouvé le nombre $nb en $tentatives tentatives."
     exit 0
  fi
fi
done
