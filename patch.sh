sed -i s/\>read\</\>read-only\</g $1
sed -i s/\>write\</\>write-only\</g $1
sed -i s/\>read-only-write\</\>read-write\</g $1
sed -i "s/read-only[/]write-only/read-write/g" $1
sed -i "s/read[/]write/read-write/g" $1
