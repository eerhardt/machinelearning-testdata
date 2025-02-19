��
�%�$
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyMomentum
var"T�
accum"T�
lr"T	
grad"T
momentum"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
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

2	�
�
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
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
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
�
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
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.9.02b'v1.9.0-0-g25c197e023'��
R
learning_ratePlaceholder*
_output_shapes
:*
shape:*
dtype0
V
DropoutProb/inputConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
j
DropoutProbPlaceholderWithDefaultDropoutProb/input*
_output_shapes
: *
shape: *
dtype0
{
FeaturesPlaceholder*/
_output_shapes
:���������*$
shape:���������*
dtype0
`
LabelPlaceholder*#
_output_shapes
:���������*
shape:���������*
dtype0	
o
truncated_normal/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
Z
truncated_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
\
truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*&
_output_shapes
:*
T0*
seed2*

seed*
dtype0
�
truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*&
_output_shapes
:*
T0
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*&
_output_shapes
:*
T0
�
Variable
VariableV2*&
_output_shapes
:*
shape:*
	container *
shared_name *
dtype0
�
Variable/AssignAssignVariabletruncated_normal*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable*
use_locking(
q
Variable/readIdentityVariable*&
_output_shapes
:*
T0*
_class
loc:@Variable
R
ConstConst*
_output_shapes
:*
dtype0*
valueB*���=
v

Variable_1
VariableV2*
_output_shapes
:*
shape:*
	container *
shared_name *
dtype0
�
Variable_1/AssignAssign
Variable_1Const*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(
k
Variable_1/readIdentity
Variable_1*
_output_shapes
:*
T0*
_class
loc:@Variable_1
q
truncated_normal_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
\
truncated_normal_1/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
truncated_normal_1/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*&
_output_shapes
:*
T0*
seed2*

seed*
dtype0
�
truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*&
_output_shapes
:*
T0
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*&
_output_shapes
:*
T0
�

Variable_2
VariableV2*&
_output_shapes
:*
shape:*
	container *
shared_name *
dtype0
�
Variable_2/AssignAssign
Variable_2truncated_normal_1*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_2*
use_locking(
w
Variable_2/readIdentity
Variable_2*&
_output_shapes
:*
T0*
_class
loc:@Variable_2
T
Const_1Const*
_output_shapes
:*
dtype0*
valueB*���=
v

Variable_3
VariableV2*
_output_shapes
:*
shape:*
	container *
shared_name *
dtype0
�
Variable_3/AssignAssign
Variable_3Const_1*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_3*
use_locking(
k
Variable_3/readIdentity
Variable_3*
_output_shapes
:*
T0*
_class
loc:@Variable_3
q
truncated_normal_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
\
truncated_normal_2/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
truncated_normal_2/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*&
_output_shapes
:*
T0*
seed2"*

seed*
dtype0
�
truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*&
_output_shapes
:*
T0
{
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*&
_output_shapes
:*
T0
�

Variable_4
VariableV2*&
_output_shapes
:*
shape:*
	container *
shared_name *
dtype0
�
Variable_4/AssignAssign
Variable_4truncated_normal_2*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_4*
use_locking(
w
Variable_4/readIdentity
Variable_4*&
_output_shapes
:*
T0*
_class
loc:@Variable_4
T
Const_2Const*
_output_shapes
:*
dtype0*
valueB*���=
v

Variable_5
VariableV2*
_output_shapes
:*
shape:*
	container *
shared_name *
dtype0
�
Variable_5/AssignAssign
Variable_5Const_2*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_5*
use_locking(
k
Variable_5/readIdentity
Variable_5*
_output_shapes
:*
T0*
_class
loc:@Variable_5
i
truncated_normal_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"�  �   
\
truncated_normal_3/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
truncated_normal_3/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape* 
_output_shapes
:
�	�*
T0*
seed2/*

seed*
dtype0
�
truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev* 
_output_shapes
:
�	�*
T0
u
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean* 
_output_shapes
:
�	�*
T0
�

Variable_6
VariableV2* 
_output_shapes
:
�	�*
shape:
�	�*
	container *
shared_name *
dtype0
�
Variable_6/AssignAssign
Variable_6truncated_normal_3* 
_output_shapes
:
�	�*
T0*
validate_shape(*
_class
loc:@Variable_6*
use_locking(
q
Variable_6/readIdentity
Variable_6* 
_output_shapes
:
�	�*
T0*
_class
loc:@Variable_6
V
Const_3Const*
_output_shapes	
:�*
dtype0*
valueB�*���=
x

Variable_7
VariableV2*
_output_shapes	
:�*
shape:�*
	container *
shared_name *
dtype0
�
Variable_7/AssignAssign
Variable_7Const_3*
_output_shapes	
:�*
T0*
validate_shape(*
_class
loc:@Variable_7*
use_locking(
l
Variable_7/readIdentity
Variable_7*
_output_shapes	
:�*
T0*
_class
loc:@Variable_7
i
truncated_normal_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"�   
   
\
truncated_normal_4/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
truncated_normal_4/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
_output_shapes
:	�
*
T0*
seed2<*

seed*
dtype0
�
truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
_output_shapes
:	�
*
T0
t
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
_output_shapes
:	�
*
T0
�

Variable_8
VariableV2*
_output_shapes
:	�
*
shape:	�
*
	container *
shared_name *
dtype0
�
Variable_8/AssignAssign
Variable_8truncated_normal_4*
_output_shapes
:	�
*
T0*
validate_shape(*
_class
loc:@Variable_8*
use_locking(
p
Variable_8/readIdentity
Variable_8*
_output_shapes
:	�
*
T0*
_class
loc:@Variable_8
T
Const_4Const*
_output_shapes
:
*
dtype0*
valueB
*���=
v

Variable_9
VariableV2*
_output_shapes
:
*
shape:
*
	container *
shared_name *
dtype0
�
Variable_9/AssignAssign
Variable_9Const_4*
_output_shapes
:
*
T0*
validate_shape(*
_class
loc:@Variable_9*
use_locking(
k
Variable_9/readIdentity
Variable_9*
_output_shapes
:
*
T0*
_class
loc:@Variable_9
�
Conv2DConv2DFeaturesVariable/read*
strides
*/
_output_shapes
:���������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
]
addAddConv2DVariable_1/read*/
_output_shapes
:���������*
T0
K
ReluReluadd*/
_output_shapes
:���������*
T0
�
Conv2D_1Conv2DReluVariable_2/read*
strides
*/
_output_shapes
:���������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
a
add_1AddConv2D_1Variable_3/read*/
_output_shapes
:���������*
T0
O
Relu_1Reluadd_1*/
_output_shapes
:���������*
T0
�
Conv2D_2Conv2DRelu_1Variable_4/read*
strides
*/
_output_shapes
:���������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
a
add_2AddConv2D_2Variable_5/read*/
_output_shapes
:���������*
T0
O
Relu_2Reluadd_2*/
_output_shapes
:���������*
T0
^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  
j
ReshapeReshapeRelu_2Reshape/shape*(
_output_shapes
:����������	*
T0*
Tshape0
�
MatMulMatMulReshapeVariable_6/read*(
_output_shapes
:����������*
T0*
transpose_b( *
transpose_a( 
X
add_3AddMatMulVariable_7/read*(
_output_shapes
:����������*
T0
H
Relu_3Reluadd_3*(
_output_shapes
:����������*
T0
S
dropout/ShapeShapeRelu_3*
_output_shapes
:*
T0*
out_type0
_
dropout/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
_
dropout/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*(
_output_shapes
:����������*
T0*
seed2W*

seed*
dtype0
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
_output_shapes
: *
T0
�
dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*(
_output_shapes
:����������*
T0
�
dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*(
_output_shapes
:����������*
T0
j
dropout/addAddDropoutProbdropout/random_uniform*(
_output_shapes
:����������*
T0
V
dropout/FloorFloordropout/add*(
_output_shapes
:����������*
T0
^
dropout/divRealDivRelu_3DropoutProb*(
_output_shapes
:����������*
T0
a
dropout/mulMuldropout/divdropout/Floor*(
_output_shapes
:����������*
T0
�
MatMul_1MatMuldropout/mulVariable_8/read*'
_output_shapes
:���������
*
T0*
transpose_b( *
transpose_a( 
Y
add_4AddMatMul_1Variable_9/read*'
_output_shapes
:���������
*
T0
n
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeLabel*
_output_shapes
:*
T0	*
out_type0
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_4Label*6
_output_shapes$
":���������:���������
*
T0*
Tlabels0	
Q
Const_5Const*
_output_shapes
:*
dtype0*
valueB: 
�
LossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_5*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
N

PredictionSoftmaxadd_4*'
_output_shapes
:���������
*
T0
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
{
ArgMaxArgMax
PredictionArgMax/dimension*#
_output_shapes
:���������*
output_type0	*

Tidx0*
T0
K
EqualEqualArgMaxLabel*#
_output_shapes
:���������*
T0	
P
CastCastEqual*#
_output_shapes
:���������*

DstT0*

SrcT0

Q
Const_6Const*
_output_shapes
:*
dtype0*
valueB: 
]
AccuracyMeanCastConst_6*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  �?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
k
!gradients/Loss_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
gradients/Loss_grad/ReshapeReshapegradients/Fill!gradients/Loss_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
�
gradients/Loss_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
�
gradients/Loss_grad/TileTilegradients/Loss_grad/Reshapegradients/Loss_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
�
gradients/Loss_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
^
gradients/Loss_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
c
gradients/Loss_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
gradients/Loss_grad/ProdProdgradients/Loss_grad/Shape_1gradients/Loss_grad/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
e
gradients/Loss_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
gradients/Loss_grad/Prod_1Prodgradients/Loss_grad/Shape_2gradients/Loss_grad/Const_1*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
_
gradients/Loss_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
gradients/Loss_grad/MaximumMaximumgradients/Loss_grad/Prod_1gradients/Loss_grad/Maximum/y*
_output_shapes
: *
T0
�
gradients/Loss_grad/floordivFloorDivgradients/Loss_grad/Prodgradients/Loss_grad/Maximum*
_output_shapes
: *
T0
n
gradients/Loss_grad/CastCastgradients/Loss_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
gradients/Loss_grad/truedivRealDivgradients/Loss_grad/Tilegradients/Loss_grad/Cast*#
_output_shapes
:���������*
T0
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������
*
T0
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������
*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Loss_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:���������*
T0*

Tdim0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:���������
*
T0
b
gradients/add_4_grad/ShapeShapeMatMul_1*
_output_shapes
:*
T0*
out_type0
f
gradients/add_4_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:

�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_4_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
gradients/add_4_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
_output_shapes
:
*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
_output_shapes
:
*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyVariable_8/read*(
_output_shapes
:����������*
T0*
transpose_b(*
transpose_a( 
�
 gradients/MatMul_1_grad/MatMul_1MatMuldropout/mul-gradients/add_4_grad/tuple/control_dependency*
_output_shapes
:	�
*
T0*
transpose_b( *
transpose_a(
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
_output_shapes
:	�
*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
k
 gradients/dropout/mul_grad/ShapeShapedropout/div*
_output_shapes
:*
T0*
out_type0
o
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
_output_shapes
:*
T0*
out_type0
�
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/dropout/mul_grad/MulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout/Floor*(
_output_shapes
:����������*
T0
�
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/Mul0gradients/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
 gradients/dropout/mul_grad/Mul_1Muldropout/div0gradients/MatMul_1_grad/tuple/control_dependency*(
_output_shapes
:����������*
T0
�
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/Mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*(
_output_shapes
:����������*
T0*
Tshape0

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
�
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape
�
5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1
f
 gradients/dropout/div_grad/ShapeShapeRelu_3*
_output_shapes
:*
T0*
out_type0
e
"gradients/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
0gradients/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/div_grad/Shape"gradients/dropout/div_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
"gradients/dropout/div_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependencyDropoutProb*(
_output_shapes
:����������*
T0
�
gradients/dropout/div_grad/SumSum"gradients/dropout/div_grad/RealDiv0gradients/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
"gradients/dropout/div_grad/ReshapeReshapegradients/dropout/div_grad/Sum gradients/dropout/div_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
`
gradients/dropout/div_grad/NegNegRelu_3*(
_output_shapes
:����������*
T0
�
$gradients/dropout/div_grad/RealDiv_1RealDivgradients/dropout/div_grad/NegDropoutProb*(
_output_shapes
:����������*
T0
�
$gradients/dropout/div_grad/RealDiv_2RealDiv$gradients/dropout/div_grad/RealDiv_1DropoutProb*(
_output_shapes
:����������*
T0
�
gradients/dropout/div_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency$gradients/dropout/div_grad/RealDiv_2*(
_output_shapes
:����������*
T0
�
 gradients/dropout/div_grad/Sum_1Sumgradients/dropout/div_grad/mul2gradients/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
$gradients/dropout/div_grad/Reshape_1Reshape gradients/dropout/div_grad/Sum_1"gradients/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0

+gradients/dropout/div_grad/tuple/group_depsNoOp#^gradients/dropout/div_grad/Reshape%^gradients/dropout/div_grad/Reshape_1
�
3gradients/dropout/div_grad/tuple/control_dependencyIdentity"gradients/dropout/div_grad/Reshape,^gradients/dropout/div_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*5
_class+
)'loc:@gradients/dropout/div_grad/Reshape
�
5gradients/dropout/div_grad/tuple/control_dependency_1Identity$gradients/dropout/div_grad/Reshape_1,^gradients/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*7
_class-
+)loc:@gradients/dropout/div_grad/Reshape_1
�
gradients/Relu_3_grad/ReluGradReluGrad3gradients/dropout/div_grad/tuple/control_dependencyRelu_3*(
_output_shapes
:����������*
T0
`
gradients/add_3_grad/ShapeShapeMatMul*
_output_shapes
:*
T0*
out_type0
g
gradients/add_3_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_3_grad/SumSumgradients/Relu_3_grad/ReluGrad*gradients/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
gradients/add_3_grad/Sum_1Sumgradients/Relu_3_grad/ReluGrad,gradients/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
_output_shapes	
:�*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
_output_shapes	
:�*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
�
gradients/MatMul_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyVariable_6/read*(
_output_shapes
:����������	*
T0*
transpose_b(*
transpose_a( 
�
gradients/MatMul_grad/MatMul_1MatMulReshape-gradients/add_3_grad/tuple/control_dependency* 
_output_shapes
:
�	�*
T0*
transpose_b( *
transpose_a(
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������	*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps* 
_output_shapes
:
�	�*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
b
gradients/Reshape_grad/ShapeShapeRelu_2*
_output_shapes
:*
T0*
out_type0
�
gradients/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*/
_output_shapes
:���������*
T0*
Tshape0
�
gradients/Relu_2_grad/ReluGradReluGradgradients/Reshape_grad/ReshapeRelu_2*/
_output_shapes
:���������*
T0
b
gradients/add_2_grad/ShapeShapeConv2D_2*
_output_shapes
:*
T0*
out_type0
f
gradients/add_2_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_2_grad/SumSumgradients/Relu_2_grad/ReluGrad*gradients/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*/
_output_shapes
:���������*
T0*
Tshape0
�
gradients/add_2_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
_output_shapes
:*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
�
gradients/Conv2D_2_grad/ShapeNShapeNRelu_1Variable_4/read* 
_output_shapes
::*
T0*
N*
out_type0
�
+gradients/Conv2D_2_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_2_grad/ShapeNVariable_4/read-gradients/add_2_grad/tuple/control_dependency*
strides
*J
_output_shapes8
6:4������������������������������������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
�
,gradients/Conv2D_2_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_1 gradients/Conv2D_2_grad/ShapeN:1-gradients/add_2_grad/tuple/control_dependency*
strides
*J
_output_shapes8
6:4������������������������������������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
�
(gradients/Conv2D_2_grad/tuple/group_depsNoOp-^gradients/Conv2D_2_grad/Conv2DBackpropFilter,^gradients/Conv2D_2_grad/Conv2DBackpropInput
�
0gradients/Conv2D_2_grad/tuple/control_dependencyIdentity+gradients/Conv2D_2_grad/Conv2DBackpropInput)^gradients/Conv2D_2_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*>
_class4
20loc:@gradients/Conv2D_2_grad/Conv2DBackpropInput
�
2gradients/Conv2D_2_grad/tuple/control_dependency_1Identity,gradients/Conv2D_2_grad/Conv2DBackpropFilter)^gradients/Conv2D_2_grad/tuple/group_deps*&
_output_shapes
:*
T0*?
_class5
31loc:@gradients/Conv2D_2_grad/Conv2DBackpropFilter
�
gradients/Relu_1_grad/ReluGradReluGrad0gradients/Conv2D_2_grad/tuple/control_dependencyRelu_1*/
_output_shapes
:���������*
T0
b
gradients/add_1_grad/ShapeShapeConv2D_1*
_output_shapes
:*
T0*
out_type0
f
gradients/add_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_1_grad/SumSumgradients/Relu_1_grad/ReluGrad*gradients/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*/
_output_shapes
:���������*
T0*
Tshape0
�
gradients/add_1_grad/Sum_1Sumgradients/Relu_1_grad/ReluGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
_output_shapes
:*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
�
gradients/Conv2D_1_grad/ShapeNShapeNReluVariable_2/read* 
_output_shapes
::*
T0*
N*
out_type0
�
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read-gradients/add_1_grad/tuple/control_dependency*
strides
*J
_output_shapes8
6:4������������������������������������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
�
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu gradients/Conv2D_1_grad/ShapeN:1-gradients/add_1_grad/tuple/control_dependency*
strides
*J
_output_shapes8
6:4������������������������������������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
�
(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput
�
0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput
�
2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*&
_output_shapes
:*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter
�
gradients/Relu_grad/ReluGradReluGrad0gradients/Conv2D_1_grad/tuple/control_dependencyRelu*/
_output_shapes
:���������*
T0
^
gradients/add_grad/ShapeShapeConv2D*
_output_shapes
:*
T0*
out_type0
d
gradients/add_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*/
_output_shapes
:���������*
T0*
Tshape0
�
gradients/add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
_output_shapes
:*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
�
gradients/Conv2D_grad/ShapeNShapeNFeaturesVariable/read* 
_output_shapes
::*
T0*
N*
out_type0
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read+gradients/add_grad/tuple/control_dependency*
strides
*J
_output_shapes8
6:4������������������������������������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterFeaturesgradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*
strides
*J
_output_shapes8
6:4������������������������������������*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*
T0*
data_formatNHWC
�
&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter
�
#Variable/Momentum/Initializer/zerosConst*&
_output_shapes
:*
dtype0*
_class
loc:@Variable*%
valueB*    
�
Variable/Momentum
VariableV2*
_class
loc:@Variable*
shared_name *
shape:*&
_output_shapes
:*
dtype0*
	container 
�
Variable/Momentum/AssignAssignVariable/Momentum#Variable/Momentum/Initializer/zeros*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable*
use_locking(
�
Variable/Momentum/readIdentityVariable/Momentum*&
_output_shapes
:*
T0*
_class
loc:@Variable
�
%Variable_1/Momentum/Initializer/zerosConst*
_output_shapes
:*
dtype0*
_class
loc:@Variable_1*
valueB*    
�
Variable_1/Momentum
VariableV2*
_class
loc:@Variable_1*
shared_name *
shape:*
_output_shapes
:*
dtype0*
	container 
�
Variable_1/Momentum/AssignAssignVariable_1/Momentum%Variable_1/Momentum/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(
}
Variable_1/Momentum/readIdentityVariable_1/Momentum*
_output_shapes
:*
T0*
_class
loc:@Variable_1
�
5Variable_2/Momentum/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
_class
loc:@Variable_2*%
valueB"            
�
+Variable_2/Momentum/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
_class
loc:@Variable_2*
valueB
 *    
�
%Variable_2/Momentum/Initializer/zerosFill5Variable_2/Momentum/Initializer/zeros/shape_as_tensor+Variable_2/Momentum/Initializer/zeros/Const*

index_type0*
T0*
_class
loc:@Variable_2*&
_output_shapes
:
�
Variable_2/Momentum
VariableV2*
_class
loc:@Variable_2*
shared_name *
shape:*&
_output_shapes
:*
dtype0*
	container 
�
Variable_2/Momentum/AssignAssignVariable_2/Momentum%Variable_2/Momentum/Initializer/zeros*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_2*
use_locking(
�
Variable_2/Momentum/readIdentityVariable_2/Momentum*&
_output_shapes
:*
T0*
_class
loc:@Variable_2
�
%Variable_3/Momentum/Initializer/zerosConst*
_output_shapes
:*
dtype0*
_class
loc:@Variable_3*
valueB*    
�
Variable_3/Momentum
VariableV2*
_class
loc:@Variable_3*
shared_name *
shape:*
_output_shapes
:*
dtype0*
	container 
�
Variable_3/Momentum/AssignAssignVariable_3/Momentum%Variable_3/Momentum/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_3*
use_locking(
}
Variable_3/Momentum/readIdentityVariable_3/Momentum*
_output_shapes
:*
T0*
_class
loc:@Variable_3
�
5Variable_4/Momentum/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
_class
loc:@Variable_4*%
valueB"            
�
+Variable_4/Momentum/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
_class
loc:@Variable_4*
valueB
 *    
�
%Variable_4/Momentum/Initializer/zerosFill5Variable_4/Momentum/Initializer/zeros/shape_as_tensor+Variable_4/Momentum/Initializer/zeros/Const*

index_type0*
T0*
_class
loc:@Variable_4*&
_output_shapes
:
�
Variable_4/Momentum
VariableV2*
_class
loc:@Variable_4*
shared_name *
shape:*&
_output_shapes
:*
dtype0*
	container 
�
Variable_4/Momentum/AssignAssignVariable_4/Momentum%Variable_4/Momentum/Initializer/zeros*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_4*
use_locking(
�
Variable_4/Momentum/readIdentityVariable_4/Momentum*&
_output_shapes
:*
T0*
_class
loc:@Variable_4
�
%Variable_5/Momentum/Initializer/zerosConst*
_output_shapes
:*
dtype0*
_class
loc:@Variable_5*
valueB*    
�
Variable_5/Momentum
VariableV2*
_class
loc:@Variable_5*
shared_name *
shape:*
_output_shapes
:*
dtype0*
	container 
�
Variable_5/Momentum/AssignAssignVariable_5/Momentum%Variable_5/Momentum/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_5*
use_locking(
}
Variable_5/Momentum/readIdentityVariable_5/Momentum*
_output_shapes
:*
T0*
_class
loc:@Variable_5
�
5Variable_6/Momentum/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
_class
loc:@Variable_6*
valueB"�  �   
�
+Variable_6/Momentum/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
_class
loc:@Variable_6*
valueB
 *    
�
%Variable_6/Momentum/Initializer/zerosFill5Variable_6/Momentum/Initializer/zeros/shape_as_tensor+Variable_6/Momentum/Initializer/zeros/Const*

index_type0*
T0*
_class
loc:@Variable_6* 
_output_shapes
:
�	�
�
Variable_6/Momentum
VariableV2*
_class
loc:@Variable_6*
shared_name *
shape:
�	�* 
_output_shapes
:
�	�*
dtype0*
	container 
�
Variable_6/Momentum/AssignAssignVariable_6/Momentum%Variable_6/Momentum/Initializer/zeros* 
_output_shapes
:
�	�*
T0*
validate_shape(*
_class
loc:@Variable_6*
use_locking(
�
Variable_6/Momentum/readIdentityVariable_6/Momentum* 
_output_shapes
:
�	�*
T0*
_class
loc:@Variable_6
�
%Variable_7/Momentum/Initializer/zerosConst*
_output_shapes	
:�*
dtype0*
_class
loc:@Variable_7*
valueB�*    
�
Variable_7/Momentum
VariableV2*
_class
loc:@Variable_7*
shared_name *
shape:�*
_output_shapes	
:�*
dtype0*
	container 
�
Variable_7/Momentum/AssignAssignVariable_7/Momentum%Variable_7/Momentum/Initializer/zeros*
_output_shapes	
:�*
T0*
validate_shape(*
_class
loc:@Variable_7*
use_locking(
~
Variable_7/Momentum/readIdentityVariable_7/Momentum*
_output_shapes	
:�*
T0*
_class
loc:@Variable_7
�
5Variable_8/Momentum/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
_class
loc:@Variable_8*
valueB"�   
   
�
+Variable_8/Momentum/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
_class
loc:@Variable_8*
valueB
 *    
�
%Variable_8/Momentum/Initializer/zerosFill5Variable_8/Momentum/Initializer/zeros/shape_as_tensor+Variable_8/Momentum/Initializer/zeros/Const*

index_type0*
T0*
_class
loc:@Variable_8*
_output_shapes
:	�

�
Variable_8/Momentum
VariableV2*
_class
loc:@Variable_8*
shared_name *
shape:	�
*
_output_shapes
:	�
*
dtype0*
	container 
�
Variable_8/Momentum/AssignAssignVariable_8/Momentum%Variable_8/Momentum/Initializer/zeros*
_output_shapes
:	�
*
T0*
validate_shape(*
_class
loc:@Variable_8*
use_locking(
�
Variable_8/Momentum/readIdentityVariable_8/Momentum*
_output_shapes
:	�
*
T0*
_class
loc:@Variable_8
�
%Variable_9/Momentum/Initializer/zerosConst*
_output_shapes
:
*
dtype0*
_class
loc:@Variable_9*
valueB
*    
�
Variable_9/Momentum
VariableV2*
_class
loc:@Variable_9*
shared_name *
shape:
*
_output_shapes
:
*
dtype0*
	container 
�
Variable_9/Momentum/AssignAssignVariable_9/Momentum%Variable_9/Momentum/Initializer/zeros*
_output_shapes
:
*
T0*
validate_shape(*
_class
loc:@Variable_9*
use_locking(
}
Variable_9/Momentum/readIdentityVariable_9/Momentum*
_output_shapes
:
*
T0*
_class
loc:@Variable_9
X
MomentumOp/momentumConst*
_output_shapes
: *
dtype0*
valueB
 *fff?
�
(MomentumOp/update_Variable/ApplyMomentumApplyMomentumVariableVariable/Momentumlearning_rate0gradients/Conv2D_grad/tuple/control_dependency_1MomentumOp/momentum*&
_output_shapes
:*
T0*
use_nesterov( *
_class
loc:@Variable*
use_locking( 
�
*MomentumOp/update_Variable_1/ApplyMomentumApplyMomentum
Variable_1Variable_1/Momentumlearning_rate-gradients/add_grad/tuple/control_dependency_1MomentumOp/momentum*
_output_shapes
:*
T0*
use_nesterov( *
_class
loc:@Variable_1*
use_locking( 
�
*MomentumOp/update_Variable_2/ApplyMomentumApplyMomentum
Variable_2Variable_2/Momentumlearning_rate2gradients/Conv2D_1_grad/tuple/control_dependency_1MomentumOp/momentum*&
_output_shapes
:*
T0*
use_nesterov( *
_class
loc:@Variable_2*
use_locking( 
�
*MomentumOp/update_Variable_3/ApplyMomentumApplyMomentum
Variable_3Variable_3/Momentumlearning_rate/gradients/add_1_grad/tuple/control_dependency_1MomentumOp/momentum*
_output_shapes
:*
T0*
use_nesterov( *
_class
loc:@Variable_3*
use_locking( 
�
*MomentumOp/update_Variable_4/ApplyMomentumApplyMomentum
Variable_4Variable_4/Momentumlearning_rate2gradients/Conv2D_2_grad/tuple/control_dependency_1MomentumOp/momentum*&
_output_shapes
:*
T0*
use_nesterov( *
_class
loc:@Variable_4*
use_locking( 
�
*MomentumOp/update_Variable_5/ApplyMomentumApplyMomentum
Variable_5Variable_5/Momentumlearning_rate/gradients/add_2_grad/tuple/control_dependency_1MomentumOp/momentum*
_output_shapes
:*
T0*
use_nesterov( *
_class
loc:@Variable_5*
use_locking( 
�
*MomentumOp/update_Variable_6/ApplyMomentumApplyMomentum
Variable_6Variable_6/Momentumlearning_rate0gradients/MatMul_grad/tuple/control_dependency_1MomentumOp/momentum* 
_output_shapes
:
�	�*
T0*
use_nesterov( *
_class
loc:@Variable_6*
use_locking( 
�
*MomentumOp/update_Variable_7/ApplyMomentumApplyMomentum
Variable_7Variable_7/Momentumlearning_rate/gradients/add_3_grad/tuple/control_dependency_1MomentumOp/momentum*
_output_shapes	
:�*
T0*
use_nesterov( *
_class
loc:@Variable_7*
use_locking( 
�
*MomentumOp/update_Variable_8/ApplyMomentumApplyMomentum
Variable_8Variable_8/Momentumlearning_rate2gradients/MatMul_1_grad/tuple/control_dependency_1MomentumOp/momentum*
_output_shapes
:	�
*
T0*
use_nesterov( *
_class
loc:@Variable_8*
use_locking( 
�
*MomentumOp/update_Variable_9/ApplyMomentumApplyMomentum
Variable_9Variable_9/Momentumlearning_rate/gradients/add_4_grad/tuple/control_dependency_1MomentumOp/momentum*
_output_shapes
:
*
T0*
use_nesterov( *
_class
loc:@Variable_9*
use_locking( 
�

MomentumOpNoOp)^MomentumOp/update_Variable/ApplyMomentum+^MomentumOp/update_Variable_1/ApplyMomentum+^MomentumOp/update_Variable_2/ApplyMomentum+^MomentumOp/update_Variable_3/ApplyMomentum+^MomentumOp/update_Variable_4/ApplyMomentum+^MomentumOp/update_Variable_5/ApplyMomentum+^MomentumOp/update_Variable_6/ApplyMomentum+^MomentumOp/update_Variable_7/ApplyMomentum+^MomentumOp/update_Variable_8/ApplyMomentum+^MomentumOp/update_Variable_9/ApplyMomentum
�
initNoOp^Variable/Assign^Variable/Momentum/Assign^Variable_1/Assign^Variable_1/Momentum/Assign^Variable_2/Assign^Variable_2/Momentum/Assign^Variable_3/Assign^Variable_3/Momentum/Assign^Variable_4/Assign^Variable_4/Momentum/Assign^Variable_5/Assign^Variable_5/Momentum/Assign^Variable_6/Assign^Variable_6/Momentum/Assign^Variable_7/Assign^Variable_7/Momentum/Assign^Variable_8/Assign^Variable_8/Momentum/Assign^Variable_9/Assign^Variable_9/Momentum/Assign
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
�
save/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_d156caa2ae3e4b6fb65aeac5472c327f/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
\
save/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�BVariableBVariable/MomentumB
Variable_1BVariable_1/MomentumB
Variable_2BVariable_2/MomentumB
Variable_3BVariable_3/MomentumB
Variable_4BVariable_4/MomentumB
Variable_5BVariable_5/MomentumB
Variable_6BVariable_6/MomentumB
Variable_7BVariable_7/MomentumB
Variable_8BVariable_8/MomentumB
Variable_9BVariable_9/Momentum
�
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/Momentum
Variable_1Variable_1/Momentum
Variable_2Variable_2/Momentum
Variable_3Variable_3/Momentum
Variable_4Variable_4/Momentum
Variable_5Variable_5/Momentum
Variable_6Variable_6/Momentum
Variable_7Variable_7/Momentum
Variable_8Variable_8/Momentum
Variable_9Variable_9/Momentum*"
dtypes
2
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*
T0*

axis *
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�BVariableBVariable/MomentumB
Variable_1BVariable_1/MomentumB
Variable_2BVariable_2/MomentumB
Variable_3BVariable_3/MomentumB
Variable_4BVariable_4/MomentumB
Variable_5BVariable_5/MomentumB
Variable_6BVariable_6/MomentumB
Variable_7BVariable_7/MomentumB
Variable_8BVariable_8/MomentumB
Variable_9BVariable_9/Momentum
�
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
�
save/AssignAssignVariablesave/RestoreV2*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable*
use_locking(
�
save/Assign_1AssignVariable/Momentumsave/RestoreV2:1*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable*
use_locking(
�
save/Assign_2Assign
Variable_1save/RestoreV2:2*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(
�
save/Assign_3AssignVariable_1/Momentumsave/RestoreV2:3*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(
�
save/Assign_4Assign
Variable_2save/RestoreV2:4*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_2*
use_locking(
�
save/Assign_5AssignVariable_2/Momentumsave/RestoreV2:5*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_2*
use_locking(
�
save/Assign_6Assign
Variable_3save/RestoreV2:6*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_3*
use_locking(
�
save/Assign_7AssignVariable_3/Momentumsave/RestoreV2:7*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_3*
use_locking(
�
save/Assign_8Assign
Variable_4save/RestoreV2:8*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_4*
use_locking(
�
save/Assign_9AssignVariable_4/Momentumsave/RestoreV2:9*&
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_4*
use_locking(
�
save/Assign_10Assign
Variable_5save/RestoreV2:10*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_5*
use_locking(
�
save/Assign_11AssignVariable_5/Momentumsave/RestoreV2:11*
_output_shapes
:*
T0*
validate_shape(*
_class
loc:@Variable_5*
use_locking(
�
save/Assign_12Assign
Variable_6save/RestoreV2:12* 
_output_shapes
:
�	�*
T0*
validate_shape(*
_class
loc:@Variable_6*
use_locking(
�
save/Assign_13AssignVariable_6/Momentumsave/RestoreV2:13* 
_output_shapes
:
�	�*
T0*
validate_shape(*
_class
loc:@Variable_6*
use_locking(
�
save/Assign_14Assign
Variable_7save/RestoreV2:14*
_output_shapes	
:�*
T0*
validate_shape(*
_class
loc:@Variable_7*
use_locking(
�
save/Assign_15AssignVariable_7/Momentumsave/RestoreV2:15*
_output_shapes	
:�*
T0*
validate_shape(*
_class
loc:@Variable_7*
use_locking(
�
save/Assign_16Assign
Variable_8save/RestoreV2:16*
_output_shapes
:	�
*
T0*
validate_shape(*
_class
loc:@Variable_8*
use_locking(
�
save/Assign_17AssignVariable_8/Momentumsave/RestoreV2:17*
_output_shapes
:	�
*
T0*
validate_shape(*
_class
loc:@Variable_8*
use_locking(
�
save/Assign_18Assign
Variable_9save/RestoreV2:18*
_output_shapes
:
*
T0*
validate_shape(*
_class
loc:@Variable_9*
use_locking(
�
save/Assign_19AssignVariable_9/Momentumsave/RestoreV2:19*
_output_shapes
:
*
T0*
validate_shape(*
_class
loc:@Variable_9*
use_locking(
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"�
trainable_variables��
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	Const_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_3:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:08
A
Variable_9:0Variable_9/AssignVariable_9/read:02	Const_4:08"
train_op


MomentumOp"�
	variables��
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	Const_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_3:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:08
A
Variable_9:0Variable_9/AssignVariable_9/read:02	Const_4:08
p
Variable/Momentum:0Variable/Momentum/AssignVariable/Momentum/read:02%Variable/Momentum/Initializer/zeros:0
x
Variable_1/Momentum:0Variable_1/Momentum/AssignVariable_1/Momentum/read:02'Variable_1/Momentum/Initializer/zeros:0
x
Variable_2/Momentum:0Variable_2/Momentum/AssignVariable_2/Momentum/read:02'Variable_2/Momentum/Initializer/zeros:0
x
Variable_3/Momentum:0Variable_3/Momentum/AssignVariable_3/Momentum/read:02'Variable_3/Momentum/Initializer/zeros:0
x
Variable_4/Momentum:0Variable_4/Momentum/AssignVariable_4/Momentum/read:02'Variable_4/Momentum/Initializer/zeros:0
x
Variable_5/Momentum:0Variable_5/Momentum/AssignVariable_5/Momentum/read:02'Variable_5/Momentum/Initializer/zeros:0
x
Variable_6/Momentum:0Variable_6/Momentum/AssignVariable_6/Momentum/read:02'Variable_6/Momentum/Initializer/zeros:0
x
Variable_7/Momentum:0Variable_7/Momentum/AssignVariable_7/Momentum/read:02'Variable_7/Momentum/Initializer/zeros:0
x
Variable_8/Momentum:0Variable_8/Momentum/AssignVariable_8/Momentum/read:02'Variable_8/Momentum/Initializer/zeros:0
x
Variable_9/Momentum:0Variable_9/Momentum/AssignVariable_9/Momentum/read:02'Variable_9/Momentum/Initializer/zeros:0*�
serving_default�
5
Features)

Features:0���������1

Prediction#
Prediction:0���������
tensorflow/serving/predict