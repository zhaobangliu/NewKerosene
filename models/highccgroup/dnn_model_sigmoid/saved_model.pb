
«ü
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ù©
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
|
dense_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_110/kernel
u
$dense_110/kernel/Read/ReadVariableOpReadVariableOpdense_110/kernel*
_output_shapes

:@*
dtype0
t
dense_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_110/bias
m
"dense_110/bias/Read/ReadVariableOpReadVariableOpdense_110/bias*
_output_shapes
:@*
dtype0
|
dense_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_111/kernel
u
$dense_111/kernel/Read/ReadVariableOpReadVariableOpdense_111/kernel*
_output_shapes

:@@*
dtype0
t
dense_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_111/bias
m
"dense_111/bias/Read/ReadVariableOpReadVariableOpdense_111/bias*
_output_shapes
:@*
dtype0
|
dense_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_112/kernel
u
$dense_112/kernel/Read/ReadVariableOpReadVariableOpdense_112/kernel*
_output_shapes

:@*
dtype0
t
dense_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_112/bias
m
"dense_112/bias/Read/ReadVariableOpReadVariableOpdense_112/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_110/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_110/kernel/m

+Adam/dense_110/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_110/kernel/m*
_output_shapes

:@*
dtype0

Adam/dense_110/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_110/bias/m
{
)Adam/dense_110/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_110/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_111/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_111/kernel/m

+Adam/dense_111/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_111/kernel/m*
_output_shapes

:@@*
dtype0

Adam/dense_111/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_111/bias/m
{
)Adam/dense_111/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_111/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_112/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_112/kernel/m

+Adam/dense_112/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/m*
_output_shapes

:@*
dtype0

Adam/dense_112/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_112/bias/m
{
)Adam/dense_112/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/m*
_output_shapes
:*
dtype0

Adam/dense_110/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_110/kernel/v

+Adam/dense_110/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_110/kernel/v*
_output_shapes

:@*
dtype0

Adam/dense_110/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_110/bias/v
{
)Adam/dense_110/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_110/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_111/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_111/kernel/v

+Adam/dense_111/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_111/kernel/v*
_output_shapes

:@@*
dtype0

Adam/dense_111/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_111/bias/v
{
)Adam/dense_111/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_111/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_112/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_112/kernel/v

+Adam/dense_112/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/v*
_output_shapes

:@*
dtype0

Adam/dense_112/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_112/bias/v
{
)Adam/dense_112/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/v*
_output_shapes
:*
dtype0

ConstConst*
_output_shapes

:*
dtype0*Q
valueHBF"8seÍ>X¨e@/)À)¿R@óv BKM:@ëXh@¯·BÞÐ,AGwþA0ÊEz¦BûS­>Jø.?

Const_1Const*
_output_shapes

:*
dtype0*Q
valueHBF"8Ü /A¥$A¬sWA=¢Ô>­áADî@@ÊIAGèBnlC×*éJ.Cu>ñÂæ=

NoOpNoOp
¯/
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*è.
valueÞ.BÛ. BÔ.
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¾

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
_adapt_function*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
¦

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
°
/iter

0beta_1

1beta_2
	2decay
