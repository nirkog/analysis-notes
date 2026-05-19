mkdir -p output/

cd ./src

for filename in *; do
	echo "Building $filename..."
	base=$(basename $filename .typ)
	typst compile $filename ../output/$base.pdf
done

echo "Finished building!"
