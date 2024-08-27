#!/path/to/shell
ls
read -p "Enter the path of the directory (ex. ~/Eyad) : " path
cd $path
numberOfLines=$(ls -1 | grep ".txt" | wc -l)
echo "Found $numberOfLines text files"
mkdir tempo
for (( i=1 ; i<=$numberOfLines ; i++ ));
do
	echo "Number: $i"
	cd $path
	file=$(ls -1 | grep ".txt" | head -$i $Lines | tail -1)
	echo "$file"
	mv $file tempo/old_"$file"
done 
mv tempo/* .
rmdir tempo