3learning_ratemNmOmP mQ'mR(mSvTvUvV vW'vX(vY*
C
0
1
2
3
4
5
 6
'7
(8*
.
0
1
2
 3
'4
(5*
* 
°
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

9serving_default* 
* 
* 
* 
* 
RL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
`Z
VARIABLE_VALUEdense_110/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_110/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEdense_111/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_111/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEdense_112/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_112/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 

Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*

0
1
2*
 
0
1
2
3*

I0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	Jtotal
	Kcount
L	variables
M	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

J0
K1*

L	variables*
}
VARIABLE_VALUEAdam/dense_110/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_110/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_111/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_111/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_112/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_112/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_110/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_110/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_111/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_111/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_112/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_112/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

&serving_default_normalization_23_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Å
StatefulPartitionedCallStatefulPartitionedCall&serving_default_normalization_23_inputConstConst_1dense_110/kerneldense_110/biasdense_111/kerneldense_111/biasdense_112/kerneldense_112/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_893634
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Û

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp$dense_110/kernel/Read/ReadVariableOp"dense_110/bias/Read/ReadVariableOp$dense_111/kernel/Read/ReadVariableOp"dense_111/bias/Read/ReadVariableOp$dense_112/kernel/Read/ReadVariableOp"dense_112/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_110/kernel/m/Read/ReadVariableOp)Adam/dense_110/bias/m/Read/ReadVariableOp+Adam/dense_111/kernel/m/Read/ReadVariableOp)Adam/dense_111/bias/m/Read/ReadVariableOp+Adam/dense_112/kernel/m/Read/ReadVariableOp)Adam/dense_112/bias/m/Read/ReadVariableOp+Adam/dense_110/kernel/v/Read/ReadVariableOp)Adam/dense_110/bias/v/Read/ReadVariableOp+Adam/dense_111/kernel/v/Read/ReadVariableOp)Adam/dense_111/bias/v/Read/ReadVariableOp+Adam/dense_112/kernel/v/Read/ReadVariableOp)Adam/dense_112/bias/v/Read/ReadVariableOpConst_2*)
Tin"
 2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_893802
¤
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountdense_110/kerneldense_110/biasdense_111/kerneldense_111/biasdense_112/kerneldense_112/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_1Adam/dense_110/kernel/mAdam/dense_110/bias/mAdam/dense_111/kernel/mAdam/dense_111/bias/mAdam/dense_112/kernel/mAdam/dense_112/bias/mAdam/dense_110/kernel/vAdam/dense_110/bias/vAdam/dense_111/kernel/vAdam/dense_111/bias/vAdam/dense_112/kernel/vAdam/dense_112/bias/v*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_893896à­


ö
E__inference_dense_111_layer_call_and_return_conditional_losses_893674

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ì

µ
.__inference_sequential_52_layer_call_fn_893330
normalization_23_input
unknown
	unknown_0
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCallnormalization_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_52_layer_call_and_return_conditional_losses_893311o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenormalization_23_input:$ 

_output_shapes

::$ 

_output_shapes

:
·
Ù
I__inference_sequential_52_layer_call_and_return_conditional_losses_893409

inputs
normalization_23_sub_y
normalization_23_sqrt_x"
dense_110_893393:@
dense_110_893395:@"
dense_111_893398:@@
dense_111_893400:@"
dense_112_893403:@
dense_112_893405:
identity¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCallm
normalization_23/subSubinputsnormalization_23_sub_y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
normalization_23/SqrtSqrtnormalization_23_sqrt_x*
T0*
_output_shapes

:_
normalization_23/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_23/MaximumMaximumnormalization_23/Sqrt:y:0#normalization_23/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_23/truedivRealDivnormalization_23/sub:z:0normalization_23/Maximum:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_110/StatefulPartitionedCallStatefulPartitionedCallnormalization_23/truediv:z:0dense_110_893393dense_110_893395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_893271
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_893398dense_111_893400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_893288
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_893403dense_112_893405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_893304y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:


ö
E__inference_dense_111_layer_call_and_return_conditional_losses_893288

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç
é
I__inference_sequential_52_layer_call_and_return_conditional_losses_893475
normalization_23_input
normalization_23_sub_y
normalization_23_sqrt_x"
dense_110_893459:@
dense_110_893461:@"
dense_111_893464:@@
dense_111_893466:@"
dense_112_893469:@
dense_112_893471:
identity¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCall}
normalization_23/subSubnormalization_23_inputnormalization_23_sub_y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
normalization_23/SqrtSqrtnormalization_23_sqrt_x*
T0*
_output_shapes

:_
normalization_23/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_23/MaximumMaximumnormalization_23/Sqrt:y:0#normalization_23/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_23/truedivRealDivnormalization_23/sub:z:0normalization_23/Maximum:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_110/StatefulPartitionedCallStatefulPartitionedCallnormalization_23/truediv:z:0dense_110_893459dense_110_893461*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_893271
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_893464dense_111_893466*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_893288
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_893469dense_112_893471*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_893304y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall:h d
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenormalization_23_input:$ 

_output_shapes

::$ 

_output_shapes

:
Ä

*__inference_dense_112_layer_call_fn_893683

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_893304o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
"
Ï
I__inference_sequential_52_layer_call_and_return_conditional_losses_893611

inputs
normalization_23_sub_y
normalization_23_sqrt_x:
(dense_110_matmul_readvariableop_resource:@7
)dense_110_biasadd_readvariableop_resource:@:
(dense_111_matmul_readvariableop_resource:@@7
)dense_111_biasadd_readvariableop_resource:@:
(dense_112_matmul_readvariableop_resource:@7
)dense_112_biasadd_readvariableop_resource:
identity¢ dense_110/BiasAdd/ReadVariableOp¢dense_110/MatMul/ReadVariableOp¢ dense_111/BiasAdd/ReadVariableOp¢dense_111/MatMul/ReadVariableOp¢ dense_112/BiasAdd/ReadVariableOp¢dense_112/MatMul/ReadVariableOpm
normalization_23/subSubinputsnormalization_23_sub_y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
normalization_23/SqrtSqrtnormalization_23_sqrt_x*
T0*
_output_shapes

:_
normalization_23/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_23/MaximumMaximumnormalization_23/Sqrt:y:0#normalization_23/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_23/truedivRealDivnormalization_23/sub:z:0normalization_23/Maximum:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_110/MatMulMatMulnormalization_23/truediv:z:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
dense_110/SigmoidSigmoiddense_110/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
dense_111/MatMulMatMuldense_110/Sigmoid:y:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
dense_111/SigmoidSigmoiddense_111/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_112/MatMulMatMuldense_111/Sigmoid:y:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_112/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
¹'
Ò
__inference_adapt_step_782023
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢IteratorGetNext¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢add/ReadVariableOp±
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_types
2h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 a
ShapeShapeIteratorGetNext:components:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: K
CastCastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_1Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: I
truedivRealDivCast:y:0
Cast_1:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
"
Ï
I__inference_sequential_52_layer_call_and_return_conditional_losses_893580

inputs
normalization_23_sub_y
normalization_23_sqrt_x:
(dense_110_matmul_readvariableop_resource:@7
)dense_110_biasadd_readvariableop_resource:@:
(dense_111_matmul_readvariableop_resource:@@7
)dense_111_biasadd_readvariableop_resource:@:
(dense_112_matmul_readvariableop_resource:@7
)dense_112_biasadd_readvariableop_resource:
identity¢ dense_110/BiasAdd/ReadVariableOp¢dense_110/MatMul/ReadVariableOp¢ dense_111/BiasAdd/ReadVariableOp¢dense_111/MatMul/ReadVariableOp¢ dense_112/BiasAdd/ReadVariableOp¢dense_112/MatMul/ReadVariableOpm
normalization_23/subSubinputsnormalization_23_sub_y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
normalization_23/SqrtSqrtnormalization_23_sqrt_x*
T0*
_output_shapes

:_
normalization_23/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_23/MaximumMaximumnormalization_23/Sqrt:y:0#normalization_23/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_23/truedivRealDivnormalization_23/sub:z:0normalization_23/Maximum:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_110/MatMulMatMulnormalization_23/truediv:z:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
dense_110/SigmoidSigmoiddense_110/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
dense_111/MatMulMatMuldense_110/Sigmoid:y:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
dense_111/SigmoidSigmoiddense_111/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_112/MatMulMatMuldense_111/Sigmoid:y:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_112/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:


ö
E__inference_dense_110_layer_call_and_return_conditional_losses_893271

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
é
I__inference_sequential_52_layer_call_and_return_conditional_losses_893501
normalization_23_input
normalization_23_sub_y
normalization_23_sqrt_x"
dense_110_893485:@
dense_110_893487:@"
dense_111_893490:@@
dense_111_893492:@"
dense_112_893495:@
dense_112_893497:
identity¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCall}
normalization_23/subSubnormalization_23_inputnormalization_23_sub_y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
normalization_23/SqrtSqrtnormalization_23_sqrt_x*
T0*
_output_shapes

:_
normalization_23/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_23/MaximumMaximumnormalization_23/Sqrt:y:0#normalization_23/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_23/truedivRealDivnormalization_23/sub:z:0normalization_23/Maximum:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_110/StatefulPartitionedCallStatefulPartitionedCallnormalization_23/truediv:z:0dense_110_893485dense_110_893487*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_893271
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_893490dense_111_893492*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_893288
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_893495dense_112_893497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_893304y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall:h d
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenormalization_23_input:$ 

_output_shapes

::$ 

_output_shapes

:
¸=
Ä
__inference__traced_save_893802
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	/
+savev2_dense_110_kernel_read_readvariableop-
)savev2_dense_110_bias_read_readvariableop/
+savev2_dense_111_kernel_read_readvariableop-
)savev2_dense_111_bias_read_readvariableop/
+savev2_dense_112_kernel_read_readvariableop-
)savev2_dense_112_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_110_kernel_m_read_readvariableop4
0savev2_adam_dense_110_bias_m_read_readvariableop6
2savev2_adam_dense_111_kernel_m_read_readvariableop4
0savev2_adam_dense_111_bias_m_read_readvariableop6
2savev2_adam_dense_112_kernel_m_read_readvariableop4
0savev2_adam_dense_112_bias_m_read_readvariableop6
2savev2_adam_dense_110_kernel_v_read_readvariableop4
0savev2_adam_dense_110_bias_v_read_readvariableop6
2savev2_adam_dense_111_kernel_v_read_readvariableop4
0savev2_adam_dense_111_bias_v_read_readvariableop6
2savev2_adam_dense_112_kernel_v_read_readvariableop4
0savev2_adam_dense_112_bias_v_read_readvariableop
savev2_const_2

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: °
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ù
valueÏBÌB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH§
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ´
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop+savev2_dense_110_kernel_read_readvariableop)savev2_dense_110_bias_read_readvariableop+savev2_dense_111_kernel_read_readvariableop)savev2_dense_111_bias_read_readvariableop+savev2_dense_112_kernel_read_readvariableop)savev2_dense_112_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_110_kernel_m_read_readvariableop0savev2_adam_dense_110_bias_m_read_readvariableop2savev2_adam_dense_111_kernel_m_read_readvariableop0savev2_adam_dense_111_bias_m_read_readvariableop2savev2_adam_dense_112_kernel_m_read_readvariableop0savev2_adam_dense_112_bias_m_read_readvariableop2savev2_adam_dense_110_kernel_v_read_readvariableop0savev2_adam_dense_110_bias_v_read_readvariableop2savev2_adam_dense_111_kernel_v_read_readvariableop0savev2_adam_dense_111_bias_v_read_readvariableop2savev2_adam_dense_112_kernel_v_read_readvariableop0savev2_adam_dense_112_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *+
dtypes!
2		
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Å
_input_shapes³
°: ::: :@:@:@@:@:@:: : : : : : : :@:@:@@:@:@::@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 


¥
.__inference_sequential_52_layer_call_fn_893549

inputs
unknown
	unknown_0
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_52_layer_call_and_return_conditional_losses_893409o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:


¥
.__inference_sequential_52_layer_call_fn_893528

inputs
unknown
	unknown_0
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_52_layer_call_and_return_conditional_losses_893311o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
Ì

µ
.__inference_sequential_52_layer_call_fn_893449
normalization_23_input
unknown
	unknown_0
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCallnormalization_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_52_layer_call_and_return_conditional_losses_893409o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenormalization_23_input:$ 

_output_shapes

::$ 

_output_shapes

:
·
Ù
I__inference_sequential_52_layer_call_and_return_conditional_losses_893311

inputs
normalization_23_sub_y
normalization_23_sqrt_x"
dense_110_893272:@
dense_110_893274:@"
dense_111_893289:@@
dense_111_893291:@"
dense_112_893305:@
dense_112_893307:
identity¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCallm
normalization_23/subSubinputsnormalization_23_sub_y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
normalization_23/SqrtSqrtnormalization_23_sqrt_x*
T0*
_output_shapes

:_
normalization_23/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_23/MaximumMaximumnormalization_23/Sqrt:y:0#normalization_23/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_23/truedivRealDivnormalization_23/sub:z:0normalization_23/Maximum:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_110/StatefulPartitionedCallStatefulPartitionedCallnormalization_23/truediv:z:0dense_110_893272dense_110_893274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_893271
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_893289dense_111_893291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_893288
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_893305dense_112_893307*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_893304y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
È	
ö
E__inference_dense_112_layer_call_and_return_conditional_losses_893304

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ºp
Ç
"__inference__traced_restore_893896
file_prefix#
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 5
#assignvariableop_3_dense_110_kernel:@/
!assignvariableop_4_dense_110_bias:@5
#assignvariableop_5_dense_111_kernel:@@/
!assignvariableop_6_dense_111_bias:@5
#assignvariableop_7_dense_112_kernel:@/
!assignvariableop_8_dense_112_bias:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: #
assignvariableop_14_total: %
assignvariableop_15_count_1: =
+assignvariableop_16_adam_dense_110_kernel_m:@7
)assignvariableop_17_adam_dense_110_bias_m:@=
+assignvariableop_18_adam_dense_111_kernel_m:@@7
)assignvariableop_19_adam_dense_111_bias_m:@=
+assignvariableop_20_adam_dense_112_kernel_m:@7
)assignvariableop_21_adam_dense_112_bias_m:=
+assignvariableop_22_adam_dense_110_kernel_v:@7
)assignvariableop_23_adam_dense_110_bias_v:@=
+assignvariableop_24_adam_dense_111_kernel_v:@@7
)assignvariableop_25_adam_dense_111_bias_v:@=
+assignvariableop_26_adam_dense_112_kernel_v:@7
)assignvariableop_27_adam_dense_112_bias_v:
identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9³
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ù
valueÏBÌB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHª
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B °
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp#assignvariableop_3_dense_110_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_110_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp#assignvariableop_5_dense_111_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_111_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp#assignvariableop_7_dense_112_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_112_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_110_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_110_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_111_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_111_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_dense_112_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_112_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dense_110_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_110_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_dense_111_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_111_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_dense_112_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_112_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ·
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: ¤
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


ö
E__inference_dense_110_layer_call_and_return_conditional_losses_893654

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È	
ö
E__inference_dense_112_layer_call_and_return_conditional_losses_893693

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ä

*__inference_dense_111_layer_call_fn_893663

inputs
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_893288o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


«
$__inference_signature_wrapper_893634
normalization_23_input
unknown
	unknown_0
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallnormalization_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_893246o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenormalization_23_input:$ 

_output_shapes

::$ 

_output_shapes

:
Ä

*__inference_dense_110_layer_call_fn_893643

inputs
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_893271o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß*
û
!__inference__wrapped_model_893246
normalization_23_input(
$sequential_52_normalization_23_sub_y)
%sequential_52_normalization_23_sqrt_xH
6sequential_52_dense_110_matmul_readvariableop_resource:@E
7sequential_52_dense_110_biasadd_readvariableop_resource:@H
6sequential_52_dense_111_matmul_readvariableop_resource:@@E
7sequential_52_dense_111_biasadd_readvariableop_resource:@H
6sequential_52_dense_112_matmul_readvariableop_resource:@E
7sequential_52_dense_112_biasadd_readvariableop_resource:
identity¢.sequential_52/dense_110/BiasAdd/ReadVariableOp¢-sequential_52/dense_110/MatMul/ReadVariableOp¢.sequential_52/dense_111/BiasAdd/ReadVariableOp¢-sequential_52/dense_111/MatMul/ReadVariableOp¢.sequential_52/dense_112/BiasAdd/ReadVariableOp¢-sequential_52/dense_112/MatMul/ReadVariableOp
"sequential_52/normalization_23/subSubnormalization_23_input$sequential_52_normalization_23_sub_y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
#sequential_52/normalization_23/SqrtSqrt%sequential_52_normalization_23_sqrt_x*
T0*
_output_shapes

:m
(sequential_52/normalization_23/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3¶
&sequential_52/normalization_23/MaximumMaximum'sequential_52/normalization_23/Sqrt:y:01sequential_52/normalization_23/Maximum/y:output:0*
T0*
_output_shapes

:·
&sequential_52/normalization_23/truedivRealDiv&sequential_52/normalization_23/sub:z:0*sequential_52/normalization_23/Maximum:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
-sequential_52/dense_110/MatMul/ReadVariableOpReadVariableOp6sequential_52_dense_110_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0½
sequential_52/dense_110/MatMulMatMul*sequential_52/normalization_23/truediv:z:05sequential_52/dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.sequential_52/dense_110/BiasAdd/ReadVariableOpReadVariableOp7sequential_52_dense_110_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¾
sequential_52/dense_110/BiasAddBiasAdd(sequential_52/dense_110/MatMul:product:06sequential_52/dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_52/dense_110/SigmoidSigmoid(sequential_52/dense_110/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
-sequential_52/dense_111/MatMul/ReadVariableOpReadVariableOp6sequential_52_dense_111_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0¶
sequential_52/dense_111/MatMulMatMul#sequential_52/dense_110/Sigmoid:y:05sequential_52/dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.sequential_52/dense_111/BiasAdd/ReadVariableOpReadVariableOp7sequential_52_dense_111_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¾
sequential_52/dense_111/BiasAddBiasAdd(sequential_52/dense_111/MatMul:product:06sequential_52/dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_52/dense_111/SigmoidSigmoid(sequential_52/dense_111/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
-sequential_52/dense_112/MatMul/ReadVariableOpReadVariableOp6sequential_52_dense_112_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0¶
sequential_52/dense_112/MatMulMatMul#sequential_52/dense_111/Sigmoid:y:05sequential_52/dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.sequential_52/dense_112/BiasAdd/ReadVariableOpReadVariableOp7sequential_52_dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_52/dense_112/BiasAddBiasAdd(sequential_52/dense_112/MatMul:product:06sequential_52/dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(sequential_52/dense_112/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
NoOpNoOp/^sequential_52/dense_110/BiasAdd/ReadVariableOp.^sequential_52/dense_110/MatMul/ReadVariableOp/^sequential_52/dense_111/BiasAdd/ReadVariableOp.^sequential_52/dense_111/MatMul/ReadVariableOp/^sequential_52/dense_112/BiasAdd/ReadVariableOp.^sequential_52/dense_112/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::: : : : : : 2`
.sequential_52/dense_110/BiasAdd/ReadVariableOp.sequential_52/dense_110/BiasAdd/ReadVariableOp2^
-sequential_52/dense_110/MatMul/ReadVariableOp-sequential_52/dense_110/MatMul/ReadVariableOp2`
.sequential_52/dense_111/BiasAdd/ReadVariableOp.sequential_52/dense_111/BiasAdd/ReadVariableOp2^
-sequential_52/dense_111/MatMul/ReadVariableOp-sequential_52/dense_111/MatMul/ReadVariableOp2`
.sequential_52/dense_112/BiasAdd/ReadVariableOp.sequential_52/dense_112/BiasAdd/ReadVariableOp2^
-sequential_52/dense_112/MatMul/ReadVariableOp-sequential_52/dense_112/MatMul/ReadVariableOp:h d
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0
_user_specified_namenormalization_23_input:$ 

_output_shapes

::$ 

_output_shapes

:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ó
serving_default¿
b
normalization_23_inputH
(serving_default_normalization_23_input:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ=
	dense_1120
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ãU

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ó

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
_adapt_function"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
»

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
¿
/iter

0beta_1

1beta_2
	2decay
3learning_ratemNmOmP mQ'mR(mSvTvUvV vW'vX(vY"
	optimizer
_
0
1
2
3
4
5
 6
'7
(8"
trackable_list_wrapper
J
0
1
2
 3
'4
(5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
.__inference_sequential_52_layer_call_fn_893330
.__inference_sequential_52_layer_call_fn_893528
.__inference_sequential_52_layer_call_fn_893549
.__inference_sequential_52_layer_call_fn_893449À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_52_layer_call_and_return_conditional_losses_893580
I__inference_sequential_52_layer_call_and_return_conditional_losses_893611
I__inference_sequential_52_layer_call_and_return_conditional_losses_893475
I__inference_sequential_52_layer_call_and_return_conditional_losses_893501À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÛBØ
!__inference__wrapped_model_893246normalization_23_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
9serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
¿2¼
__inference_adapt_step_782023
²
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": @2dense_110/kernel
:@2dense_110/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_110_layer_call_fn_893643¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_110_layer_call_and_return_conditional_losses_893654¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": @@2dense_111/kernel
:@2dense_111/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_111_layer_call_fn_893663¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_111_layer_call_and_return_conditional_losses_893674¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": @2dense_112/kernel
:2dense_112/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_112_layer_call_fn_893683¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_112_layer_call_and_return_conditional_losses_893693¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
I0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
$__inference_signature_wrapper_893634normalization_23_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Jtotal
	Kcount
L	variables
M	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
J0
K1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
':%@2Adam/dense_110/kernel/m
!:@2Adam/dense_110/bias/m
':%@@2Adam/dense_111/kernel/m
!:@2Adam/dense_111/bias/m
':%@2Adam/dense_112/kernel/m
!:2Adam/dense_112/bias/m
':%@2Adam/dense_110/kernel/v
!:@2Adam/dense_110/bias/v
':%@@2Adam/dense_111/kernel/v
!:@2Adam/dense_111/bias/v
':%@2Adam/dense_112/kernel/v
!:2Adam/dense_112/bias/v
	J
Const
J	
Const_1±
!__inference__wrapped_model_893246Z[ '(H¢E
>¢;
96
normalization_23_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_112# 
	dense_112ÿÿÿÿÿÿÿÿÿo
__inference_adapt_step_782023NC¢@
9¢6
41¢
ÿÿÿÿÿÿÿÿÿIteratorSpec 
ª "
 ¥
E__inference_dense_110_layer_call_and_return_conditional_losses_893654\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dense_110_layer_call_fn_893643O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dense_111_layer_call_and_return_conditional_losses_893674\ /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dense_111_layer_call_fn_893663O /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dense_112_layer_call_and_return_conditional_losses_893693\'(/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_112_layer_call_fn_893683O'(/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÑ
I__inference_sequential_52_layer_call_and_return_conditional_losses_893475Z[ '(P¢M
F¢C
96
normalization_23_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ñ
I__inference_sequential_52_layer_call_and_return_conditional_losses_893501Z[ '(P¢M
F¢C
96
normalization_23_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
I__inference_sequential_52_layer_call_and_return_conditional_losses_893580sZ[ '(@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
I__inference_sequential_52_layer_call_and_return_conditional_losses_893611sZ[ '(@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¨
.__inference_sequential_52_layer_call_fn_893330vZ[ '(P¢M
F¢C
96
normalization_23_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¨
.__inference_sequential_52_layer_call_fn_893449vZ[ '(P¢M
F¢C
96
normalization_23_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_52_layer_call_fn_893528fZ[ '(@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_52_layer_call_fn_893549fZ[ '(@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÎ
$__inference_signature_wrapper_893634¥Z[ '(b¢_
¢ 
XªU
S
normalization_23_input96
normalization_23_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_112# 
	dense_112ÿÿÿÿÿÿÿÿÿ