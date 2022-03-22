
VALEC_DIR="$1"
if [ "$VALEC_DIR" == "" ]; then
  echo "Please supply the bootstrapping valec directory."
  echo "Example: ~/TheValeCompiler"
  exit
fi
shift;

$VALEC_DIR/valec build atharia=src domino=~/VDomino/src terrain=~/Terrain/src rocketvale=~/RocketVale/src rocketvale=~/RocketVale/src/native/rust/target/debug/librocketvale.a valejson=~/ValeJSON/src parseiter=~/ParseIter/src --output_dir build --region_override resilient-v3 --llvm_ir true
