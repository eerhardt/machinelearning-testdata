
ßś
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.10.02v1.10.0-0-g656e7a2b34č
m
FeaturesPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
LabelPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shape:˙˙˙˙˙˙˙˙˙

\
ConstConst*
dtype0*
_output_shapes
:	
*
valueB	
*ÍĚĚ=
w
W
VariableV2*
	container *
_output_shapes
:	
*
shape:	
*
shared_name *
dtype0

W/AssignAssignWConst*
use_locking(*
T0*
_class

loc:@W*
validate_shape(*
_output_shapes
:	

U
W/readIdentityW*
_class

loc:@W*
_output_shapes
:	
*
T0
T
Const_1Const*
valueB
*ÍĚĚ=*
dtype0*
_output_shapes
:

m
b
VariableV2*
shape:
*
shared_name *
dtype0*
	container *
_output_shapes
:


b/AssignAssignbConst_1*
use_locking(*
T0*
_class

loc:@b*
validate_shape(*
_output_shapes
:

P
b/readIdentityb*
T0*
_class

loc:@b*
_output_shapes
:

z
MatMulMatMulFeaturesW/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_b( *
T0
L
addAddMatMulb/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
L

PredictionSoftmaxadd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

H
LogLog
Prediction*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
H
mulMulLabelLog*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

W
Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
q
SumSummulSum/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( 
=
NegNegSum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
X
LossMeanNegConst_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Loss_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Loss_grad/ReshapeReshapegradients/Fill!gradients/Loss_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
\
gradients/Loss_grad/ShapeShapeNeg*
T0*
out_type0*
_output_shapes
:

gradients/Loss_grad/TileTilegradients/Loss_grad/Reshapegradients/Loss_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/Loss_grad/Shape_1ShapeNeg*
out_type0*
_output_shapes
:*
T0
^
gradients/Loss_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
c
gradients/Loss_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Loss_grad/ProdProdgradients/Loss_grad/Shape_1gradients/Loss_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
e
gradients/Loss_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Loss_grad/Prod_1Prodgradients/Loss_grad/Shape_2gradients/Loss_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
_
gradients/Loss_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Loss_grad/MaximumMaximumgradients/Loss_grad/Prod_1gradients/Loss_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Loss_grad/floordivFloorDivgradients/Loss_grad/Prodgradients/Loss_grad/Maximum*
_output_shapes
: *
T0
n
gradients/Loss_grad/CastCastgradients/Loss_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0

gradients/Loss_grad/truedivRealDivgradients/Loss_grad/Tilegradients/Loss_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
gradients/Neg_grad/NegNeggradients/Loss_grad/truediv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
gradients/Sum_grad/ShapeShapemul*
_output_shapes
:*
T0*
out_type0

gradients/Sum_grad/SizeConst*
_output_shapes
: *
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
Ą
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 

gradients/Sum_grad/Shape_1Const*
valueB *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 

gradients/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/range/deltaConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ď
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/Fill/valueConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
ş
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
ń
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N*
_output_shapes
:

gradients/Sum_grad/Maximum/yConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
ˇ
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:*
T0
Ż
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
_output_shapes
:*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
¨
gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

]
gradients/mul_grad/ShapeShapeLabel*
out_type0*
_output_shapes
:*
T0
]
gradients/mul_grad/Shape_1ShapeLog*
T0*
out_type0*
_output_shapes
:
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
m
gradients/mul_grad/MulMulgradients/Sum_grad/TileLog*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

q
gradients/mul_grad/Mul_1MulLabelgradients/Sum_grad/Tile*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ú
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ŕ
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/Log_grad/Reciprocal
Reciprocal
Prediction.^gradients/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

z
gradients/Prediction_grad/mulMulgradients/Log_grad/mul
Prediction*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

y
/gradients/Prediction_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ż
gradients/Prediction_grad/SumSumgradients/Prediction_grad/mul/gradients/Prediction_grad/Sum/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( 
x
'gradients/Prediction_grad/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
´
!gradients/Prediction_grad/ReshapeReshapegradients/Prediction_grad/Sum'gradients/Prediction_grad/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

gradients/Prediction_grad/subSubgradients/Log_grad/mul!gradients/Prediction_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0

gradients/Prediction_grad/mul_1Mulgradients/Prediction_grad/sub
Prediction*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
^
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¨
gradients/add_grad/SumSumgradients/Prediction_grad/mul_1(gradients/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
Ź
gradients/add_grad/Sum_1Sumgradients/Prediction_grad/mul_1*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes
:
*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ú
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
_output_shapes
:
*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
´
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyW/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/MatMul_grad/MatMul_1MatMulFeatures+gradients/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	
*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes
:	

_
SGDOptimizer/learning_rateConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
ć
*SGDOptimizer/update_W/ApplyGradientDescentApplyGradientDescentWSGDOptimizer/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@W*
_output_shapes
:	

Ţ
*SGDOptimizer/update_b/ApplyGradientDescentApplyGradientDescentbSGDOptimizer/learning_rate-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@b*
_output_shapes
:

n
SGDOptimizerNoOp+^SGDOptimizer/update_W/ApplyGradientDescent+^SGDOptimizer/update_b/ApplyGradientDescent
"
initNoOp	^W/Assign	^b/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
e
save/SaveV2/tensor_namesConst*
valueBBWBb*
dtype0*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:
q
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesWb*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
h
save/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBWBb*
dtype0
j
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes

::*
dtypes
2

save/AssignAssignWsave/RestoreV2*
use_locking(*
T0*
_class

loc:@W*
validate_shape(*
_output_shapes
:	


save/Assign_1Assignbsave/RestoreV2:1*
use_locking(*
T0*
_class

loc:@b*
validate_shape(*
_output_shapes
:

6
save/restore_allNoOp^save/Assign^save/Assign_1
R
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_f018f743844b48e287a44be12c7a5591/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
g
save_1/SaveV2/tensor_namesConst*
valueBBWBb*
dtype0*
_output_shapes
:
i
save_1/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesWb*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
j
save_1/RestoreV2/tensor_namesConst*
valueBBWBb*
dtype0*
_output_shapes
:
l
!save_1/RestoreV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes

::*
dtypes
2

save_1/AssignAssignWsave_1/RestoreV2*
use_locking(*
T0*
_class

loc:@W*
validate_shape(*
_output_shapes
:	


save_1/Assign_1Assignbsave_1/RestoreV2:1*
T0*
_class

loc:@b*
validate_shape(*
_output_shapes
:
*
use_locking(
>
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"g
trainable_variablesPN
$
W:0W/AssignW/read:02Const:08
&
b:0b/Assignb/read:02	Const_1:08"
train_op

SGDOptimizer"]
	variablesPN
$
W:0W/AssignW/read:02Const:08
&
b:0b/Assignb/read:02	Const_1:08*
serving_default
.
Features"

Features:0˙˙˙˙˙˙˙˙˙1

Prediction#
Prediction:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict