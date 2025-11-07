# This flag makes the script break for undefined variables
set -u

input_dir=$1
mkdir -p output_data/$input_dir
for file in $input_dir/NENE*[AB].txt
do
  echo $file
  bash goostats.sh $file output_data/${file}
done
