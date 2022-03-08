
VALEC_DIR="$1"
if [ "$VALEC_DIR" == "" ]; then
  echo "Please supply the bootstrapping valec directory."
  echo "Example: ~/TheValeCompiler"
  exit
fi
shift;

STDLIB_DIR="$1"
if [ "$STDLIB_DIR" == "" ]; then
  echo "Please supply the stdlib directory."
  echo "Example: ~/stdlib"
  exit
fi
shift;

$VALEC_DIR/valec build stdlib=$STDLIB_DIR/src atharia=src domino=~/VDomino/src rocketvale=~/RocketVale/src rocketvale=~/RocketVale/src/native/rust/target/debug/librocketvale.a valejson=~/ValeJSON/src parseiter=~/ParseIter/src --output_dir build --region_override assist --llvm_ir true
