??;
?.?.
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??9
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?N?*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@L*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@L*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:L*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:L*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
?
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_namegru/gru_cell/kernel
}
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel* 
_output_shapes
:
??*
dtype0
?
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*.
shared_namegru/gru_cell/recurrent_kernel
?
1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel*
_output_shapes
:	@?*
dtype0

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	?*
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name135*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
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
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@L*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@L*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:L*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:L*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameAdam/gru/gru_cell/kernel/m
?
.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/m* 
_output_shapes
:
??*
dtype0
?
$Adam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/m
?
8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdam/gru/gru_cell/bias/m
?
,Adam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/m*
_output_shapes
:	?*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@L*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@L*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:L*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:L*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameAdam/gru/gru_cell/kernel/v
?
.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/v* 
_output_shapes
:
??*
dtype0
?
$Adam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/v
?
8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdam/gru/gru_cell/bias/v
?
,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/v*
_output_shapes
:	?*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?4*
dtype0*??
value??B???4BbisaBsayaBsangatBenggakBdiBdanaBsudahBsaldoBbaikBmasukBtransferBadaBaplikasiBuangB	transaksiBbagusBlamaBbantuBkasihBtidakB	bagaimanaBsamaBbaruBmohonBovoBbuatBmalahBmauBiniBgagalBgunaBselaluBbintangBupdateBkirimBbukaBduluByangBtopBsusahBupBpulsaBcobaBupgradeBdongBhariBsihBjelasBbankBktpBpakaiBemailBmakinBkaliBpremiumBmudahBlebihBkecewaBbayarBbelumBkenapaByaBakunBtungguB
verifikasiBtetapBbenarBloginBsekaliBisiBsekarangBhpBterimaBsuruhBnomorBmasalahBpasBjanganBcepatBjadiB2BnyaBsistemBbeliBnoBkeBprosesBadminBpinBcsBprakerjaBapaBdehBminBseringBmintaBkeluarBhasilBtambahBkurangBkakBpadahalBkodeB3BpihakBdaftarBgantiBtolongBtapiBsendiriBsemuaBlahB1BpotongBsalahBresponBkanBhubungBlagiBkokBdataBkataBbangetBlakuBtfBmogaBdownloadBulangBfotoBrekeningBmaafBlotBkalauBhilangBorangBnihBribetBkaloBjamBlayanBapkBjugaBharusBbikinBmasihBterimakasihBdanBsukaBjawabB5BbeginiBuntukBsajaBcaraBmanaBtarikBtibaBsibukBlancarBlewatBsedangBtiapBlangsungBbiarBokeBotpBkemarinBerrorBsolusiBpernahBamanBsampaiBmuluBsulitBkembaliBbiayaBmasaBerorBtulisBbutuhBtauBkayakBmunculBtanggalBmantapBlaluBsoalBsaatBsegeraBkamuBappBwaktuBdariBfiturBhapusBgangguBakhirBpunyaBlainBituBparahBviaBmemangBkartuBhabisBbukanBnomerBbanyakBkarenaBkuBgueBterusBsambungBduitBbacaBkendalaBtanyaBterlaluBawalBlaporBbeberapaB4BpremierBjelekBcukupBkeluhBbiasaBtopupBcustomerBdapatBtingkatBtadiBbilangBburukBbalasB000BnamaBdepanBpendingBberiBbalikBsesuaiBmingguBkembangBchatBlumayanBlihatBtelahBsuksesBinstalBblokirBberatBloadingBjaringBehBberapaBselesaiBkenaBtokenBtanggapBmenuBlambatBatasBwalletBsatuBsaranBkadangBtipuBmendingBpayahBpaketBambilBsayangBhaloBtranferBhanyaBdenganBcairBserviceBsepertiBleletBtemanBmanfaatBdalamBanehBnyamanBperluBdompetBversiBtakBkerjaBcekBaktifBbulanBwajahBstatusBsmsBsesalBpuasBlupaBlhoBubahBcumanBbekuBnyataBrugiBsandiBlanjutBkalianBdoangBteleponBtujuBsiniBlistrikBmalamBgameBdigitalBbosBbesarBterangBribuBpertamaBbelanjaBbegituBalasBkagakBalfamartBkiraB2021BtahunBrasaBpercayaBkomplainBgampangBatmBkesiniBkapanBakanBpindahBnikBlogBlangganBinsentifBbuktiB	uninstallBsedikitBriwayatBmuasBlimitBkitaBvoucherBtelponBkakakBbagaiBusahBuninstalBaplBinginBenakBbatasBpokokBpenuhBmungkinBklikBikutBmasuk2BinstallBakuBwhatsappBjauhBgratisBgilirB	developerBbsiBbriBbagiBagustusBtindakBsinyalB
konfirmasiBbedaBalhamdulillahB10BtanggungBsebutBscanBrekBcodeBbingungBbelahBmaksudBuntungBmalasBlengkapBkerenBjualBtampilBnominalBcallBaduBtuhBsumpahBplayBhatiBharapBbisnisBapknyaBurusBtunaiBpadaBjutaBcenterBulasBtigaBsimpanBpromoBorderBmulaiBatauBrpBpaylaterBlinkBinfoBhargaBhampirBcareB
trimakasihBtinggalBtanganBsenangBlogoBketikaB24BtahanBsanaBmenitBmainBcostumerBasliBantriBtagihBpalingBpagiBnormalBngisiBcariB1x24B100B
verivikasiBsegalaBsediaB	playstoreBpinjamBonlineBmahalB	indonesiaBbalikinBampunB20BserverBsampahBpunBdukungBbawahBantarBaksesB27BturunBtariBsituBratingBpenginBpastiBkuotaBidBgoogleBewalletBcapekBasihBtlongBservisBsecurityBpentingBpemberitahuanB
loadingnyaBkeselBentahBdiupdateBalihB50B2xButamaBusahaBshopeeBpraktisBpilihBpesanBniatBlayarBkaitBgrabBgaraBbahkanBalamiB500BsyaratBrefundBloBjikaBiyaBinternetBfullBbisa2BbakalBasaBsiangBqrisBnyangkutBkualitasBkomentarBhaiBbugBblurBbestBaturBajuBtheBtelpBsejakBmurahBmakanBmajuBluarBkameraB	indomaretBhalBbetulBtengahBsemenjakBrusakBprimerBnantiBjalanB	investasiBinvestBertiBemosiBdetikBburamBbonusBblokBbankingB30B0BwalaupunBuserBrepotBpasswordB
notifikasiBmahBindakBgmailBberkali2BagarBtutupBtakutB	septemberBpotoBperhatiBnotifBmilikBmasakBkonsumenBhangusBgopayBgoodBduaBbenerinBbaharuBanBagakBtunjukBtempatBsungguhBngelagBmaupunBkecilBhambatBdikitBcashB6BurgentBuploadBtimBtahuBselfieBpointBnasabahBminimalB
masyarakatBkontakBkasihanBjumlahBiklanBdiresponBcahayaBbolehBanakB8B1000BwifiB	tokopediaBstoreBsimBsetiaBsekianBrumahBpribadiBpasuBpahamBoutBmuatBlimaBkoneksiBingatBcloseBcetakBbilaBbijakBbatuBbatalBautoB7BunistalBtolakBthanksBtetapiBtabungBsystemBsyariahBstrukBsimpleBringanB	responnyaBraguBprofesionalBplnBpikirBpercumaBpayBovonyaBlodingBkomplenBkesalBkemudianBjujurBhelpBdokumenBcocokBcashbackBbuangBbelitBasalBandroidBalfaBalamBajarBahB15BwoyBujungBtlpnBtelfonBstabilBsoreBslowBqrBpusatBotomatisBmisalBmaksimalBmacamBkomenB	identitasBhentiBentarBdebitBberandaBberBbawaBbangBaduhBadminnyaB00BtrfBteraBteleBtautBsengajaBpuluhBpaksaBopsiBnaikBmulaBmatiBlazadaBketikBkayaBkamiBjayaBjarangBhadehBgaragaraBdriverB	diupgradeBdiriBburuBbotB	bantuanyaB3xB21B1500B11BwaletBturuninB	terkadangBsisaB	sementaraBselamatBpencetBngeBnahBmobileBmerchantBmeluluBmbakBmakanyaBlagBkenpaBkelarB	informasiBikanBektpBeditBdearBbolakBbohongBayoB9BvirtualBupgredBtololBterB	shopeepayBrubahBnotBnilaiBnaikinBmestiBmeresponBmasBmandiriBliveBhistoryBhinggaBgilaBewaletBcumaBbodohB5kB12BwajibBtransperBtokoBsupayaBstuckBsimpelBsilaBsabarBputihB	perangkatBpandemiBpakBmetodeBmeskiBmantulBmaluBmailBkacauBjasaBjadwalB	handphoneBhalamanBhakBdiskonBcomplainBbyBbniBberesBbarusanBarahBappsBturutBtepatBtentuBsempurnaBsempatBselfiBramBphpBnelponBlanjurBlancar2BkhususBkepadaBkenalBkeluargaBkapaiBkalahBjuliBjenisBjengkelBjanjiBistriBhubunginBheranBduhBdonlodBdiamondBcuriBclaimBcimbB	bukalapakBbebasBbarcodeBapakahBwaduhBtrmkshBtelatBtandaBsokBsiapaBpusingBprogramBoperatorBmuterBmudaBlinkajaBindomartBigBhormatBhidupBdmBdepositBbobrokBbiruBbenahBbelakangBauBapalagiBanjirBakhir2BadalahB24jamB18ByouBwoiBwahBverifBvalidBupgrateBtrasferBtksBteamBsiapBsemangatBsaingBresponsBrekomendasiBpukulBpolisiBplsBpasangBmikirBmerekaB
mengunakanBmbankingBmakaBmaintenanceBlogoutBloginnyaBkunjungBkorbanBkasirBjajanBhitungBganBgambarBfungsiBfreeB	fasilitasBdigitBcontohBbesokBbangkrutBbandingBbadBamanahBadmB50rbB3hariB300B200B19B08ByakinBtundaBtombolBtokpedBtlngBthankBsignalBsebabB	sambunginBrupiahBreviewB	responsifB	reksadanaB
registrasiBratusBputusBproblemBposisiBpleaseBperintahBperformaBpaswordBparaBmhonBmhnBlangkahBkondisiBkentangBkantorB
kadaluarsaBjumatBjagaBibuBhomeBhancurBgedeBgantungBgabungBfeeBfastBdiaBdaruratBcerahBbecusBbalesanBartiBaplkasiBapabilaBangkaBaliasBalamatB60B10rbB10kByukB	updatenyaBtroubleBtokBtinggiBtanpaBtahiBsoryB	servernyaBserbaBseluruhBsabtuBrobotBpoinBplisBpermisiBpengunaBpanjangBnyuruhBnonBnihilBniagaBngapaBngambilBnasibBmutasiBmukaBmlBmitraBlemahBlayakB	kerjasamaBkawanBkasusBkalaBkagetB	instagramBhutangBhapeBhackBgunainBforceBerorrBemasBdramaBdonloadBdengarBcardBbroBbobolBbebanBbangkaiBbahayaBampasBalhasilBakibatBakalBairBaccB3x24B2500B25B23B16B150B13B09BwhyBvoucerBvertifikasiB
upgradenyaBupgradBupdetBtvBtrussBtlponBtetanggaBsialBsertaBsegituBsegiBsalamBrestartBreportBprofilBponselBperiksaBpdamBoppoBoperBnyesalBnomernyaBnipuBnilaBniceBngeriBngeblurBndkBmintakBmentokBmentalB	mengganguBmengapaBmengBmemoriBmemberBmaxBmarketBmacetBlucuBlolBlepasBkuduBkrimBkonterBkontenBkolomBkhawatirBkgkBkeburuBjariBisBhematBgoBgamesBfbBefektifBeBdsuruhBdiinstalBdetailBdagetBcanggihBcancelBbusukBbegoBbarangBappnyaB	aplikasihBanggapBandalBaman2BallBagaB25rbB20rbB10xBzonkBythBweB
vouchernyaBumurBtwitterBtuaBtrxBtimbulBtimbangBtiketBtidkB
terimakasiBtentangB	telkomselBtahapBtaBsuperBstepBsngatBsnackBsipBsetanBseribetBsepenuhBsepBselulerBsekolahBsedotBsedihBsebalBsayahBsaudaraBsakitBsagatBrupaBrecommendedBrameBpulihBpromonyaBpremBplatformBperBpaymentBpajakBovvoBoviBomongBokeeBngulangBnabungB
minimarketBminatBmengupgradeBmartBlikeBlemparBlanggarBkotakBkoinBkenapBkapokBkahBitemB	instruksiBimailBhiBhebatB	gimanasihBgcBffBfavoritBduniaBdowloadBdonwloadBdonlotB
didownloadB	dibenerinBdeteksiBdarBcsnyaBcovidBcantumBcamatBbtwBbntuanBblankBbisahB	berulang2BbapakBassalamuBaplksiBaflikasiBadminyaB5rbB500rbB29B22B20kB1x24jamB1jtB14B100rbBzamanByoutubeBwilayahBwargaBvocerB
veripikasiBvaBundangBtukangBtrnsferB	trimaksihBtotalBtontonBtlfBtitikBtinjauBtikBtidurBthxBtehBsyukurBsuratBstarBssBsmoothBsidikBsiaBshB
servicenyaBseriusBseprtiBselakuBseBscurityBsanganBrumitBribetnyaBrewardBresponyaBrefreshBrealBrbuBrateBrakyatBpulangBprosedurBprodukBprintBppnBpindaiBphotoBpecatBpadahBotpnyaBoperasiBohBnoteBnongolB
ngegantungBnegatifBnegaraBmutuBmuncul2BmuakBmuBmodalBmnculBminusBmesinBmanualBmantabBmalaysiaBlolosBlandingBktpnyaBkreditBkoutaBkomplinBklarifikasiBklaimBkirim2BkesBkeceBkaburBjoinBjaminBintensifBimelBheheBgojekBgelapBganguanBgandaBfiturnyaBfailedBegkBdukcapilB	dibalikinBdibalesBdiamBdbukaBdatangBdaptarBdagangBdadakBcustumerBcopotBcodashopBcintaBcheckBcerdasBcaseBcameraBbuang2BbiadabBbersihBberitaBbatalinBbalesnyaBbagimanaBbackBbabiBasikBanjingBandaBallahBalfamidiBalaikumBajgBahirBaccountB5jtB2hariB26B25kB1xB100kB07B03BwowBwoiiBwkwkwkBwasBwarungBwajarBvideoBverivikasinyaBupgredeBupgreadB	unlimitedBunisntalBunduhBunBulang2B	ujung2nyaBucapBtumbenBtranperBtipBtesBtemuBtempoBtelitiBtekanBtBsyaaBsueBsteamBstampBstackBspekBsmuanyaBskipBseruBsemalemBsehatB
screenshotBsanggupBsanagatBrewardsBresetBrencanaBrekanBrefoundB
recomendedB	ratingnyaBputarB	prioritasBpraBppkmBpergiBpegangBpalikasiBotakBoptimalBopoBoknumBofflineBobatBnyuriBnyhBnotifnyaBnmorBngeluhBngelegBngelaporBngebugBngabisinBngabBnextBneoBnegeriBnangBnamunBmuter2BmustiBmodeBmntapBmiuiBmiskinBmiBmerekB
mengupdateBmendownloadBmemberitahuBmaximalBmataBmarahBmaksaBlurahBlohBlogisB	lodingnyaBliteBlilikBletakBlemottttBlatihBlampirBlambanBlamaaBlaiBkycBkritikBkosongBkoreksiBkmnaBkmbliBklienBkiniBkgaBkerjasamanyaBkepakeBkenapahBkemarin2Bkeluar2BkelasBkashBkampungBkalimatBkalangBkabarBjmBjawaBjatuhBjahatBiraBinvesBintiBinternalBinputBhuhBhpnyaBhmmmmBhistoriBhindarBhendakBhelloBheheheBharamBhadiahBgradeBgimBgamasukBgahBformulirBformBforB	finansialBfinanceBfileBetikBendapBempatBdulu2BdownlodBditindaklanjutiBdirefundBdimnaBdihpBdeviceBdevBdepaBdeleteBdateBdasarBdaftarinBdaerahBcostemerBcopyBcicilBcashbacknyaBcasbackBcapaiBcacatBbutBburikBbrowserBbrimoBbosanBblockBbisBbinomoBbinggungBbicaraBbetahBberkatB	berbelit2BbanykBbantuinBbanBasuBassalamualaikumBapliksiBapdetB	aktivitasBaktivasiB	aktifitasB	aksesorisBaamiinB696B600B5x24B5xB50ribuB50kB4gB3bintangB2x24B2gbB28B2020B2019B1jutaB1hariB100xB01ByutubByakaliBwkwkBwatBwarnaBvivoBvidioBverBuwangBusulBusaiBupnyaBupgrdeBupgrapeBupgrageBupdteBupaBumumBulahBukurBuinstalBugradeBtutorBtuhanBtrmBtrdaftarBtransfrB
tranksaksiBtranfersB	tranferanBtqBtoupBtolingBtlfonBtindaklanjutiBtimeBtiktokBtidaBterussssB	terupdateBterorBtdaBtbtbBtbBtawarBtaruhBtarifB	tanggepinBtanggaBtangapBtampaBsumberBsuatuBsuaraBstopBsruhBspyaBsosmedBsorryBsisiBsinkronBsigapBsiBsetatusBsetBsesiBserasaBseptBsekliBsekitarB	sederhanaBsebentarBsebelBsdangkanBscreenBscamBsangaBsamsungBsalutBsahabatBsadarBrisihBrisetBresolusiBresiBreloadBreksaBrekomendBrekningBredmiBrecehB	recaptchaBrantingBrangBrambutBramahBrahasiaBradaBpudarBpublikBptB
protectionBpromosiBprogresBprofileBproBpremiunBpremiereBpotonyaBpollBpolBpiturBpisBpintarBpinjolBpinjemBpermasalahanyaBpenyalahgunaanBpelitBpeliharaBpegawaiBpedahalB	paylatterBpaylaternyaBpasporBparkirBparahhhBpantulBpantesanBpantasBpalsuBpadhalBoverallBoverBojolBojkBoiBoffBnyantolB	nunggunyaBnumberBnorekBnonaktifBnolBnikahBniiiB	ngumpulinB	ngerugiinB	ngecewainBnaroBnakBmntpBmisiBminnnBminjemBminimumBminiBmerahB
menginstalBmemoryBmeBmantafB
managementBmanBmampuBmalangBmaklumB	maintanceB	mahasiswaBlusaBluncurBluasBlowBlolaBlicikBlemottBlayangBlaporinBlamaaaBlalotBkuatBksiBkotaBkostumerB	konsistenBkgBkesanaBkencangBkemariBkeliruBkedokBkecawaBkasBkaryawanBkaranaBkalaupunBjunaidaBjosssBjijikBjdinyaBjamanBjadulBisoBinvestorB	investnyaBintruksiBintalB	inisiatifBindosatBindihomeBilegalBilanginBikhlasBijazahBihBiBhehBhapenyaBhalooBhalangBhahahaBhahahBhaBgoggleBgocengBgoalsBgiatBggalBgeraiBgeraBgemBgbisaBgbBgaxBgakbisaBgabisa2BfollowBfokusBflipBfixBfitureBfine2BeventBentengBenjoyBengakBelorB
elektronikBeleganBecekBduliBdudukBduBdosaBdobelBdisuruBdiovoBdidonlutBdevelopmentBdesakBdekBdaritadiBdanapaylaterBdampakBdalemBdalBdahhhBdahBdabBcurigaBconnectBcokBcoinBcodenyaBcoba2BclubBclearBciBchetBchannelBceritaB	catchbackBcatatBcacheBbyrBbyeBbusaBbungaBbungBbukuBbroooBbrivaBbpjsBbosssBbodoBblueBblanjaBblaBbidangBberulangkaliBberterimakasihB
berminggu2Bberjam2BbentukBbeneriBbelikBbeli2BbekerjasamaBbayakBbasiBbapukBbangunBbahanBbagusinBatuhBatBastagaBaqunBappleBaplnyaBaplikasuB
aplikasinyBaplikasiiiiBapknyBapikasiBapgredBantreBangkatBangelBanehhhhBandaiBalatBalasanyaBalangkahBalaBaktivBajibBajakBajaBagenBadiraBadikBadakanBacehBabaiBa37BaB999B99B900B90B800B7xB6xB4hariB4gbB4500B3000B2kB2hrB20xB20jtB200rbB1mingguB1kB1jamB15kB1500696B100ribuB10000B06BzepetoBypByourB	yaudahlahByaituBxlBx3BwrBwongBwoiiiBwoeBwfhBwehBwebsiteBwbBwatsappBwalitBwalauBwakilBvisionetBvisionBveryB
verifilasiBverifikasihBvalidasiButuhButangBusiaBusernyaBusernameBuseBurgensiBurgenBupradeBupgretBupgradrBupdatingBupdatedBupdate2BunistallBunipinBunggulBujiBuiBuankBturutinBtuntutBtunjangBtunguBtungguinBtugasBtrobleBtrobelBtrnsaksiB	trimakasiBtriBtrbukaB
transparanBtransisiBtransasiB
transaksi2BtransakiB
tranfernyaBtongBtokennyaBtokeBtnyBtnggalBtingBtibatibaBthruBthkBthisBthanxsBtgguBtfrBtestBteruuusB	terusssssBtersbutBterrusB	terpecayaBterosssBterlluB	terkirim2B	terinstalBterimahBterdowngradeB
terblockirB	teransferBteranferBtemplateBtelkomBtelBtekorB	teknologiB	tanggapinBtambaBtaiiB	systemnyaBsyahBsushBsusahhBsusaBsumutBsubuhBsubBsuBstroomBstresBstokBstlahBstghBsrkarangBsregBspesifikasiBspamBsoalyaBsnBsmntaraBsmlmB
smartphoneBsmartBskemaBsitiBsitemBsitaBsistimBsipppBsingkronB
simobiplusBsiiiihBsiiiBsiichBsiap2Bsia2BshopepayBshopBshoopeBshhBsharingBshareBsglBsgatBsgalaBsetorBsetelhBsesakBserviseBseramBserahBsenyumBsendBsemuahB	sembarangBselubungBselluB	selfienyaBselasaBselangBselainBsekrgBsekiraBsekaratB	sekaligusBsegituhBsegaraBseganBsedapBsecurtyBsecB	sebentar2B	sebenrnyaB	sebelumnyBsarangBsangkutBsangayBsangattB
samasekaliBsalurBsalingB	saldonyaaBsaiaBsahamBsadoBsadBsaBruangBriviewBrilisBribitBriberBriBrezekiBrewelBrevisiBretingBretasBrestarBrespontBresponseBresikoBrequestBrendahBrenaB
rekomendedBrekomenBrejectB	reinstallBreinstalBregisterBrefounB	recommendBrecomendBrebetBrataBramerameBramaiBrajinBrajaBraibBraB	qualifiedBputerBpulaBptunjukBptonganBprtamaBproteksiBprogramernyaBprogamBprivasiBprinterBprimierBpriemerB	prepikasiBpreniumB	preminiumB	prefikasiBprbaikiBprankBprakrjaBprakerjanyaBpotretBpositifBpopulerBpointsBpocoBpocketBplusBplssBplissB	playlaterBpiyeBpidanaBphoneBpetingBpertanggungjawabanBpertamakaliBperfectBperbaikanyaBperakBpenggunaaanBpengaruhBpemberitahuannyaBpemakainBpelayananyaBpeduliBpdahlBpaypalBpayleterBpaylatternyaBpasteBpasswordnyaBpascaBpasarBparahhhhhhhBparahhhhBpapaBpaninBpakenyaBpajangBpadaahalBpabrikBpaaayyyaahhhhBoyBovopointBovokuBoverloadBovBopenBoneBolshopBolehBogahBoadahalBnyimpanBnutupBnuaBnowBnnyaBnikmatB	nguranginBngisinyaBnginstalBngguBngendepBngehangBngeblankBngawurBngapa2inBngalaminBngalamiBnexBnetralBnemuB	nanggapinBnanganinBnambahinBnambah2BnafkahBmungutBmundurBmumetBmuluuBmulukBmubazirBmsukanBmpeBmpBmoveBmotongBmonyetBmoneyBmolaBmobilBmndaftarBmmngBmmbantuBmkasihBmintainBminjamBminimBmindahinBmeterBmesBmerosotBmentangBmengverifikasiBmenginstallBmenghubunginBmencetBmemBmediaB	mbangkingB
masukinnyaBmasukaBmasuBmasokBmashBmarinBmarahinBmanusiaBmantullBmantabzBmantaappBmanjaBmandiBmandegBmampusBmalingB	maksutnyaBmaksimumBmaksBmakekBmadukinBmacet2BlwatBlutBlulusB	luarbiasaBloveBlonggarBlongBlomBlockBlncarBlmyanBlistBliburBlfBlemotttBlemmotBlegendsBlegBlaterBlarutBlariBlarangBlaparBlapakBlansungBlanscapBlamanB	lamaaaaaaBlamaaaaBlalodBlalaBlain2BlahirBlagi2BlaggingBlB
kutambahinBkustomerBkupuBkuliahBksBkriptoBkreatifBkpotongBkoplokBkontraBkomplitB
kompetitorBkomolenBkomitmenBkomennyaB
komenkomenBkohBkntlBknpaaBknapahBkmrn2Bkmna2BkluntingBklarBkiosBkinBkiaBkeuBketeranganyaBketatBkesiBkesellBkesanBkerekBkepakekBkeovoBkenyamBkenpahBkendaliB	kenapaaaaBkenaapB	kembanginBkembalikBkemanainBkeluhan2BkelolaBkedipBkdepanBkdeBkbankBkaxBkataxBkataiBkasarBkarmaB
kapokkkkkkBkamarenB
kalkulatorBkadang2BkabelBjustruBjudiBjosBjopBjointBjobBjikalauBjigaBjgnkanBjernihBjempolBjelasinBjalinBjakartaBjahBjaganBizinBitikadBissueBinuBinternasionalB	integrasiB	instalnyaBinsetifBindodaxBindikasiB	indiehomeBiming2BimbalBikonBidiotBiconBhurufBhujatBhujanBhuftBhpkuBhoaxBhmmmBhiihBhihihiBheyBhehehBhdehBhdBhayoBhasBhalusBhahBhadirBhadeuhhhBhadehhBhadeeehhBhadeeehBhadeeeBhadapBguweBgunaaaBguahhBgrabkiosBgraBgrBgoyangBgooodBgoodjobBgontaBgogleBgofoodBgodBgoalBgmBgjlsBgiurBginBgiBgetBgeserBgesekBgercepBgeranganBgerakBgentingBgemukBgembelBgelengBgegaraBgawatBgasBgapapaBgakaBgagunaBgagal2BgaesBgabjelasBftBfriendlyBfremiumBformatB
formalitasBforcedBfisikBfingerprintBfineB
ferivikasiBfeedbackBfahamBfacebookB
experienceBexBeweBetikaBestimasiBesBerrorrrBerrorrBerrornyaBenggkBengaBembelBekonomiBehhhhBefisienBeehBeeehBeeeBeasyBduakaliBdriveBdresponBdoubleBdosenBdlunyaBdllBdkirimBditanggepinBditahan2Bdiskon2BdisdukcapilB
diprakerjaBdiplaystoreBdiperbaikinBdinpakeBdimatiinBdikit2BdikBdijitBdigaweBdidikB	dibutuhinBdibukaaB
dibilanginBdibalas2BdftrBdendaBdemiBdelayBdekatBdegBdebetBdayaB	dashboardBdasbordBdangBdanaaBdajBdailyBdaftarnyBcustamerBcustBcukBcuekBcuanBcpatBcounterBcostamerBcommerceBcommentBcomBcihBcianjurBchtBchatnyaBchanelBchaceB	centernyaBcentangBcemarBceklisBcandaBcalonBcalBcakepBcairinBbututBbutuhinBbusyBburu2BbuntungBbugnyaBbuanyakBbualBbsa2Bbs2BbrooBbrengsekBbosskuBbosaBboroboroBbooosBboikotBbocorBbnisBbngsdBbncBblurrB	bluetoothBbluemartBbiyarBbintngBbintang3BbintaBbingtangBbiBbgmBbetaB	bertahun2BberkahBberitahuBberibu2Bberhari2B	berbulan2BberakBbeluBbelmBbelaBbbrapaBbberapaBbayar2BbayangBbatreBbatasinBbasicBbarBbantingBbangsaBbanernyaBbanerBbandungBbalik2BbalekBbajakBbahBbaguusBbagussssssssBbagusssssssB
bagussssssBbaguaBbaguBbagaimnBbaBazBayuBayaBaxisBawasBasusBastagfirullahBarahinBaproveBapplicationBapplBaplkB	aplikasixBaplikasinyaaBaplikasBapliBapkxBapgrdeBapasihBapapaBaoiB
antisipasiB	antarbankBangusBanginBandelinBamatB
alternatifBalhamdulilahBakuratBaktipBaktifinBaktifasiBakakBainBahirnyaBaguBadminnBadministrasiBactiveBacoBacaraBabdetBabalBabadBaaaBa51B9jutaB9jtB950B7x24B75B700B6rbB6jtB60rbB5kaliB5jutaB58B56rbB555B52000B52B5000B48B47B450B45B400B3x24jamB3hriB35B34B31B300rbB2mingguB2kaliB2jtB2jamB282B260B2000B
1perangkatB17B1500445B15000B120B10jutaB10jtB100rbuB04BzzzzzzzzBzeroBzenfone5BzenfoneByyByvlamakByvByuntutByuniasihBytiamaBytByssByrbByolonglahhhhhByoiiBymeByhhhBygblomByetapByeselByesByerusByeesBydkByaudahByaudaByatimByangkutByakinnnByaaaaaBy21By12iBxxxxxxBxoBxliBxiomiBxiaomiBxdB8wwwwwwwrrrrrrrtooooooooooooooooooooookkkkkkkkkkkkkkkkkkkBwtfBwoyyyyyyBwoyyyyBwoyyBwouBworthyBwortBworkBwooouuuBwoooooyBwooiiiiBwooiiiBwokehBwoiiiiiiBwoiiiiB	woeyyyyyyBwoeeeeeBwoeeBwlwBwlpnBwkwowkwokwokwkBwkwkwkwkwkwkwkwwkwkwkwkwkwkwkwB
wkwkwkwkwkBwkwkwkwkBwkwkwkkwkwkwkB	wkwkwkkwkBwkwkwkkkBwkwkkBwkkBwithoutBwithdrawBwithBwisB	wirausahaBwindrawBwillBwidyihhBwibuBwibBwhyyyyBwhatsppBwhatshapBwhatsapBwhatappsBweyBwewBwellB
websitenyaBwebBwcBwayBwawaBwattttBwatshappBwastingBwassalamB
waspasalahBwaspadaBwasallamB	wasalammmBwas2BwapshapBwanBwalupunBwaluapunBwaloBwallletBwajarrBwaitBwaeBwaduuuuBwaduh2B+waaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaawBvuatBvsB	vrivikasiB	vrifikasiB	vrepikasiB	vrefikasiBvoidBvogameBvocherBvocer2BvocBvmBviuBviturBvisonBvisiBvisaBvirusB
virifikasiBviralBvillaBviBvginiB	vervikasiBvertivikasinyaBversifikasiBversBvermukB
verivikqsiBverivBverikasinyaBverikasiB
verifiveriB
verifikasyB	verifikasB
verifekasiBveriB	verfikasiBvelumBveetifikasiBvaucherB
varivikasiB
varifikasiBvalitBv11ButomoButilitasButamaknButBusserBusapBusabBusBurasBuptdateBupsBuprgradeBupragedBuprageBuppppsBuplotBuploafBuphdateBupgretdBupgreatB	upgrdenyaBupgratedB
upgradebkeBupgrBupgareBupgadeBupdtB	updetenyaBupdeteBupdetanBupdetaBupdatrBupdateanBupdatanBupdadeBupdaateBupayaBupadteBuogradeBunukBuntukkBuntuBuntrukBunstalB	unpremuimBunjukBuninstallovoajaBuninB	uniisstalB	uniinstalBungredBungggahBunggahBungBunderBumtukBumpanBummBumkmBulurBulsanBulanginBukurannyBuktBuhBugrageBufgertBuesBuenakBudkBudeBuddhBudateBudahinBucupBubdeteBubatBuanyaBuangyaBuangnyhBuangnyaaBuangnyBuagBuadahBtytBtypeBtweterBtuuuhBturusBturinBtupBtuntunBtuntasBtunggguBtunanBtumpukBtumpuBtumbemB	tulisanyaBtulisannnyaBtukngBtukarBtuguBttusBttttttttpppppBttnggaBttngBttiba2BttBtsrBtshunBtruusBtrustBtrusanBtrun2BtrsuhhhhhhhhhhBtrssBtrsferBtrsbtBtrputusBtroossssBtroosBtrnsksiB	trnsferanBtrnfrBtrnaferBtrmkasihBtrlluBtrlanjurB	trkendalaBtrimkshBtrimasihBtrimaksiBtrimakasihhBtrimBtriliunBtrialBtrhpusBtrhambtBtrhambatBtrhadapBtrcantumBtraumaBtrasperB
trasnsaksiBtrasnperB
trasnferanBtrasnferBtrasaksiBtransverBtransportasiB	transpertBtransperdanBtransksiB	transkasiB	transfersBtransferbangB	transfer2BtransfeeBtransfaransiB
transfaranBtransefB
transasksiB	transansiB
transaksixBtransaksitidakB	transakdiB
transakasiBtransakB	trannsferBtranfserBtranfresB	trandaksiBtranaksiBtrakteerBtrainingBtraferBtrafBtradingBtrBtpuhBtowerBtouBtopupnyaBtopmarkotopBtopedBtooppBtooBtolonkBtolongyaBtolonginBtolonggggggBtolonggBtolngBtollolBtolgBtokenyBtokennBtokapBtobatBtnksBtngkatBtmen2BtmbhinBtmbahinBtlvonBtlp2BtlfnBtlahBtkstrimakasihBtkshBtixBtitidBtispBtisB	tirtanadiBtipsBtipeBtingktB
tingkatkabB	tingkatinBtimnasBtimbul2BtilongBtilepBtidamBtidakkBtidakberhasilBtidagBtidaakBtibabaBtiatiBtiaoBtiBthnkuBthermalBthebestBthebesBthatBthanxBthamksBtgl23BtgihanBtgglBtfranferBtetsediaBtetotBtetibaBtetaoBtetanamBtervertifikasiBterverivikasiBterverikasiBtervalidasiBteruusssBterussssssssssB	terussessBterusnBterusmemintaBterus2B
terupgradeBterudB
tertranferB	tersimpenBtersferB	tersebbutBterpendingbsampeBterpeercayaB	terpakasaBterooossBteroooossssssBternaBtermskB
termikasihBtermakshBtermaBterlbihBterkBterjunBterjdiB
terjadiminB
terinstallB	terimksihB	terimkashBterimakasihhB
terimakashBterikasiBteriBterhomatB	terfotongBteresponB
terdzolimiBterdownloadB	terdonlodBterdaftardanBtercoverB	terblokitB?terbandingkaaaaaaaaaaaaaaaaaaaaaaaaaannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnbnnbnbbnbbbnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnB	terasnferBterasferB
teransaksiB
teranferanBtepotongBteoubleBtensiBtengkarB	tenggelamBtenangBtenanBtemeBtembusBtembakBtemaBtelvonBtelponnBtelphonBtelfBtelephonBtelekB
tekomendedBteknisBteknikBtekBtegurBtegaBteekunciBtedaftarBtebusBteBtdiakBtbhBtbahhinBtautkabBtaunBtauhBtatikBtataBtasyaBtaskBtasBtarohBtaroB
taransaksiBtapuBtapiiiiBtapiiiBtapaBtapBtaoiBtanykBtanyakBtanskBtansaksiBtanksBtaniBtangungBtanggungjawabBtangguhBtangguB	tanggapaiB	tanggal27BtangannBtangalBtanapBtanalBtanahBtanBtampungB
tampinanyaBtampilinBtampakBtambainB	tambahainBtamatBtamanB	tamabahinBtakeBtailedigBtaiklahBtaiikkB
taiiiiiiikBtaiiiiiiBtahunnB
tahmbahkanBtaglisBtaglBtaeeBtabahBta1kBt9Bsyukur2BsytemBsystemsBsyqBsyhBsygnyaB
syestemnyaBsyatemBsyaksiB
syailendraBswcBsuweeeBsusurBsusulBsuspendBsusksesBsusahsBsusahinBsusaahBsusBsuruuhBsuruh2BsurprizeBsurihB	supryantoBsupermarketBsunpahBsunguhBsungkanBsungBsumpaBsumarnoBsulutB	sulusinyaBsuluBsulsesBsulitttBsukses2BsuksekBsukakkkkkkkkkkkBsukahB
sukaaaaaaaBsuirBsueeBsudarBsudahberulangBsudagBsuccessBsubjBsubcribeBsuamiBstudioBsttsBststusBstrukturB	stroomnetBstrongB	streamingBstorageBstomerBstnghBstillBstep2nyaBstatusnyBstarupBstartBstapBstangahBstakBstaffBstadratBstablihBstB
ssuuueeeeeBsshnyaBssecepatnyaBssamaBssahBsrpertiBsrollBsringBsrhBsqngatB	spongebobBsplitBspesialBspecialBspecBspayBsosisBsoriBsoraBsonoBsoniceBsomogaB	solusinyqB
solusinnyaBsoloBsolehBsoftwareBsofianBsociollaBsoalnyBsoaalnyaBsnihBsndiBsnakBsnacksvideoBsnacknyaBsmudaBsmptberBsmbungknBsmbungB	smartfrenBsmapaiBsmanisBsmalamBsmainBsmacamBsmaalamBsmaaBslowwwwB
slowresponBslotBslmetBslmaB
sllnjutnyaBsllaluBsldoBslainBslahBsladaBskunBskrnBskripsiBskrgpunBsklianBskaranhBskandalBskalaBsizeBsituasiBsiswaBsistrmB
sistimnnyaBsistemyaBsistemxBsistemnyBsisamBsisahnyaelebihiBsisBsipppppppppppBsipppppBsipitBsinylBsinilhBsingkatBsinggungBsinBsimnyaBsilumanBsiletBsiiiiipB	sihhhhhbbBsigoutB
signifikanBsifatBsieeBsidahBsibuuukBsibukkkkkkkkkkBsibukkB	siallllllBsiallBsialaanBsiaapaBshuBshrusnyaBshopeepyBshopeepinjamBshopeepaynyaBshoopyBshoopeeBshipBshiiBsgntBsgnBsgakaBsfileBseyacekBsexangBsevisBseviceBseudahB	settinganBsettingB	setiyawanB
setiapkaliB	seterusnyBsetelBsetaaanBsetaBsesuatuBsesmaBsesatttBsesaiBsesaBservishBservicesnyaBservicBserveBserruBseriussB
seringkaliBseriapBserelahBseregaB	serbagunaBserahinBseptmberB
sepertunyaBsepeleB	sepakbolaBsenterBsensitifBseninB
sengkirangBsenggangB
sendirimahBsendatBsendarBsemulaaBsemugaBsemuanyBsemoganBsemogahBsemgguB	sementstaBsembunyiBsembuhBsembakoBsemataBsemarangBsemangatttttBsemalesBsemakainBselviBselularBselsakanBselmyBsellBselfyBselfi2BseletlahBselesai2BseleluBselauBselamBseksusBsekarangkokB	sekarang2BsekaramgB	sekalipunB5sekaliiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiB	sekaliduaBsekaleB	sekakrangBsekakBsehabusBsegitigaBsegarBsefieBseditBsedekahBsedehanakanB
sedangkangBsecuritycodepunBsectionBsechBsecepetBsebuB	sebtemberB	seblumnyaBseblumnyBseblumBseberepaBsebenerBsebelymBsebelumnnyaBsebellB
sebelemnyaBsebarB
sebaljknyaBseakan2BsdngkanBsdikitBsdgkanBsdangB
scrennshotB	screennyaBschBscepatBscannyaBsbnrnyaBsbnrBsbnernyaBsblumnyaBsblmxBsbesarB	sbenarnyaB	sbelumnyaBsbbknBsbaliknyBsaynkBsayang2BsayamahB
sayakeluarBsayabyaBsayabgBsayaaangBsaweriaBsavingBsausageBsauaBsatuinBsatryoBsatelitBsatBsarpisBsarcasmBsaratBsaranaBsaolnyaBsantaiBsanpaiBsangka2BsangkaBsanggattBsangattttt2B
sangatttttB	sangattttBsangattaBsangatenyesalBsangadBsangaaatBsangaaaaaaaaaatBsanagBsanBsampunBsampingBsampelBsampeiBsampe2BsampahhhhhhhBsampahhhBsampaBsamoeB	sambjnhkaBsambilBsambasBsamapiBsamapaiBsamakinBsaldyB	saldoooooBsaldonyBsaldonBsaldiBsaldaB	salahhhhhBsalahhBsalaBsajiBsafeBsaeeeepisanBsadisBsabungBsabarinBsabaiknyBsaayaBsaampeBs10BrwBrusuhBrujukBrugiiuiiBrubaBrtBrsbtBrpercayaBrp50Brp356Brp225Brp139BrotiBrofikaBrobitBrndBriwayalBriwayBriskanBrisBringkasBringaninBrincianBrimbaBrimBrilBrielBridakB
ribetttnyaBribettBribet2BribeetBribedBribaBrfBrezikiBrevillaBrevBrespownBrespountB
responsiveB
responnnyaBresponnBresponeBrespondBresponanBrespon2BrespomBrespinBrespectBresmiBresfonyaBresetpinBreseBresahBreputasiB	repotdanaBreplyBrepBrentanBremajaBrelogBreligiusBrelaBrekponBrekeninfBrekeninBrekenigBrekeingBrejekiB	regritasiBregisBregionBregestarBregardBregBrefunBrefresBreffB	referensiBreferalBrecoveryBrecomendasiBrebuBrebootBreaponyaBrealtimeBrealmeBreallyBreBrcBrawatB
rattingnyaBratingmuBratenyaBratBrasaiBrasahBrasBrapuhBrapih2BrampokBrampasBrakusBqw9BqwBquotaBqualytasBqrscanBqrishBqrimBqokBqodriyahBqodeBpuzzleBputusinBputraBpusinkBpusiiinngggggggBpushBpuqsBpupB	pungunaanBpulzaBpululBpulsayBpulsBpulasaBpulasBpulBpuhanBpubgBpuasaBptsBptremiumBpswordBpskeBprsaanBproviderBprovideBprotectBprosesssBproses2BprosenyaB	prosedureBproseaBproposalBpropinsiBpropesionalBpromoteBpromonyB
programmerBprofisionalBproduksiBproductBprmudahBprmierB	privikasiBprinBprimiummBprimerrBprimaBprikasiBpribdiBprgBpretesBpretBpressBpresmiumB	premiummmB	premiuminBpremireBpreminB
premiernyaBpremiBpremeumBpremerBprekerjaB
preimernyaBpraturanBpratamaBpraktekB	prakerjaaBprakerBprakeejaBpraimerBprabayarBpprosesBppremiumBppobBppbBppB
positipnyaBposBpopBpoooollBpongBponBpomptdB	pokonamahBpohonBpnyaqBpnjlasanBpnjelasannyaBpnipuBpngikB
pnggunanyaB	pngarahanB	pngalamanBpnarikanBpnBpminatBpmbyaranB
pmblokiranBpmbelianBplzBplyaBplyBplsnyaBplosokBpljssBplisssssBpliissBpliBplestorBpleseBpleaseeeBpleasBplaytorB	playsoterB
playletterBplayleternyB	playleterBplaylaternyaBplayananBplatihnBplanetBpkokBpklBpketBpkayBpkainyaBpjmBpiyeeBpixelBpisahBpisaaaanBpintasBpingpongBpinggirBpindahinBpincetBpimBpikirinBpikir2BpihkBpihanBpihak2BpihB
pigoblogenBpieBpicturBpicakBpiatuB	photocardBphkBpg2nyaBpfiBpeyB
petusahaanBpesBpertokoandllBpertimbankanB	pertayaanB	pertanyakB	persulittB	persulitaBpersisBpersaratanyaBpernhBpermiumBpermenBpermanenBperkasaB
peripikasiB	peringkatBperingantanBperingBperimerBperihalB	perfikasiBpercumahBperbankkantetapyangterbaikBperbanB
perbaikiinB
perbaikan2BperbaharuiiBpepekBpenyimpannanyaBpenyelesaianyaBpenybabBpenting2BpentalBpensiunBpenngunaBpenjelasanyahBpenjelasaaannyaBpenjaraB	penipuuuuBpenipuuB	penipuaanBpenipuaaannBpenilainnyaB	pengunaanBpengunaaBpengoprasiannyaB	penggunaxBpengenbaliannyaBpengembangnBpengembangaBpengelurannyaBpengduanBpengambalianB	pengajudnBpendekBpendaptaranB
pencerhaanBpenceranBpenceralhanBpencerahannyaaB	penasaranBpemskaiBpempermudahBpemiumBpemblokiranyB	pembayarnBpembayaranyaBpembayaran2BpembayanBpembaharuwanBpembahaaruannyaBpeluangBpeloporBpelayanananBpelanyanannyaB
pelanyananBpelanggannyapelanggannyaBpelanggaBpekeBpekanBpekaBpegaweBpegatBpegaduanB	pegadayanBpeecayaBpedasBpecahBpeangBpeakBpeBpdahalpinginBpdahBpbbBpaypazzBpayletternyaB	payletterBpayleternyaB	payleaterB	paylateerBpayaaahhBpayaBpatsutBpatenB
paswordnyaBpastiinBpasilitasnyaB
pascabayarBpasalBpasaBpartamaBpariBparalelBparahsiBparahhhhhhhhhhhhhhhhBparahhhhhhhhB
parahhhhhhBparagBparabolaBparaahhhBpapalepalepeleelelepaleB	pantulannB	pantenginBpangsatBpangkalB	pangisianBpanduBpandangBpancingBpancarBpanbayakBpamnyaBpameBpamB	pakiydataBpakekkBpakaoBpajeBpainBpahalBpahakBpadamBpadalanBpadahahBpadBpacarBpabilaBpaayyyaaahhhBpaaarraaahhhhhBpaaaaarrrrrraaaahhhB
p3mbayaranBowoBovpBovoooooBovoooBovooBovonBovomuBovodanBov0BoutentifikasiBounBouasBotletBotherBotfBotangBornglainBorganizationBorangmahBorakerjaBoraBopratorB
oprasionalBopor2BopisiBoperasionalBopBoooookkkkkkBooBonnyBonlyBonlinBongkirBoneklikBonBomBoldBokyBoksihBokkkkkkkBokkkkeBokkBokeyyBokeyBokelahhBokehhhhhhhhhhhhBokehBokeeeeeeeeeeeeeeeeeeeeeeBokeeeBok2BoikirBoiiiBoiaBogBofcnyaBoerbaruiBoengikatB	oelayananBoeeeeeeeeeeeBoeeeBoderBocrBoceBobrolBoboBobaBoancarBoakaiBoadhalBo3BoBnyselBnyobakB
nyobainnyaBnynpakeBnyniebgBnyngkitBnyimpnB
nyeseeelllBnyesal2BnyerahBnyedotBnyebutBnycairB	nybhangusBnyazBnyawerBnyasalBnyari2B	nyangkut2BnyangBnyamukB	nyamperinBnyampekBnyampe2BnyampaiBnyaman2BnyamBnyairkanBnyadiBnyaaaaaBnuraniBnunguBnunghuBnungguinnyaBnunggu2B
numyusahinBnumpangBnulBnugguinBnugguBnuBntehBntaBnransferBnovB
notofikasiB
notipikasiBnotipBnotifxB	notifiksiBnormal2BnoreknyaBnopinBnopeBnoobB	nontaglisBnongol2B
nonaktifinB	nomer2nyaBnombokBnomberBnolakBnojervhpBnobodyBnoberBnmnBnmerBnmaknBnlponBnlpBnloadBnkkBnkgBnjiirBnjgBnjBningBnilonBnilepBniiiiiceeeeeeeBniiiiBniceeeBniaBnheB	ngurusnyaB	ngupgradeB	ngumlulinBngsihBngsiBngrimBngototBngotakBngontolBngomel2BngobakBngmongBngleg2BngkmuaBngisihBngirmBngimnaBngiketBngiisiBngiBnggisiBnggapainBnggaknyaBngeyelB
ngevantuuuB
ngeupgrateBngetfBngestuckBngeselBngesalinBngerjainBngeprankBngepasBngentodBngenesB	ngendepinBngenaliBngenakinBngembaliinnyaB
ngembaliinBngemailBngeluuhBngelolaBngeloadBngelikeBngelesBngelburB	ngelagnyaBngeklaimBngehubunginBngeheB	ngeganjelB	ngegangguBngefotoBngedumelBngedadakBngebutBngebukaBngebuhunginB	ngeblokirBngeblengB
ngebalikinB
ngatasinyaBngatasinBngasilinBngaruhBngapaiBngangkatB
ngangguranBngandatBnganB
ngambilnyaBngakutB	ngakaakkkB
ngagantungBngadatBngacengBngabatuBngBnfcBnetworkBnetraBnestBnerorBnerkali2BnerinaBnelumBnelpBnelfonBnelayanBnegoBneeehBnbBnaudzubillahBnauBnasionalBnasihBnarzoBnaruBnampilinBnampilBnamperB	nampaknyaBnammaBnamanBnaliBnalaBnajisBnaisBnagihB	naedreamsBnadaBmytelkomselBmyaxisBmyBmwuB	mwngaksesBmwahBmuyabBmutarBmustahilBmusnakanBmusikBmurahinBmuraaaahBmunyukaiB
muntuuuuulBmungkingBmuncullBmumpuniBmulutBmulusBmultipleBmulesBmuhammadarrasulullahBmudianBmudhanBmudhBmudainBmudahnBmudahhBmuda2hnBmudBmuchBmuantaffBmuaBmtcB	msyarakatBmsuknBmsukknBmssukanBmslahBmskpnBmskinBmsalhBmsakBmrmbingungkanB	mpermudahBmotorBmotifasiBmotifBmondokBmolorBmohondipercepatBmohinBmohanBmodusB	modorenaiBmodernBmodelBmodarBmochamadBmobilebankingBmobBmnuBmntafBmntabbbbBmntabBmnimalBmngpaBmngkawatirkanB
mnggunakanBmngguBmngethuiB	mngetahuiBmngecawakanBmngantiBmngahsilkanBmngBmndinganBmncapaiBmnatulBmmbntuBmmberBmmBmlhanBmleluBmktplaceBmksudyaBmksdudBmksBmkr2BmkeBmkasiiBmkaBmjnculBmiui12BmiuBmitigasiBmissBmislkanBmirisBmiripBminorBminnnnnBminnBminiumBminimalisirBminguBminggu2BminggalBminfolBmimpiBmiminnBmimangBmilenialBmileniaB
miiiiinnnnBmidiaBmichelleB	mgirimknaB
mezhashitaBmeunguB	meteranyaB	messengerBmessageBmerugiknBmerubhBmeresetBmerefresBmerchenB	merchantsBmerchanBmercantB	meprbaikiBmenymbungkanBmenyenyenangkanBmenyelsaikanB
menyediaknB
menyeblkanBmenyebarluaskanBmenyahgunakanBmenvertifikasiBmenuhinB	menudahanBmenu2B
mentranferBmentogB	mentinginBmentang2BmentahB	mensuportBmenperbaruiB
menninggalBmenindaklanjutiBmenheceyBmengundikasikanBmenglieurkanBmengkatifkanB	menginputB
mengikutinBmengikhlasknB
menghimbauB	menghaposB
menghandleB
menghadeuhBmenggunskannyaBmenggunganaknB
menggunaknBmenggunakanyaBmengguBmenggangguuuBmengecewaknBmengcapeBmengatasnamankanB
mengapdateB	mengangguBmenfhubungiB	menfalamiB	meneriamaBmenelfonBmenejemennyaB
menegementBmenecewakanB
mendukunghB	mendaptarBmencretBmencbaaBmenarimaBmenanggapaiBmenangB	menaggapiBmenabjubkanBmemyulitkanB
memperibetBmemperBmemoersulitBmemindahakanBmemhubungkanBmemeberilanBmemdadakBmemboongkanB
membershipB	membeltulBmembantuuuuuuB	membantuuB	memakannnBmeluBmelesetBmelekBmelarB	melakukamBmelBmeiB	mehubungiBmehBmegecewakanBmegangguBmegaBmedanBmecobaBmebutuhBmeatiBmcdonaldBmcdBmbokBmbnyaBmberikanBmbantuBmaybeBmax3BmaulanaB	mauapapunBmatokBmatapB	masyarat2B
masyaallahBmasuukBmasutBmasulBmasukuinB	masuknyaaB
masukmasukBmasukkinBmasukkBmasterBmassukBmassaBmasok2BmaskB	maseengerBmasalnyaB	masalihinBmasalhBmasalayBmasalaBmasahBmasaalahBmarkotopBmarkotobBmarketplaceBmarketopBmarket2BmaretBmarakBmanyapBmanulifeBmanuisaBmanuBmantuulBmantulllBmantttttttttaaaaaaaaaaaapBmantspBmantpppBmantpB
mantapzzzzBmantapzBmantapsBmantappppppppBmantaoBmantabbbB
mantaaapppBmantaaaaapppppBmantaaaaapppB
manipulasiBmanggunakanBmangapBmanfaBmanehBmandetBmanapBmanahBmampetBmambuBmambantuBmalezBmalesnyaBmalemnyaB	malasalahB
malaporkanBmalaBmaksutBmaksudxB
maksimalinBmakluminBmakkinBmakinnBmakesBmakenyaBmakenhaBmakasihhBmakBmaju2B	maintenceBmaininBmain2inBmahonBmahal2B	magsudnyaBmagangBmaffBmaen2BmaemBmadaBmacBmaaukBmaaihBmaaalesBmaaafBluvluvBlustrikBlurusBlunkBlungoBlunasBlunakBlumyanBlumpukinBlumayamBlumBluginBlugasBluahBlossBlopeBlookingBlongorBloncengBlolanyaBloketBlokasiBlokalBlokBlogotBloginnnBlogininBlogingBlodingyBlochBloafingB	loadingyaBloadBloaaaaddiiiingggBlnngsungBlnjutBlngkahBlmbatBlma2BlmBllcBllBlivingBlivechatBlisaBliqiiudBlintahBlinknyaBlink2BlindungBlimitedBlimitdBlimidBlimatBliketBlikeitBlifeBlibatBliaBlhuBlghBlewaBleverBleterBletakinBlenyapB	lengkapinB
lengkapiiiB	lengakapiBlemottyyBlemotnyaaaaaaaaaaaaaBlemoottttttBlemootBlemoootttttttBlemooooottttB
lemooooottBlemoooooootttttttB lemooooooooooooooooooooooootttttBlemodBlemitBlemBleletinBleledBlelahBlelBlegendBlebisBlebarBlayaninB	layananyaB	layanannyBlaungBlaundryBlatarBlasungBlapurBlaporrrrB	laporanyaBlapisBlaperBlapangBlapBlantasBlansiaB	lanjutkenB
lanjutiiiiBlaniBlangsunfBlangananBlandBlampungBlampuBlambetBlambangBlamatBlamakBlamaaaaaaaaaaaaaaaaaaaaaaaaasBlamaaaaaaaaaaB
lamaaaaaaaBlamaaaaaBlalaieurBlakumBlaksanaBlajutiBlainnyaaaaaaaaaaaaaaaBlailatulBlailahaillallahBlahhhhBlaguBlagiiiiiiiiBlagihBlaennyaBladazaBlaahBlaaammmmmaaaBlaaahhhBlaaahBlaaaammmaaaaaaBlaaaaaaammaaaaaBkzpqu8BkzlB	kuunistalBkutaBkurusBkurgBkurasBkurainBkuraBkuponB	kunjunhlgBkunciBkumpulinBkumpulBkumplitBkulonBkuliBkuisB	kuinstallBkudoBkucekBkuataB	kuantitasBktpxB	kteranganBkrtuBkrrnaB	kronologiBkrjaBkriteriaBkreeeennBkredivoBkqloBkpopBkpastianBkpBkoyoBkouhBkotorBkosBkorupsiB	kordinasiBkopiBkoperasiBkopedB
kooperatifBkooBkonyolBkonvesionalBkontrolBkontoolBkontolBkontakxBkonsunenB
konsultasiB	konsekwenBkonplinBkonpleanBkonpensasinyaB
konnntolloB
konfrimasiB
konformasiBkonfirmasinyBkonfirmBkonfiramasiBkonfirBkonfimasinyaB
konfermasiBkonekB
komunikasiBkompresBkomplentB	komplenanB
kompirmasiBkompetenB	komperomiB
kompensasiB
kompatibleB
komolainanB	komlplainBkomediBkolabBkolaBkolBkodiBkocakBknphBknpanBknepaaBknaphBknapaaBknapB
knanblokirBkmudianBkmn2BkmapaB	kluarasukBklrBklasterBklanBklaloBklaim2anBkkpalanBkkkBkkalauBkjlsanBkjhBkitBkirangBkirBkipliBkingmlstoreBkimakBkikoBkikiBkiamatBkhoBkezelBkeyboardBketundaaBketnyaBketmptB.ketingggggggggggggggggalaaasaaaalaaaaaaaaaaaanB	ketimbangBketidaknyamananBketiB
ketetanganBketBkesninyBkesmuaBkesimpenBkeselllBkesanalhBkesalahnBkesahBkes3lBkeruhBkertenBkertasBkernaBkerjainBkeretaB
kereeeennnBkerabatBkeqrisB
keprakerjaBkepotonggggB
kepongpongBkepalaBkepakBkeongBkentang2BkenoBkendalBkenapqBkenappaaaaaaaaBkenapayaBkenafaBkena2BkenBkemudiBkemrnBkemrenBkemnaB	kembaliknB	kembaliinB	kembaliiiBkembaiiBkemaren2nyaBkelurB	keluhannnB	keluhananBkeluhaBkelikB
kelarkelarBkelar2BkelanjutanyaB
kelacnaranBkelaBkekBkejutBkejeasanBkejarBkeepBkeeluarBkeeeessseellllBkecwaaBkecualiBkeceweBkecewainBkecewaaaaaaB	kecewaaaaBkecewBkebuka2B	kebnyakanBkeblokerBkebijakanyaBkebihBkeamanaB	keaamananBke4Bkdvzr2BkbukaBkbemailBkbarBkbanyaknBkawatirBkauBkatanyahBkatanyab1x24jamBkasikBkasiihBkasihovoBkasihhBkasihannBkasichBkasiBkaryawannyaBkaryaBkarirBkarangB	kapasitasBkantongBkanpanBkangBkandungBkanapahhBkananBkampusB
kamprettttBkamisBkambingBkamarinBkalkBkaliyaBkali2BkalerBkalawBkalauapkBkalaoBkalaiBkakuBkaitinBkainBkaihBkaiBkahaBkadungBkadngBkadaB
kacauuuuuuBkacamataBkacaB	kabupatenB
kabangetanBkaaihBkaaahBjwringanBjwbnnyaBjwbnBjwabnyaBjwabnBjuniBjunBjumpaBjulBjujurlhBjujuBjubaedahBjringanBjrganBjreengBjqnganBjpgBjpegBjozzzBjozzB
jossssssssBjossBjoshtBjoossBjooosdBjooosBjodohBjobsBjobaBjnjiBjnanganBjmlhBjlsinBjiwaBjirBjipBjin9BjiahBjiBjhaBjftBjexpotBjeramiBjeraBjembutBjelitaBjeliB	jelekkkkkBjelekkkkBjelekkkBjelekkjBjelekkB
jeleeeeekkBjelassssBjelasssBjelassBjelakBjekkBjekekBjbBjawananBjawabinB	jawabanyaBjawabanyBjauh2BjaugBjatengBjasBjarumB
jaringanyaB	jarianganBjapriBjangnBjangkauBjangakBjaneBjamurBjamuBjambiBjalurBjalaBjakaryaBjahanamBjagoooBjafiBjaenudinBjadikurangknBiyyaBiyuBivoBivilBituuuuuBitupanBitung2BitungB	itubanyakBitu2BitteBistelBistalBismayaniBislamBisisBisi2BishBisentifBioBinvsetBinvalidBintruksinyaB	introgasiBinterfacenyaBinstanB
inshaallahB	insenstifBinsatalBinsaBinovasiBinisialBinimahBinhBinggrisBinformatikaB	informaskBinfoinB	ineternetBineB	indotodayBindomBindihomB
indentitasBindentifikasiBinboxB	impestasiBimoBimanBimaelBim3BilangiBiktBiklasinB	iklannyahB	ikhlannyaBijinBijasahBiisBiefpizBid10tttBiconnetBicloudBibaratBialahBhuuuuuhBhuuffftBhurfBhukumBhuhuhuhuBhuhuBhufgfBhufftBhubunhiBhubugiBhubgukanBhuakBhttpBhrhehBhpsBhoxBhostBhooofBhongkongB
homescreenBholloBhokuBhokiBhoeBhoBhmmzBhmmBhmBhloBhlBhkBhitersBhitanganBhitamB
historynyaBhirupB	hipermartBhintBhilngBhilanggBhilagBhikssBhiksBhiilangBhighBhigghBhiburBhhuuuuuuuuuuhhhhBhhmmmBhhhhhhBhheeBheyyBheseBhermawanB
hermansyarB
hermansyahBherbalBhengBhemmmmBhelBhekBheheheheBheheheeeBheehBhedehhBhedeehhBhebohBhebaaaatttttBhdhBhdewhBhdehhBhdeeehBhbungiBhbnginBhavingBhatuBhatdehBhasilnyBharussBharrrrghB	harga2nyaBhardwareB	harapanyaBhappenBhapekuBhapBhanphoneBhanphonBhankBhangussBhangBhandalBhanabankBhanaBhamdulillahBhamdehhBhaluanBhalooooBhalalBhakaneunBhahhaBhahajaBhahahahaBhahaaaBhafizhBhaduuuuhBhaduhhBhaduBhadoohhBhadohBhadiaBhadeuwhhBhadeuhhhhhhBhadeuB	hadehhhhhBhadehhhBhadeeeuuuhhB
hadeeehhhhBhadeeeehBhadeeeeBhackerB
habbaitaraBhaaBhBgyBgxxxyBgwaaBgvblvgBguysBgusyBgustiBguneBgunaknBgunBgulitaBguaBgthBgrstisB	growtopiaB
greschellaBgregetBgratisxBgrahaBgrabnyaBgpsBgorengBgopalBgoopayBgoooooooddddddBgooglestoreBgooddddBgoodddBgondrongBgondolBgoldBgodsBgodjobBgoddBgoalsnyaBgnhBgngguanBgmnaaaaBgmnaaBgmanBgmailnyaBgliranBglBgjBgivBgitarBginikanBginihBgimnasihBgimmickBgimanahBgimaBgilirnBgiamanaBgiamBghoibBgglBggdBgesitB	geratisanBgenggamB
generationBgencarBgenapinBgenBgemsBgemarB	gelombangBgelenginBgejalaBgebagBgeBgbvBgblkBgayaBgavyaBgaulBgaransiBgappBgaperluBgapangBgapaiBgapagiBganti2B	gangguannB
gangguanggB	gangguangBgangguanbisaB	gangguan2BganaBgamunculBgamenyaBgame2Bgamasuk2BgamaBgaleriBgalaxyBgalauBgalamaBgalBgakjelasBgakbisa2BgajiBgajadiBgaingetBgaguBgaglBgagalxBgagalterus2BgagalllllllBgagaglBgagaalBgaessBgaemB
gadiresponBgadipakeBgadaiBgabutBgabisaaaBgabiaBgabecusBgabaBgaadBgaaaassBfuturBfusingBfuluzzBfulsaBfullkanBfullinBfrustasilahBfromBfreenBfreefireBframeBfotoktpBformaBforcloseB
forcecloseBforbidBfoodBfollowupnyaB	followersBfixsBfiupdateBfirewallBfireBfintekBfingerB	financialBfilterBfilmBferitivikasibkeBferikasiB
ferifikasiBfejisanBfeesBfeelBfeednyaBfeedbacknyaBfeatureBfcBfasBfariBfarahBfarBfanpageBfanBfaktaBfaisalBfahamiBf11BextraB	experimenBexitB	excellentB
everywhereBevaluasiBevaletBeuyBeumBetyBetttBespayBesmosiBerrrorrBerrrorBerrorrrrrrrrrrrrBerrorkahBerror2BerroorrrBerotBeroroBerordanBeren2BeraBepakaiBenteng2B
engineringBengganBenehBenegBemsilB	emosionalBemmBemisBembatBemanBemaliBemakBemail2BemaiBemahtBelorrrrBelahBektpnyaB
ekspektasiBeksekusiBeksBekonomisBekaliBejekBehhhmmB	efisiensiBefiensiBefekBeekBeeehhBeeeeBeeBedgeBedcBedanBecerBdxBdwonlodBdwonloadBdwlodBdwlndBdwldBdwehBduwaBduperrrBduperBdulunyaBduluhBdulubBdulluBdukumenBdukcapilnyaBduittttBduitnyBduhhhhBdudinBdubahBdturuninBdtujukanBdtnggalBdtlponBdtaBdslrB	dsalahkanBdsalahBdrpdaBdreameBdrawerBdramabangetBdptrBdpertimbangkanB	dperbaikiBdowoadBdownloudB
downloaderB	downloaadBdownldBdownBdowlondBdowBdounlodBdouble2BdotBdoogBdonwnoalBdonwloudBdonwlotBdonwloodBdonwloadnyaBdonloodBdonhBdongngBdonglootBdongggggBdoneBdonBdominoBdomgBdokuBdoelBdodolBdocBdoaBdngnBdnaaBdnaBdmn2BdloBdlmnyaBdkwnloadBdklikBdkkBdketBdjualBdjdBdiwaBdiverivikasiB	diusahainB
diurusakanBdiupgredBdiupgrdB
diuninstalBdiulaaaaaaangB
ditungguinBditukerB	ditrunkanBditrimaBditopupBditindaklanjitiB	ditgkatknBdisruhBdispamBdisettingannyaB
diselesainBdiscountnyaBdiscBdisanaaBdisambunginB	disalahinBdisalahgunakanBdisabilitasBdisaat2B
dirumahajaB	diribetinBdirBdiqmbilB
diporomoinB	dipintainBdiphamiBdipertanggungjawabkanBdiperivikasiBdiperhatiinB
diperbaikuB
diperanjimBdipakekBdioprasikanBdiogoBdintambahkanBdinmorBdinB	dimintainB
dimerchantB
dimasukkinB
dilivechatB	dilaporinBdikomenBdikirmB	dikirimknBdikgB
dikeluarinBdikashB
dikarnakanBdijlsknBdijlesinB	dijlaskanBdiitingkatkanB	diinstallBdiikutinBdihubungkannB
dihilanginBdihhhBdihapeBdigunainB
dighostingBdifahamiBdienggoB
didukcapilBdidlmBdidengerBdiceklisBdicairinBdibuka2BdibtransferB	dibodohinBdibnrinBdiblockBdiblgBdiblangBdibilngB
dibersihinB
dibengkingB
dibekukaknBdibbukaB	dibatesinBdibasaBdibandinkanB
dibalesnyaBdibalasxBdiauruhBdiarahinB	diapproveBdiapknyaB	diandelinBdiamongBdiamonBdiambil2BdialihinB
dialfamartBdialamaiBdiadainBdia2BdhwonlotBdhaBdgunakanBdgunainBdganBdftarinBdewiBdewasaBdewaBdevlopetB	develoverB
developersBdevelopB	devaloperBdespoitBdesoBdesignBdesainB	dermadewiBdepanxBdenpasarBdengannBdengaBdengBdemikianBdeletBdelapanBdekstopBdehgakBdegdeganBdeganBdeehhBdedenBdealBddddhhhBddBdcuriBdbxBdbutuhkaBdbuksBdbtuhkanBdberikanBdbekukanBdbekekukanyaBdbantuBdaunBdatenginBdatanyBdatanBdatadiriBdata2BdartarBdaripdaB
daribpihakBdarahB	daqtifkanB	daptarnyaBdapetnyaBdapat2BdanhBdanbuatBdanauBdanasayaBdanaqB	dananyaaaB
danangelagB	danalaterBdanajadiparahBdanadariBdanaaaaBdamBdalammBdalahBdajjalBdajalBdahuluBdahalBdaglokB	daftrakanBdachBczpiz4BcyberBcvvBcuwanBcutBcustomorBcustomernyaBcustomBcustamernyaBcustamerdanaBcussssBcusBcurhatBcurencyBcumakBcukupppBcukuoBcukulBcukpBcuekinBcuBcsoBcrotBcreditBcrashBcraBcph1937BcoyyyyBcoxBcowokBcovernyaBcoverB	coustumerB	coustomerBcounsternyaBcouldBcotemerBcostumercareBcostomerBcopoBcoolBcontinueBcontactBconsumenB
connectionBconfirmBconeksiB	conectionB	complaintB
complainanB
comingsoonBcomfortableBcometarB	comersialBcolongBcollBcoksuBcoiBcocBcobalagiBcoalnyaBcmbB
closeforceBclosedBclikBckckckBcitraBciptaBcilokBcikarangBcijerahB
cibeunyingBcibBchipBchasBchargeB	challengeBcewaBcepetinBceoBcentarBcengirBcengarBcenelB	cenderungBcemasBcemanaBcemaBcelahBcekikBcekcokBcekakBcegahBcedeBcaturBcathbackB	catchplayBcatalogBcastemerBcashnyaBcasenyaBcarahBcapslockBcapekkBcapBcantikBcanterBcantBcampurB	calsenterBcaircairBcahceB	cacthbackBcacceBcacadBcabutBcabaBcaBbye2BbyarBbyaB	buzzbreakBbuzbeatBbuwatBbutuhnyB	butuh2nyaBbutiinBbutabBbusukkkBbusukkBbusinessBbusetBbuseetBburuukB	burukkkkkBburukkBbursaB	burikkkkkBburikkkB	buriikkkkBburBbunny69BbumiBbulnBbulakBbukainBbukaaaBbukBbugusBbuggB	bufferingBbuferingBbudimanB
bububababaBbuBbtngBbtnBbtgBbsudahBbsmBbsgussddBbruuuhhBbrtransaksiBbrtmbhBbrtambahBbrsaingBbrosing2BbrokirB
brmanfahatBbrliBbrisBbrentiBbrandaBbrandBbqngetBbozzBbotakBbosssssssssssssBbossssssssssssBbosquBbosqBbosokBbosa2BborosBbootBboonkkBboonganBboomBbongkarB	bommmmmmmBbolotB
bolehehgbmB
bolakbalikBbolaBbnyalBbnxBbntngBbntang5BbntangBbngstBbngsatBbngkeeeBbngatBbngaanBbnerinBbnayakBblsnBblsanBblotoootBblogB
blmselesaiBbllokBblkanganBblibliBblesanBblesBblengBblanjaanBblangB	blablablaBbknnyaBbkeBbkannyaBbitangB
bissaaaaaaB	bismillahBbisaohonBbisabisaBbirataBbiobdtaBbintqngBbintasngBbintankB	bintangyaB	bintangggBbintang555555Bbintang5Bbintang2BbintanBbingBbillsB	bilabgnyaBbikimB	bikiinnyaBbikenBbijimaneBbigituBbigBbidaBbibtangBbiatBbiasah2BbiarpunBbianyakBbiangetBbiaaBbgztB.bgusssssssssssssssssssssssssssssssssssssssssssBbgusnyaBbgusinBbgsssssBbgsdBbgnhBbggakBbgaimnaBbgaiBbfhoauBbexBbetterBbestttBbestlahBbesok2BbesattBbesanBberulang2kaliB	berualangBberuBbertransksiBberterimakadihBbertansaksiB
bertangungBbertanggungjawabBbersiap2B	berputar2BberpaBbermslhB
bermateraiB
bermasapahBbermasalahuluBbermangpaatBbermanfaB
bermamfaatBbermaanfaatBberkurngBberkasB
berkanfaatBberhrapBberhasilnyaaBberguanaB	berengsekBberehBberattBberahriBbentarBbenrrBbenihBbengongBbengetttBbengetBbenciBbenarvBbenamBbenaarBbembalBbelumaBbelit2BbelikanBbeliauBbeliaB	belanjainBbekuinBbejutaBbejibunBbeharBbegusBbegtuuBbegtuB
begitugituBbegitu2Bbegini2BbegeriBbegabungBbegBbeetttttBbeejamBbecauseBbebukanBbebrapaBbeberapakaliBbebenahBbebanknBbebalBbdiBbbyBbbjB
bbbbbbbbroBbbadusssBbbBbayaarBbautBbattBbatikBbasBbarruBbarkodBbarengBbapuukBbapukkkB	banyuanyaBbanyuBbanyakinnyaBbantalBbannkBbanksBbankinBbangusB	banguanyaBbangsatttttB	bangsatttBbangsatBbangsaaaatttBbangkruBbangkitBbangkekBbangkeeeBbanggaBbangetvdalamBbangetttttttttttttttttttBbangetttttttttB	bangedzzzBbangatttB	bandwidthBbambangBbalsanBbalsB	balesdongB	balesanyaB
balesannyaB
balesaannnBbakarBbajarBbaimBbaikkkBbahwaBbahasaBbaguuuuuusssssssBbaguuuuuussssB
baguuuusssBbaguuussssssBbaguussBbagusstBbagusssssssssssssssB	bagusssssB	bagusssddBbaguseBbagudBbagtBbagsBbagosBbagongB	bagiamanaBbagiaBbagemanaB
bagaimmanaBbagaimanBbagaimaBbaeBbadahalBbacoBbacaanyaBbacaannyBbabyBb4Bb1BayokBayiBayemBawokawokawokBawatBawamBawakBavlikasiBautentikBatminBatikBatentikBateBatawBatasinBataoBasyikBasyiappBasuransiBasupBastriaBassalammuallaikumBassBasilBasiiiikkBasiakBasetBaseemmmmBasalamualaikumBasalamualaikuBasal2anBaryBarkanBarisanBareaBapssBappstoreB	appsstoreBappsnyaBappnyBapplnyaBapniBaplokasiBaplisakiBaplinasiBaplilasiB
apliksinyaB	aplikatorB
aplikasiyaBaplikasinyaaaaaaaBaplikasinnyaB	aplikasi2B	aplikanyaBaplikadinyaB	aplikaasiBaplikaaiBapliasiBapliaksiBaplgB	apksinyahB	apklikasiBapkikasiBapk2BapilkasiBapiBapgretBapgreenBapgreatBapgradeBapgiBapgertB	apelikasiBapekaBapekBapegeredBapeeeesBapasBapapununBapanBapaliatBapakhBapakaiBapakBapaanihBapaaaaBapa2anBaowkoaowBaolikasiBanywhereBanytimeBanymoreBanyiiiiiiiiiingBanwBantrinBantriiiiiiiBantaraBanoBannyaBanjlokB
anjirrrrrrB	anjirrlahBanjinxBanjinkBanjinggggggghhgBanjimmBanjimB	anjiiiingBanjiiiiinggB
anjiiiiingBanjiiiiiiiiiiiingBanjerBanjengBanjeBanjayBanimasiBangsurBanggpBangapBandroBandminBandiBanderBandankalBandalinBancamBamsyongBamplikasinyaB	amplikasiBampirBamnBamminnnBaminBametBameBamdinB	amburadulBambangBamazingBamalBamaBalwaysBalunBalsaanBalpamartBalpaBalotB	alokasiknBalokasiBalmarhumBalikumB
alikasinyaBaliBalhmdulilahBalhamhamdulillahBalhamdullillahBalhamdullilahnyaBalhamdullilahB	alfamaretBalfBalesanBalesamB
alektronikBaldiB	alasannyeBalangkaBalaminBalahBalBakunygBakuntB	akunebgokBakumBakulakuBakubelumpernahBakuanBaktivkanBaktivinBaktipinBaktifkaBaktfBakteBaksiBakrabBakpBakmalBakhuBakhireBakhiratBajyBajuinBajkBajgggBajajjjBajahhBajaaaaBaingBaikasiBahliBahir2B	ahahahahaBagustBagstusBagsBagrepBagilBafuinBaflikasinyaBaflikasihnyaB	aflikasihBafkBafikBafgredBafdetBafBaenglBaealnyaBaduhhhhhhhhBadsBadohBadoBadmintBadministrationBadmiBadilBademBadatidakBadabeberapaBadabB	adaapakahBacuntBacountBacoountBaconB
accountnyaBaccoundBaccessBacaBabosBabistuBabdiBabdetnyaBabalabalBaayaB	aaplikasiBaampeBaakuBaahBaadaBaachBaaanBaaahBaaaaaBaaaaBa9Ba37fwBa37fB9tB990ribuB95rbB9578927B9362024B90gbB8xB8siangB8mpB8jtB88000B8401B840B820B7ratusanB7jtB7hariB7digitB7852B77ribuB77rbuB75000B750B700kB70B
6septemberB6gbB65000B6500B64gbB64B6242B62B60kB600ribuB600rbB5tuhB5tahunB5soreB5rbuB5mntB5menitB5juliB5gB57143B57B560kB55B542gB53rbB53B52500B51B500ribuB500kB50000B4x24B4xB4kalinyaB4kaliB4jutaB4jtaanB4duluB49B48megaB48500B46B44rbB447B43B40rbB400rbB40000B40B3thB3tahunB3rbB3menitanB3kaliB3jutaB3jtB3jamB3hrB3dluB3bulananB3akunB38B378B37B365rbB364kB36B35rbB35kB350B32B30x24B30xB30rbB30mbB30hriB30hrB300ribuB2x24jamB2voucherB2rtsB2rbB2jutaB2hriB2digitB292rbB27agstB25000B250B24xB23rbB220B21jamB20jtnB2018B2010B200kB2000000B20000B1xnxkoB1thnB1rbB1punyaB1nyaB1kenapaB1kaliB1jmB1harianB1gbB1bulanB195000B190kB18500B170kB163B160B15rbB155rbB150rbB1500x2B1500455B14danB14760317B146B140rbB139B130B12kB10ribuB10rbanB10malamB10kaliB10detikB101B100mbB100921B1000xB
1000rupiahB100000rbB100000B0895B050B05B02
ҥ
Const_5Const*
_output_shapes	
:?4*
dtype0	*??
value??B??	?4"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_20197
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_20202
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?5
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?5
value?5B?5 B?5
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
 
(
_index_lookup_layer
	keras_api
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
 	keras_api
R
!trainable_variables
"	variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'trainable_variables
(	variables
)regularization_losses
*	keras_api
?
+iter

,beta_1

-beta_2
	.decay
/learning_ratemjmkml%mm&mn0mo1mp2mqvrvsvt%vu&vv0vw1vx2vy
8
0
01
12
23
4
5
%6
&7
8
1
02
13
24
5
6
%7
&8
 
?
3non_trainable_variables
4layer_metrics

5layers
6layer_regularization_losses
	trainable_variables
7metrics

	variables
regularization_losses
 
3
8lookup_table
9token_counts
:	keras_api
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
;non_trainable_variables
<layer_metrics

=layers
>layer_regularization_losses
trainable_variables
?metrics
	variables
regularization_losses
~

0kernel
1recurrent_kernel
2bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
 

00
11
22

00
11
22
 
?
Dnon_trainable_variables
Elayer_metrics

Flayers
Glayer_regularization_losses
trainable_variables
Hmetrics
	variables

Istates
regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Jnon_trainable_variables
Klayer_metrics

Llayers
Mlayer_regularization_losses
trainable_variables
Nmetrics
	variables
regularization_losses
 
 
 
?
Onon_trainable_variables
Player_metrics

Qlayers
Rlayer_regularization_losses
!trainable_variables
Smetrics
"	variables
#regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
?
Tnon_trainable_variables
Ulayer_metrics

Vlayers
Wlayer_regularization_losses
'trainable_variables
Xmetrics
(	variables
)regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEgru/gru_cell/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEgru/gru_cell/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEgru/gru_cell/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
 
 
1
0
1
2
3
4
5
6
 

Y0
Z1

[_initializer
RP
tableGlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table
 
 
 
 
 
 

00
11
22

00
11
22
 
?
\non_trainable_variables
]layer_metrics

^layers
_layer_regularization_losses
@trainable_variables
`metrics
A	variables
Bregularization_losses
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	atotal
	bcount
c	variables
d	keras_api
D
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

a0
b1

c	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

h	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/gru/gru_cell/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/gru/gru_cell/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/gru/gru_cell/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/gru/gru_cell/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsgru/gru_cell/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kerneldense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_17490
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp,Adam/gru/gru_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpConst_6*0
Tin)
'2%		*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_20338
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasMutableHashTabletotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/gru/gru_cell/kernel/m$Adam/gru/gru_cell/recurrent_kernel/mAdam/gru/gru_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/gru/gru_cell/kernel/v$Adam/gru/gru_cell/recurrent_kernel/vAdam/gru/gru_cell/bias/v*.
Tin'
%2#*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_20450??2
??
?	
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17840

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_17541:
?N?7
$gru_gru_cell_readvariableop_resource:	?:
&gru_gru_cell_readvariableop_1_resource:
??9
&gru_gru_cell_readvariableop_4_resource:	@?6
$dense_matmul_readvariableop_resource:@L3
%dense_biasadd_readvariableop_resource:L8
&dense_1_matmul_readvariableop_resource:L5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?gru/gru_cell/ReadVariableOp?gru/gru_cell/ReadVariableOp_1?gru/gru_cell/ReadVariableOp_2?gru/gru_cell/ReadVariableOp_3?gru/gru_cell/ReadVariableOp_4?gru/gru_cell/ReadVariableOp_5?gru/gru_cell/ReadVariableOp_6?	gru/while?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_17541?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/17541*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/17541*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1t
	gru/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stack?
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1?
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2?
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_sliced
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessj
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
gru/zeros/packed/1?
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const?
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
	gru/zeros}
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose/perm?
gru/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0gru/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
gru/transpose[
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:2
gru/Shape_1?
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_1/stack?
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_1?
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_2?
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slice_1?
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
gru/TensorArrayV2/element_shape?
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2?
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9gru/TensorArrayUnstack/TensorListFromTensor/element_shape?
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+gru/TensorArrayUnstack/TensorListFromTensor?
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_2/stack?
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_1?
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_2?
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru/strided_slice_2?
gru/gru_cell/ones_like/ShapeShapegru/strided_slice_2:output:0*
T0*
_output_shapes
:2
gru/gru_cell/ones_like/Shape?
gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru/gru_cell/ones_like/Const?
gru/gru_cell/ones_likeFill%gru/gru_cell/ones_like/Shape:output:0%gru/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/ones_like?
gru/gru_cell/ones_like_1/ShapeShapegru/zeros:output:0*
T0*
_output_shapes
:2 
gru/gru_cell/ones_like_1/Shape?
gru/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
gru/gru_cell/ones_like_1/Const?
gru/gru_cell/ones_like_1Fill'gru/gru_cell/ones_like_1/Shape:output:0'gru/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/ones_like_1?
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru/gru_cell/ReadVariableOp?
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru/gru_cell/unstack?
gru/gru_cell/mulMulgru/strided_slice_2:output:0gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/mul?
gru/gru_cell/mul_1Mulgru/strided_slice_2:output:0gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/mul_1?
gru/gru_cell/mul_2Mulgru/strided_slice_2:output:0gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/mul_2?
gru/gru_cell/ReadVariableOp_1ReadVariableOp&gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru/gru_cell/ReadVariableOp_1?
 gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru/gru_cell/strided_slice/stack?
"gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"gru/gru_cell/strided_slice/stack_1?
"gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru/gru_cell/strided_slice/stack_2?
gru/gru_cell/strided_sliceStridedSlice%gru/gru_cell/ReadVariableOp_1:value:0)gru/gru_cell/strided_slice/stack:output:0+gru/gru_cell/strided_slice/stack_1:output:0+gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice?
gru/gru_cell/MatMulMatMulgru/gru_cell/mul:z:0#gru/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul?
gru/gru_cell/ReadVariableOp_2ReadVariableOp&gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru/gru_cell/ReadVariableOp_2?
"gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"gru/gru_cell/strided_slice_1/stack?
$gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$gru/gru_cell/strided_slice_1/stack_1?
$gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_1/stack_2?
gru/gru_cell/strided_slice_1StridedSlice%gru/gru_cell/ReadVariableOp_2:value:0+gru/gru_cell/strided_slice_1/stack:output:0-gru/gru_cell/strided_slice_1/stack_1:output:0-gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_1?
gru/gru_cell/MatMul_1MatMulgru/gru_cell/mul_1:z:0%gru/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_1?
gru/gru_cell/ReadVariableOp_3ReadVariableOp&gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru/gru_cell/ReadVariableOp_3?
"gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"gru/gru_cell/strided_slice_2/stack?
$gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru/gru_cell/strided_slice_2/stack_1?
$gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_2/stack_2?
gru/gru_cell/strided_slice_2StridedSlice%gru/gru_cell/ReadVariableOp_3:value:0+gru/gru_cell/strided_slice_2/stack:output:0-gru/gru_cell/strided_slice_2/stack_1:output:0-gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_2?
gru/gru_cell/MatMul_2MatMulgru/gru_cell/mul_2:z:0%gru/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_2?
"gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_3/stack?
$gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2&
$gru/gru_cell/strided_slice_3/stack_1?
$gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_3/stack_2?
gru/gru_cell/strided_slice_3StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_3/stack:output:0-gru/gru_cell/strided_slice_3/stack_1:output:0-gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru/gru_cell/strided_slice_3?
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0%gru/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd?
"gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2$
"gru/gru_cell/strided_slice_4/stack?
$gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2&
$gru/gru_cell/strided_slice_4/stack_1?
$gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_4/stack_2?
gru/gru_cell/strided_slice_4StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_4/stack:output:0-gru/gru_cell/strided_slice_4/stack_1:output:0-gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru/gru_cell/strided_slice_4?
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0%gru/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_1?
"gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2$
"gru/gru_cell/strided_slice_5/stack?
$gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$gru/gru_cell/strided_slice_5/stack_1?
$gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_5/stack_2?
gru/gru_cell/strided_slice_5StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_5/stack:output:0-gru/gru_cell/strided_slice_5/stack_1:output:0-gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru/gru_cell/strided_slice_5?
gru/gru_cell/BiasAdd_2BiasAddgru/gru_cell/MatMul_2:product:0%gru/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_2?
gru/gru_cell/mul_3Mulgru/zeros:output:0!gru/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_3?
gru/gru_cell/mul_4Mulgru/zeros:output:0!gru/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_4?
gru/gru_cell/mul_5Mulgru/zeros:output:0!gru/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_5?
gru/gru_cell/ReadVariableOp_4ReadVariableOp&gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru/gru_cell/ReadVariableOp_4?
"gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gru/gru_cell/strided_slice_6/stack?
$gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$gru/gru_cell/strided_slice_6/stack_1?
$gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_6/stack_2?
gru/gru_cell/strided_slice_6StridedSlice%gru/gru_cell/ReadVariableOp_4:value:0+gru/gru_cell/strided_slice_6/stack:output:0-gru/gru_cell/strided_slice_6/stack_1:output:0-gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_6?
gru/gru_cell/MatMul_3MatMulgru/gru_cell/mul_3:z:0%gru/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_3?
gru/gru_cell/ReadVariableOp_5ReadVariableOp&gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru/gru_cell/ReadVariableOp_5?
"gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"gru/gru_cell/strided_slice_7/stack?
$gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$gru/gru_cell/strided_slice_7/stack_1?
$gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_7/stack_2?
gru/gru_cell/strided_slice_7StridedSlice%gru/gru_cell/ReadVariableOp_5:value:0+gru/gru_cell/strided_slice_7/stack:output:0-gru/gru_cell/strided_slice_7/stack_1:output:0-gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_7?
gru/gru_cell/MatMul_4MatMulgru/gru_cell/mul_4:z:0%gru/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_4?
"gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_8/stack?
$gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2&
$gru/gru_cell/strided_slice_8/stack_1?
$gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_8/stack_2?
gru/gru_cell/strided_slice_8StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_8/stack:output:0-gru/gru_cell/strided_slice_8/stack_1:output:0-gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru/gru_cell/strided_slice_8?
gru/gru_cell/BiasAdd_3BiasAddgru/gru_cell/MatMul_3:product:0%gru/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_3?
"gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2$
"gru/gru_cell/strided_slice_9/stack?
$gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2&
$gru/gru_cell/strided_slice_9/stack_1?
$gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_9/stack_2?
gru/gru_cell/strided_slice_9StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_9/stack:output:0-gru/gru_cell/strided_slice_9/stack_1:output:0-gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru/gru_cell/strided_slice_9?
gru/gru_cell/BiasAdd_4BiasAddgru/gru_cell/MatMul_4:product:0%gru/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_4?
gru/gru_cell/addAddV2gru/gru_cell/BiasAdd:output:0gru/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/Sigmoid?
gru/gru_cell/add_1AddV2gru/gru_cell/BiasAdd_1:output:0gru/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add_1?
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/Sigmoid_1?
gru/gru_cell/ReadVariableOp_6ReadVariableOp&gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru/gru_cell/ReadVariableOp_6?
#gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#gru/gru_cell/strided_slice_10/stack?
%gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%gru/gru_cell/strided_slice_10/stack_1?
%gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%gru/gru_cell/strided_slice_10/stack_2?
gru/gru_cell/strided_slice_10StridedSlice%gru/gru_cell/ReadVariableOp_6:value:0,gru/gru_cell/strided_slice_10/stack:output:0.gru/gru_cell/strided_slice_10/stack_1:output:0.gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_10?
gru/gru_cell/MatMul_5MatMulgru/gru_cell/mul_5:z:0&gru/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_5?
#gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2%
#gru/gru_cell/strided_slice_11/stack?
%gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%gru/gru_cell/strided_slice_11/stack_1?
%gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%gru/gru_cell/strided_slice_11/stack_2?
gru/gru_cell/strided_slice_11StridedSlicegru/gru_cell/unstack:output:1,gru/gru_cell/strided_slice_11/stack:output:0.gru/gru_cell/strided_slice_11/stack_1:output:0.gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru/gru_cell/strided_slice_11?
gru/gru_cell/BiasAdd_5BiasAddgru/gru_cell/MatMul_5:product:0&gru/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_5?
gru/gru_cell/mul_6Mulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_6?
gru/gru_cell/add_2AddV2gru/gru_cell/BiasAdd_2:output:0gru/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add_2x
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/Tanh?
gru/gru_cell/mul_7Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_7m
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru/gru_cell/sub/x?
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/sub?
gru/gru_cell/mul_8Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_8?
gru/gru_cell/add_3AddV2gru/gru_cell/mul_7:z:0gru/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add_3?
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2#
!gru/TensorArrayV2_1/element_shape?
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2_1V
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru/time?
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru/while/maximum_iterationsr
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru/while/loop_counter?
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource&gru_gru_cell_readvariableop_1_resource&gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( * 
bodyR
gru_while_body_17674* 
condR
gru_while_cond_17673*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
	gru/while?
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   26
4gru/TensorArrayV2Stack/TensorListStack/element_shape?
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02(
&gru/TensorArrayV2Stack/TensorListStack?
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru/strided_slice_3/stack?
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_3/stack_1?
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_3/stack_2?
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
gru/strided_slice_3?
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose_1/perm?
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
gru/transpose_1n
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/runtime?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@L*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulgru/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2
dense/BiasAddz
dropout/IdentityIdentitydense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L2
dropout/Identity?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:L*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmaxt
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/gru_cell/ReadVariableOp^gru/gru_cell/ReadVariableOp_1^gru/gru_cell/ReadVariableOp_2^gru/gru_cell/ReadVariableOp_3^gru/gru_cell/ReadVariableOp_4^gru/gru_cell/ReadVariableOp_5^gru/gru_cell/ReadVariableOp_6
^gru/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2>
gru/gru_cell/ReadVariableOp_1gru/gru_cell/ReadVariableOp_12>
gru/gru_cell/ReadVariableOp_2gru/gru_cell/ReadVariableOp_22>
gru/gru_cell/ReadVariableOp_3gru/gru_cell/ReadVariableOp_32>
gru/gru_cell/ReadVariableOp_4gru/gru_cell/ReadVariableOp_42>
gru/gru_cell/ReadVariableOp_5gru/gru_cell/ReadVariableOp_52>
gru/gru_cell/ReadVariableOp_6gru/gru_cell/ReadVariableOp_62
	gru/while	gru/while2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_save_fn_20181
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2A
?MutableHashTable_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1Q
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const\

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:2

Identity_2W

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1^

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:2

Identity_5?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
,
__inference__destroyer_20147
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
#__inference_signature_wrapper_17490
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	@?
	unknown_7:@L
	unknown_8:L
	unknown_9:L

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_155132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_18876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_18876___redundant_placeholder03
/while_while_cond_18876___redundant_placeholder13
/while_while_cond_18876___redundant_placeholder23
/while_while_cond_18876___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
'__inference_dense_1_layer_call_fn_19849

inputs
unknown:L
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_166612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
??
?
while_body_18877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	?>
*while_gru_cell_readvariableop_1_resource_0:
??=
*while_gru_cell_readvariableop_4_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	?<
(while_gru_cell_readvariableop_1_resource:
??;
(while_gru_cell_readvariableop_4_resource:	@???while/gru_cell/ReadVariableOp?while/gru_cell/ReadVariableOp_1?while/gru_cell/ReadVariableOp_2?while/gru_cell/ReadVariableOp_3?while/gru_cell/ReadVariableOp_4?while/gru_cell/ReadVariableOp_5?while/gru_cell/ReadVariableOp_6?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/Shape?
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
while/gru_cell/ones_like/Const?
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/ones_like?
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
while/gru_cell/dropout/Const?
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout/Mul?
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/gru_cell/dropout/Shape?
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ޫ25
3while/gru_cell/dropout/random_uniform/RandomUniform?
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%while/gru_cell/dropout/GreaterEqual/y?
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#while/gru_cell/dropout/GreaterEqual?
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout/Cast?
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout/Mul_1?
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_1/Const?
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout_1/Mul?
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_1/Shape?
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???27
5while/gru_cell/dropout_1/random_uniform/RandomUniform?
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_1/GreaterEqual/y?
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%while/gru_cell/dropout_1/GreaterEqual?
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout_1/Cast?
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2 
while/gru_cell/dropout_1/Mul_1?
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_2/Const?
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout_2/Mul?
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_2/Shape?
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ː?27
5while/gru_cell/dropout_2/random_uniform/RandomUniform?
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_2/GreaterEqual/y?
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%while/gru_cell/dropout_2/GreaterEqual?
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout_2/Cast?
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2 
while/gru_cell/dropout_2/Mul_1?
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/Shape?
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell/ones_like_1/Const?
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/ones_like_1?
while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_3/Const?
while/gru_cell/dropout_3/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_3/Mul?
while/gru_cell/dropout_3/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_3/Shape?
5while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5while/gru_cell/dropout_3/random_uniform/RandomUniform?
'while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_3/GreaterEqual/y?
%while/gru_cell/dropout_3/GreaterEqualGreaterEqual>while/gru_cell/dropout_3/random_uniform/RandomUniform:output:00while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_3/GreaterEqual?
while/gru_cell/dropout_3/CastCast)while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_3/Cast?
while/gru_cell/dropout_3/Mul_1Mul while/gru_cell/dropout_3/Mul:z:0!while/gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_3/Mul_1?
while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_4/Const?
while/gru_cell/dropout_4/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_4/Mul?
while/gru_cell/dropout_4/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_4/Shape?
5while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2촛27
5while/gru_cell/dropout_4/random_uniform/RandomUniform?
'while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_4/GreaterEqual/y?
%while/gru_cell/dropout_4/GreaterEqualGreaterEqual>while/gru_cell/dropout_4/random_uniform/RandomUniform:output:00while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_4/GreaterEqual?
while/gru_cell/dropout_4/CastCast)while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_4/Cast?
while/gru_cell/dropout_4/Mul_1Mul while/gru_cell/dropout_4/Mul:z:0!while/gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_4/Mul_1?
while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_5/Const?
while/gru_cell/dropout_5/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_5/Mul?
while/gru_cell/dropout_5/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_5/Shape?
5while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5while/gru_cell/dropout_5/random_uniform/RandomUniform?
'while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_5/GreaterEqual/y?
%while/gru_cell/dropout_5/GreaterEqualGreaterEqual>while/gru_cell/dropout_5/random_uniform/RandomUniform:output:00while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_5/GreaterEqual?
while/gru_cell/dropout_5/CastCast)while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_5/Cast?
while/gru_cell/dropout_5/Mul_1Mul while/gru_cell/dropout_5/Mul:z:0!while/gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_5/Mul_1?
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02
while/gru_cell/ReadVariableOp?
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell/unstack?
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul?
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_1?
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_2?
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_1?
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stack?
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice/stack_1?
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2?
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
while/gru_cell/strided_slice?
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul?
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_2?
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_1/stack?
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_1/stack_1?
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2?
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1?
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_1?
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_3?
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$while/gru_cell/strided_slice_2/stack?
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1?
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2?
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2?
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_2?
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stack?
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_3/stack_1?
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2?
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_3?
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd?
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_4/stack?
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_4/stack_1?
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2?
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_4?
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_1?
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2&
$while/gru_cell/strided_slice_5/stack?
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1?
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2?
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2 
while/gru_cell/strided_slice_5?
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_2?
while/gru_cell/mul_3Mulwhile_placeholder_2"while/gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_3?
while/gru_cell/mul_4Mulwhile_placeholder_2"while/gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_4?
while/gru_cell/mul_5Mulwhile_placeholder_2"while/gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_5?
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_4?
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack?
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2(
&while/gru_cell/strided_slice_6/stack_1?
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2?
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6?
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_3?
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_5?
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_7/stack?
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_7/stack_1?
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2?
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7?
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_4?
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stack?
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_8/stack_1?
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2?
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_8?
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_3?
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_9/stack?
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_9/stack_1?
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2?
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_9?
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_4?
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add?
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid?
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_1?
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid_1?
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_6?
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/gru_cell/strided_slice_10/stack?
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1?
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2?
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10?
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_5?
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2'
%while/gru_cell/strided_slice_11/stack?
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1?
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2?
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2!
while/gru_cell/strided_slice_11?
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_5?
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_6?
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_2~
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Tanh?
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell/sub/x?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/sub?
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_8?
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
2__inference_model_calcbase_GRU_layer_call_fn_18351

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	@?
	unknown_7:@L
	unknown_8:L
	unknown_9:L

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_172512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
#__inference_gru_layer_call_fn_19761
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_160352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
2__inference_model_calcbase_GRU_layer_call_fn_18322

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	@?
	unknown_7:@L
	unknown_8:L
	unknown_9:L

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_166682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
2__inference_model_calcbase_GRU_layer_call_fn_16695
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	@?
	unknown_7:@L
	unknown_8:L
	unknown_9:L

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_166682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?=
?
>__inference_gru_layer_call_and_return_conditional_losses_16035

inputs!
gru_cell_15959:	?"
gru_cell_15961:
??!
gru_cell_15963:	@?
identity?? gru_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_15959gru_cell_15961gru_cell_15963*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_159042"
 gru_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_15959gru_cell_15961gru_cell_15963*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_15971*
condR
while_cond_15970*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityy
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_19802

inputs
unknown:@L
	unknown_0:L
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_166372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????L2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_16725

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????L2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????L*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????L2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????L2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????L2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????L2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????L:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_15513
input_1b
^model_calcbase_gru_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handlec
_model_calcbase_gru_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	?
;model_calcbase_gru_text_vectorization_string_lookup_equal_yB
>model_calcbase_gru_text_vectorization_string_lookup_selectv2_t	G
3model_calcbase_gru_embedding_embedding_lookup_15214:
?N?J
7model_calcbase_gru_gru_gru_cell_readvariableop_resource:	?M
9model_calcbase_gru_gru_gru_cell_readvariableop_1_resource:
??L
9model_calcbase_gru_gru_gru_cell_readvariableop_4_resource:	@?I
7model_calcbase_gru_dense_matmul_readvariableop_resource:@LF
8model_calcbase_gru_dense_biasadd_readvariableop_resource:LK
9model_calcbase_gru_dense_1_matmul_readvariableop_resource:LH
:model_calcbase_gru_dense_1_biasadd_readvariableop_resource:
identity??/model_calcbase_GRU/dense/BiasAdd/ReadVariableOp?.model_calcbase_GRU/dense/MatMul/ReadVariableOp?1model_calcbase_GRU/dense_1/BiasAdd/ReadVariableOp?0model_calcbase_GRU/dense_1/MatMul/ReadVariableOp?-model_calcbase_GRU/embedding/embedding_lookup?.model_calcbase_GRU/gru/gru_cell/ReadVariableOp?0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_1?0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_2?0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_3?0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_4?0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_5?0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_6?model_calcbase_GRU/gru/while?Qmodel_calcbase_GRU/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
1model_calcbase_GRU/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????23
1model_calcbase_GRU/text_vectorization/StringLower?
8model_calcbase_GRU/text_vectorization/StaticRegexReplaceStaticRegexReplace:model_calcbase_GRU/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2:
8model_calcbase_GRU/text_vectorization/StaticRegexReplace?
-model_calcbase_GRU/text_vectorization/SqueezeSqueezeAmodel_calcbase_GRU/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2/
-model_calcbase_GRU/text_vectorization/Squeeze?
7model_calcbase_GRU/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 29
7model_calcbase_GRU/text_vectorization/StringSplit/Const?
?model_calcbase_GRU/text_vectorization/StringSplit/StringSplitV2StringSplitV26model_calcbase_GRU/text_vectorization/Squeeze:output:0@model_calcbase_GRU/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2A
?model_calcbase_GRU/text_vectorization/StringSplit/StringSplitV2?
Emodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Emodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack?
Gmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2I
Gmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack_1?
Gmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack_2?
?model_calcbase_GRU/text_vectorization/StringSplit/strided_sliceStridedSliceImodel_calcbase_GRU/text_vectorization/StringSplit/StringSplitV2:indices:0Nmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack:output:0Pmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack_1:output:0Pmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2A
?model_calcbase_GRU/text_vectorization/StringSplit/strided_slice?
Gmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack?
Imodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Imodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack_1?
Imodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Imodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack_2?
Amodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1StridedSliceGmodel_calcbase_GRU/text_vectorization/StringSplit/StringSplitV2:shape:0Pmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack:output:0Rmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Rmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2C
Amodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1?
hmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastHmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2j
hmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
jmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastJmodel_calcbase_GRU/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2l
jmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
rmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapelmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2t
rmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
rmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2t
rmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
qmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd{model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0{model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2s
qmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
vmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2x
vmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterzmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2v
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
qmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastxmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2s
qmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2v
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
pmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxlmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0}model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2r
pmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
rmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2t
rmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
pmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ymodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0{model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2r
pmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
pmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulumodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2r
pmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumnmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2v
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumnmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0xmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2v
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2v
tmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
umodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountlmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0xmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0}model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2w
umodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
omodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2q
omodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
jmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum|model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0xmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2l
jmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
smodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2u
smodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
omodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2q
omodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
jmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2|model_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0pmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0xmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2l
jmodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Qmodel_calcbase_GRU/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2^model_calcbase_gru_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleHmodel_calcbase_GRU/text_vectorization/StringSplit/StringSplitV2:values:0_model_calcbase_gru_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2S
Qmodel_calcbase_GRU/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
9model_calcbase_GRU/text_vectorization/string_lookup/EqualEqualHmodel_calcbase_GRU/text_vectorization/StringSplit/StringSplitV2:values:0;model_calcbase_gru_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2;
9model_calcbase_GRU/text_vectorization/string_lookup/Equal?
<model_calcbase_GRU/text_vectorization/string_lookup/SelectV2SelectV2=model_calcbase_GRU/text_vectorization/string_lookup/Equal:z:0>model_calcbase_gru_text_vectorization_string_lookup_selectv2_tZmodel_calcbase_GRU/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2>
<model_calcbase_GRU/text_vectorization/string_lookup/SelectV2?
<model_calcbase_GRU/text_vectorization/string_lookup/IdentityIdentityEmodel_calcbase_GRU/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2>
<model_calcbase_GRU/text_vectorization/string_lookup/Identity?
Bmodel_calcbase_GRU/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2D
Bmodel_calcbase_GRU/text_vectorization/RaggedToTensor/default_value?
:model_calcbase_GRU/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       2<
:model_calcbase_GRU/text_vectorization/RaggedToTensor/Const?
Imodel_calcbase_GRU/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorCmodel_calcbase_GRU/text_vectorization/RaggedToTensor/Const:output:0Emodel_calcbase_GRU/text_vectorization/string_lookup/Identity:output:0Kmodel_calcbase_GRU/text_vectorization/RaggedToTensor/default_value:output:0smodel_calcbase_GRU/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2K
Imodel_calcbase_GRU/text_vectorization/RaggedToTensor/RaggedTensorToTensor?
-model_calcbase_GRU/embedding/embedding_lookupResourceGather3model_calcbase_gru_embedding_embedding_lookup_15214Rmodel_calcbase_GRU/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*F
_class<
:8loc:@model_calcbase_GRU/embedding/embedding_lookup/15214*,
_output_shapes
:??????????*
dtype02/
-model_calcbase_GRU/embedding/embedding_lookup?
6model_calcbase_GRU/embedding/embedding_lookup/IdentityIdentity6model_calcbase_GRU/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*F
_class<
:8loc:@model_calcbase_GRU/embedding/embedding_lookup/15214*,
_output_shapes
:??????????28
6model_calcbase_GRU/embedding/embedding_lookup/Identity?
8model_calcbase_GRU/embedding/embedding_lookup/Identity_1Identity?model_calcbase_GRU/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2:
8model_calcbase_GRU/embedding/embedding_lookup/Identity_1?
model_calcbase_GRU/gru/ShapeShapeAmodel_calcbase_GRU/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
model_calcbase_GRU/gru/Shape?
*model_calcbase_GRU/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*model_calcbase_GRU/gru/strided_slice/stack?
,model_calcbase_GRU/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_calcbase_GRU/gru/strided_slice/stack_1?
,model_calcbase_GRU/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,model_calcbase_GRU/gru/strided_slice/stack_2?
$model_calcbase_GRU/gru/strided_sliceStridedSlice%model_calcbase_GRU/gru/Shape:output:03model_calcbase_GRU/gru/strided_slice/stack:output:05model_calcbase_GRU/gru/strided_slice/stack_1:output:05model_calcbase_GRU/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$model_calcbase_GRU/gru/strided_slice?
"model_calcbase_GRU/gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2$
"model_calcbase_GRU/gru/zeros/mul/y?
 model_calcbase_GRU/gru/zeros/mulMul-model_calcbase_GRU/gru/strided_slice:output:0+model_calcbase_GRU/gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 model_calcbase_GRU/gru/zeros/mul?
#model_calcbase_GRU/gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#model_calcbase_GRU/gru/zeros/Less/y?
!model_calcbase_GRU/gru/zeros/LessLess$model_calcbase_GRU/gru/zeros/mul:z:0,model_calcbase_GRU/gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!model_calcbase_GRU/gru/zeros/Less?
%model_calcbase_GRU/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_calcbase_GRU/gru/zeros/packed/1?
#model_calcbase_GRU/gru/zeros/packedPack-model_calcbase_GRU/gru/strided_slice:output:0.model_calcbase_GRU/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#model_calcbase_GRU/gru/zeros/packed?
"model_calcbase_GRU/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_calcbase_GRU/gru/zeros/Const?
model_calcbase_GRU/gru/zerosFill,model_calcbase_GRU/gru/zeros/packed:output:0+model_calcbase_GRU/gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
model_calcbase_GRU/gru/zeros?
%model_calcbase_GRU/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%model_calcbase_GRU/gru/transpose/perm?
 model_calcbase_GRU/gru/transpose	TransposeAmodel_calcbase_GRU/embedding/embedding_lookup/Identity_1:output:0.model_calcbase_GRU/gru/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2"
 model_calcbase_GRU/gru/transpose?
model_calcbase_GRU/gru/Shape_1Shape$model_calcbase_GRU/gru/transpose:y:0*
T0*
_output_shapes
:2 
model_calcbase_GRU/gru/Shape_1?
,model_calcbase_GRU/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_calcbase_GRU/gru/strided_slice_1/stack?
.model_calcbase_GRU/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_calcbase_GRU/gru/strided_slice_1/stack_1?
.model_calcbase_GRU/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_calcbase_GRU/gru/strided_slice_1/stack_2?
&model_calcbase_GRU/gru/strided_slice_1StridedSlice'model_calcbase_GRU/gru/Shape_1:output:05model_calcbase_GRU/gru/strided_slice_1/stack:output:07model_calcbase_GRU/gru/strided_slice_1/stack_1:output:07model_calcbase_GRU/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_calcbase_GRU/gru/strided_slice_1?
2model_calcbase_GRU/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2model_calcbase_GRU/gru/TensorArrayV2/element_shape?
$model_calcbase_GRU/gru/TensorArrayV2TensorListReserve;model_calcbase_GRU/gru/TensorArrayV2/element_shape:output:0/model_calcbase_GRU/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$model_calcbase_GRU/gru/TensorArrayV2?
Lmodel_calcbase_GRU/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2N
Lmodel_calcbase_GRU/gru/TensorArrayUnstack/TensorListFromTensor/element_shape?
>model_calcbase_GRU/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$model_calcbase_GRU/gru/transpose:y:0Umodel_calcbase_GRU/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>model_calcbase_GRU/gru/TensorArrayUnstack/TensorListFromTensor?
,model_calcbase_GRU/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model_calcbase_GRU/gru/strided_slice_2/stack?
.model_calcbase_GRU/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_calcbase_GRU/gru/strided_slice_2/stack_1?
.model_calcbase_GRU/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_calcbase_GRU/gru/strided_slice_2/stack_2?
&model_calcbase_GRU/gru/strided_slice_2StridedSlice$model_calcbase_GRU/gru/transpose:y:05model_calcbase_GRU/gru/strided_slice_2/stack:output:07model_calcbase_GRU/gru/strided_slice_2/stack_1:output:07model_calcbase_GRU/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2(
&model_calcbase_GRU/gru/strided_slice_2?
/model_calcbase_GRU/gru/gru_cell/ones_like/ShapeShape/model_calcbase_GRU/gru/strided_slice_2:output:0*
T0*
_output_shapes
:21
/model_calcbase_GRU/gru/gru_cell/ones_like/Shape?
/model_calcbase_GRU/gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/model_calcbase_GRU/gru/gru_cell/ones_like/Const?
)model_calcbase_GRU/gru/gru_cell/ones_likeFill8model_calcbase_GRU/gru/gru_cell/ones_like/Shape:output:08model_calcbase_GRU/gru/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2+
)model_calcbase_GRU/gru/gru_cell/ones_like?
1model_calcbase_GRU/gru/gru_cell/ones_like_1/ShapeShape%model_calcbase_GRU/gru/zeros:output:0*
T0*
_output_shapes
:23
1model_calcbase_GRU/gru/gru_cell/ones_like_1/Shape?
1model_calcbase_GRU/gru/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1model_calcbase_GRU/gru/gru_cell/ones_like_1/Const?
+model_calcbase_GRU/gru/gru_cell/ones_like_1Fill:model_calcbase_GRU/gru/gru_cell/ones_like_1/Shape:output:0:model_calcbase_GRU/gru/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/gru_cell/ones_like_1?
.model_calcbase_GRU/gru/gru_cell/ReadVariableOpReadVariableOp7model_calcbase_gru_gru_gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype020
.model_calcbase_GRU/gru/gru_cell/ReadVariableOp?
'model_calcbase_GRU/gru/gru_cell/unstackUnpack6model_calcbase_GRU/gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2)
'model_calcbase_GRU/gru/gru_cell/unstack?
#model_calcbase_GRU/gru/gru_cell/mulMul/model_calcbase_GRU/gru/strided_slice_2:output:02model_calcbase_GRU/gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2%
#model_calcbase_GRU/gru/gru_cell/mul?
%model_calcbase_GRU/gru/gru_cell/mul_1Mul/model_calcbase_GRU/gru/strided_slice_2:output:02model_calcbase_GRU/gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%model_calcbase_GRU/gru/gru_cell/mul_1?
%model_calcbase_GRU/gru/gru_cell/mul_2Mul/model_calcbase_GRU/gru/strided_slice_2:output:02model_calcbase_GRU/gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%model_calcbase_GRU/gru/gru_cell/mul_2?
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_1ReadVariableOp9model_calcbase_gru_gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype022
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_1?
3model_calcbase_GRU/gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3model_calcbase_GRU/gru/gru_cell/strided_slice/stack?
5model_calcbase_GRU/gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   27
5model_calcbase_GRU/gru/gru_cell/strided_slice/stack_1?
5model_calcbase_GRU/gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5model_calcbase_GRU/gru/gru_cell/strided_slice/stack_2?
-model_calcbase_GRU/gru/gru_cell/strided_sliceStridedSlice8model_calcbase_GRU/gru/gru_cell/ReadVariableOp_1:value:0<model_calcbase_GRU/gru/gru_cell/strided_slice/stack:output:0>model_calcbase_GRU/gru/gru_cell/strided_slice/stack_1:output:0>model_calcbase_GRU/gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2/
-model_calcbase_GRU/gru/gru_cell/strided_slice?
&model_calcbase_GRU/gru/gru_cell/MatMulMatMul'model_calcbase_GRU/gru/gru_cell/mul:z:06model_calcbase_GRU/gru/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2(
&model_calcbase_GRU/gru/gru_cell/MatMul?
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_2ReadVariableOp9model_calcbase_gru_gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype022
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_2?
5model_calcbase_GRU/gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_1StridedSlice8model_calcbase_GRU/gru/gru_cell/ReadVariableOp_2:value:0>model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask21
/model_calcbase_GRU/gru/gru_cell/strided_slice_1?
(model_calcbase_GRU/gru/gru_cell/MatMul_1MatMul)model_calcbase_GRU/gru/gru_cell/mul_1:z:08model_calcbase_GRU/gru/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2*
(model_calcbase_GRU/gru/gru_cell/MatMul_1?
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_3ReadVariableOp9model_calcbase_gru_gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype022
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_3?
5model_calcbase_GRU/gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_2StridedSlice8model_calcbase_GRU/gru/gru_cell/ReadVariableOp_3:value:0>model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask21
/model_calcbase_GRU/gru/gru_cell/strided_slice_2?
(model_calcbase_GRU/gru/gru_cell/MatMul_2MatMul)model_calcbase_GRU/gru/gru_cell/mul_2:z:08model_calcbase_GRU/gru/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2*
(model_calcbase_GRU/gru/gru_cell/MatMul_2?
5model_calcbase_GRU/gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@29
7model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_3StridedSlice0model_calcbase_GRU/gru/gru_cell/unstack:output:0>model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask21
/model_calcbase_GRU/gru/gru_cell/strided_slice_3?
'model_calcbase_GRU/gru/gru_cell/BiasAddBiasAdd0model_calcbase_GRU/gru/gru_cell/MatMul:product:08model_calcbase_GRU/gru/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2)
'model_calcbase_GRU/gru/gru_cell/BiasAdd?
5model_calcbase_GRU/gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@27
5model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?29
7model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_4StridedSlice0model_calcbase_GRU/gru/gru_cell/unstack:output:0>model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@21
/model_calcbase_GRU/gru/gru_cell/strided_slice_4?
)model_calcbase_GRU/gru/gru_cell/BiasAdd_1BiasAdd2model_calcbase_GRU/gru/gru_cell/MatMul_1:product:08model_calcbase_GRU/gru/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/gru_cell/BiasAdd_1?
5model_calcbase_GRU/gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?27
5model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_5StridedSlice0model_calcbase_GRU/gru/gru_cell/unstack:output:0>model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask21
/model_calcbase_GRU/gru/gru_cell/strided_slice_5?
)model_calcbase_GRU/gru/gru_cell/BiasAdd_2BiasAdd2model_calcbase_GRU/gru/gru_cell/MatMul_2:product:08model_calcbase_GRU/gru/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/gru_cell/BiasAdd_2?
%model_calcbase_GRU/gru/gru_cell/mul_3Mul%model_calcbase_GRU/gru/zeros:output:04model_calcbase_GRU/gru/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/mul_3?
%model_calcbase_GRU/gru/gru_cell/mul_4Mul%model_calcbase_GRU/gru/zeros:output:04model_calcbase_GRU/gru/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/mul_4?
%model_calcbase_GRU/gru/gru_cell/mul_5Mul%model_calcbase_GRU/gru/zeros:output:04model_calcbase_GRU/gru/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/mul_5?
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_4ReadVariableOp9model_calcbase_gru_gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype022
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_4?
5model_calcbase_GRU/gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   29
7model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_6StridedSlice8model_calcbase_GRU/gru/gru_cell/ReadVariableOp_4:value:0>model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/model_calcbase_GRU/gru/gru_cell/strided_slice_6?
(model_calcbase_GRU/gru/gru_cell/MatMul_3MatMul)model_calcbase_GRU/gru/gru_cell/mul_3:z:08model_calcbase_GRU/gru/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2*
(model_calcbase_GRU/gru/gru_cell/MatMul_3?
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_5ReadVariableOp9model_calcbase_gru_gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype022
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_5?
5model_calcbase_GRU/gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_7StridedSlice8model_calcbase_GRU/gru/gru_cell/ReadVariableOp_5:value:0>model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/model_calcbase_GRU/gru/gru_cell/strided_slice_7?
(model_calcbase_GRU/gru/gru_cell/MatMul_4MatMul)model_calcbase_GRU/gru/gru_cell/mul_4:z:08model_calcbase_GRU/gru/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2*
(model_calcbase_GRU/gru/gru_cell/MatMul_4?
5model_calcbase_GRU/gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@29
7model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_8StridedSlice0model_calcbase_GRU/gru/gru_cell/unstack:output:1>model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask21
/model_calcbase_GRU/gru/gru_cell/strided_slice_8?
)model_calcbase_GRU/gru/gru_cell/BiasAdd_3BiasAdd2model_calcbase_GRU/gru/gru_cell/MatMul_3:product:08model_calcbase_GRU/gru/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/gru_cell/BiasAdd_3?
5model_calcbase_GRU/gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@27
5model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack?
7model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?29
7model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack_1?
7model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack_2?
/model_calcbase_GRU/gru/gru_cell/strided_slice_9StridedSlice0model_calcbase_GRU/gru/gru_cell/unstack:output:1>model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack_1:output:0@model_calcbase_GRU/gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@21
/model_calcbase_GRU/gru/gru_cell/strided_slice_9?
)model_calcbase_GRU/gru/gru_cell/BiasAdd_4BiasAdd2model_calcbase_GRU/gru/gru_cell/MatMul_4:product:08model_calcbase_GRU/gru/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/gru_cell/BiasAdd_4?
#model_calcbase_GRU/gru/gru_cell/addAddV20model_calcbase_GRU/gru/gru_cell/BiasAdd:output:02model_calcbase_GRU/gru/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2%
#model_calcbase_GRU/gru/gru_cell/add?
'model_calcbase_GRU/gru/gru_cell/SigmoidSigmoid'model_calcbase_GRU/gru/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2)
'model_calcbase_GRU/gru/gru_cell/Sigmoid?
%model_calcbase_GRU/gru/gru_cell/add_1AddV22model_calcbase_GRU/gru/gru_cell/BiasAdd_1:output:02model_calcbase_GRU/gru/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/add_1?
)model_calcbase_GRU/gru/gru_cell/Sigmoid_1Sigmoid)model_calcbase_GRU/gru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/gru_cell/Sigmoid_1?
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_6ReadVariableOp9model_calcbase_gru_gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype022
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_6?
6model_calcbase_GRU/gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   28
6model_calcbase_GRU/gru/gru_cell/strided_slice_10/stack?
8model_calcbase_GRU/gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8model_calcbase_GRU/gru/gru_cell/strided_slice_10/stack_1?
8model_calcbase_GRU/gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8model_calcbase_GRU/gru/gru_cell/strided_slice_10/stack_2?
0model_calcbase_GRU/gru/gru_cell/strided_slice_10StridedSlice8model_calcbase_GRU/gru/gru_cell/ReadVariableOp_6:value:0?model_calcbase_GRU/gru/gru_cell/strided_slice_10/stack:output:0Amodel_calcbase_GRU/gru/gru_cell/strided_slice_10/stack_1:output:0Amodel_calcbase_GRU/gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask22
0model_calcbase_GRU/gru/gru_cell/strided_slice_10?
(model_calcbase_GRU/gru/gru_cell/MatMul_5MatMul)model_calcbase_GRU/gru/gru_cell/mul_5:z:09model_calcbase_GRU/gru/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2*
(model_calcbase_GRU/gru/gru_cell/MatMul_5?
6model_calcbase_GRU/gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?28
6model_calcbase_GRU/gru/gru_cell/strided_slice_11/stack?
8model_calcbase_GRU/gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2:
8model_calcbase_GRU/gru/gru_cell/strided_slice_11/stack_1?
8model_calcbase_GRU/gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_calcbase_GRU/gru/gru_cell/strided_slice_11/stack_2?
0model_calcbase_GRU/gru/gru_cell/strided_slice_11StridedSlice0model_calcbase_GRU/gru/gru_cell/unstack:output:1?model_calcbase_GRU/gru/gru_cell/strided_slice_11/stack:output:0Amodel_calcbase_GRU/gru/gru_cell/strided_slice_11/stack_1:output:0Amodel_calcbase_GRU/gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask22
0model_calcbase_GRU/gru/gru_cell/strided_slice_11?
)model_calcbase_GRU/gru/gru_cell/BiasAdd_5BiasAdd2model_calcbase_GRU/gru/gru_cell/MatMul_5:product:09model_calcbase_GRU/gru/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/gru_cell/BiasAdd_5?
%model_calcbase_GRU/gru/gru_cell/mul_6Mul-model_calcbase_GRU/gru/gru_cell/Sigmoid_1:y:02model_calcbase_GRU/gru/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/mul_6?
%model_calcbase_GRU/gru/gru_cell/add_2AddV22model_calcbase_GRU/gru/gru_cell/BiasAdd_2:output:0)model_calcbase_GRU/gru/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/add_2?
$model_calcbase_GRU/gru/gru_cell/TanhTanh)model_calcbase_GRU/gru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2&
$model_calcbase_GRU/gru/gru_cell/Tanh?
%model_calcbase_GRU/gru/gru_cell/mul_7Mul+model_calcbase_GRU/gru/gru_cell/Sigmoid:y:0%model_calcbase_GRU/gru/zeros:output:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/mul_7?
%model_calcbase_GRU/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%model_calcbase_GRU/gru/gru_cell/sub/x?
#model_calcbase_GRU/gru/gru_cell/subSub.model_calcbase_GRU/gru/gru_cell/sub/x:output:0+model_calcbase_GRU/gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2%
#model_calcbase_GRU/gru/gru_cell/sub?
%model_calcbase_GRU/gru/gru_cell/mul_8Mul'model_calcbase_GRU/gru/gru_cell/sub:z:0(model_calcbase_GRU/gru/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/mul_8?
%model_calcbase_GRU/gru/gru_cell/add_3AddV2)model_calcbase_GRU/gru/gru_cell/mul_7:z:0)model_calcbase_GRU/gru/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2'
%model_calcbase_GRU/gru/gru_cell/add_3?
4model_calcbase_GRU/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   26
4model_calcbase_GRU/gru/TensorArrayV2_1/element_shape?
&model_calcbase_GRU/gru/TensorArrayV2_1TensorListReserve=model_calcbase_GRU/gru/TensorArrayV2_1/element_shape:output:0/model_calcbase_GRU/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&model_calcbase_GRU/gru/TensorArrayV2_1|
model_calcbase_GRU/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_calcbase_GRU/gru/time?
/model_calcbase_GRU/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/model_calcbase_GRU/gru/while/maximum_iterations?
)model_calcbase_GRU/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_calcbase_GRU/gru/while/loop_counter?
model_calcbase_GRU/gru/whileWhile2model_calcbase_GRU/gru/while/loop_counter:output:08model_calcbase_GRU/gru/while/maximum_iterations:output:0$model_calcbase_GRU/gru/time:output:0/model_calcbase_GRU/gru/TensorArrayV2_1:handle:0%model_calcbase_GRU/gru/zeros:output:0/model_calcbase_GRU/gru/strided_slice_1:output:0Nmodel_calcbase_GRU/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:07model_calcbase_gru_gru_gru_cell_readvariableop_resource9model_calcbase_gru_gru_gru_cell_readvariableop_1_resource9model_calcbase_gru_gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'model_calcbase_GRU_gru_while_body_15347*3
cond+R)
'model_calcbase_GRU_gru_while_cond_15346*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
model_calcbase_GRU/gru/while?
Gmodel_calcbase_GRU/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2I
Gmodel_calcbase_GRU/gru/TensorArrayV2Stack/TensorListStack/element_shape?
9model_calcbase_GRU/gru/TensorArrayV2Stack/TensorListStackTensorListStack%model_calcbase_GRU/gru/while:output:3Pmodel_calcbase_GRU/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02;
9model_calcbase_GRU/gru/TensorArrayV2Stack/TensorListStack?
,model_calcbase_GRU/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2.
,model_calcbase_GRU/gru/strided_slice_3/stack?
.model_calcbase_GRU/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.model_calcbase_GRU/gru/strided_slice_3/stack_1?
.model_calcbase_GRU/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_calcbase_GRU/gru/strided_slice_3/stack_2?
&model_calcbase_GRU/gru/strided_slice_3StridedSliceBmodel_calcbase_GRU/gru/TensorArrayV2Stack/TensorListStack:tensor:05model_calcbase_GRU/gru/strided_slice_3/stack:output:07model_calcbase_GRU/gru/strided_slice_3/stack_1:output:07model_calcbase_GRU/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2(
&model_calcbase_GRU/gru/strided_slice_3?
'model_calcbase_GRU/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'model_calcbase_GRU/gru/transpose_1/perm?
"model_calcbase_GRU/gru/transpose_1	TransposeBmodel_calcbase_GRU/gru/TensorArrayV2Stack/TensorListStack:tensor:00model_calcbase_GRU/gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2$
"model_calcbase_GRU/gru/transpose_1?
model_calcbase_GRU/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
model_calcbase_GRU/gru/runtime?
.model_calcbase_GRU/dense/MatMul/ReadVariableOpReadVariableOp7model_calcbase_gru_dense_matmul_readvariableop_resource*
_output_shapes

:@L*
dtype020
.model_calcbase_GRU/dense/MatMul/ReadVariableOp?
model_calcbase_GRU/dense/MatMulMatMul/model_calcbase_GRU/gru/strided_slice_3:output:06model_calcbase_GRU/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2!
model_calcbase_GRU/dense/MatMul?
/model_calcbase_GRU/dense/BiasAdd/ReadVariableOpReadVariableOp8model_calcbase_gru_dense_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype021
/model_calcbase_GRU/dense/BiasAdd/ReadVariableOp?
 model_calcbase_GRU/dense/BiasAddBiasAdd)model_calcbase_GRU/dense/MatMul:product:07model_calcbase_GRU/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2"
 model_calcbase_GRU/dense/BiasAdd?
#model_calcbase_GRU/dropout/IdentityIdentity)model_calcbase_GRU/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L2%
#model_calcbase_GRU/dropout/Identity?
0model_calcbase_GRU/dense_1/MatMul/ReadVariableOpReadVariableOp9model_calcbase_gru_dense_1_matmul_readvariableop_resource*
_output_shapes

:L*
dtype022
0model_calcbase_GRU/dense_1/MatMul/ReadVariableOp?
!model_calcbase_GRU/dense_1/MatMulMatMul,model_calcbase_GRU/dropout/Identity:output:08model_calcbase_GRU/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!model_calcbase_GRU/dense_1/MatMul?
1model_calcbase_GRU/dense_1/BiasAdd/ReadVariableOpReadVariableOp:model_calcbase_gru_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1model_calcbase_GRU/dense_1/BiasAdd/ReadVariableOp?
"model_calcbase_GRU/dense_1/BiasAddBiasAdd+model_calcbase_GRU/dense_1/MatMul:product:09model_calcbase_GRU/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"model_calcbase_GRU/dense_1/BiasAdd?
"model_calcbase_GRU/dense_1/SoftmaxSoftmax+model_calcbase_GRU/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2$
"model_calcbase_GRU/dense_1/Softmax?
IdentityIdentity,model_calcbase_GRU/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^model_calcbase_GRU/dense/BiasAdd/ReadVariableOp/^model_calcbase_GRU/dense/MatMul/ReadVariableOp2^model_calcbase_GRU/dense_1/BiasAdd/ReadVariableOp1^model_calcbase_GRU/dense_1/MatMul/ReadVariableOp.^model_calcbase_GRU/embedding/embedding_lookup/^model_calcbase_GRU/gru/gru_cell/ReadVariableOp1^model_calcbase_GRU/gru/gru_cell/ReadVariableOp_11^model_calcbase_GRU/gru/gru_cell/ReadVariableOp_21^model_calcbase_GRU/gru/gru_cell/ReadVariableOp_31^model_calcbase_GRU/gru/gru_cell/ReadVariableOp_41^model_calcbase_GRU/gru/gru_cell/ReadVariableOp_51^model_calcbase_GRU/gru/gru_cell/ReadVariableOp_6^model_calcbase_GRU/gru/whileR^model_calcbase_GRU/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2b
/model_calcbase_GRU/dense/BiasAdd/ReadVariableOp/model_calcbase_GRU/dense/BiasAdd/ReadVariableOp2`
.model_calcbase_GRU/dense/MatMul/ReadVariableOp.model_calcbase_GRU/dense/MatMul/ReadVariableOp2f
1model_calcbase_GRU/dense_1/BiasAdd/ReadVariableOp1model_calcbase_GRU/dense_1/BiasAdd/ReadVariableOp2d
0model_calcbase_GRU/dense_1/MatMul/ReadVariableOp0model_calcbase_GRU/dense_1/MatMul/ReadVariableOp2^
-model_calcbase_GRU/embedding/embedding_lookup-model_calcbase_GRU/embedding/embedding_lookup2`
.model_calcbase_GRU/gru/gru_cell/ReadVariableOp.model_calcbase_GRU/gru/gru_cell/ReadVariableOp2d
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_10model_calcbase_GRU/gru/gru_cell/ReadVariableOp_12d
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_20model_calcbase_GRU/gru/gru_cell/ReadVariableOp_22d
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_30model_calcbase_GRU/gru/gru_cell/ReadVariableOp_32d
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_40model_calcbase_GRU/gru/gru_cell/ReadVariableOp_42d
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_50model_calcbase_GRU/gru/gru_cell/ReadVariableOp_52d
0model_calcbase_GRU/gru/gru_cell/ReadVariableOp_60model_calcbase_GRU/gru/gru_cell/ReadVariableOp_62<
model_calcbase_GRU/gru/whilemodel_calcbase_GRU/gru/while2?
Qmodel_calcbase_GRU/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Qmodel_calcbase_GRU/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_15970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_15970___redundant_placeholder03
/while_while_cond_15970___redundant_placeholder13
/while_while_cond_15970___redundant_placeholder23
/while_while_cond_15970___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17380
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_17358:
?N?
	gru_17361:	?
	gru_17363:
??
	gru_17365:	@?
dense_17368:@L
dense_17370:L
dense_1_17374:L
dense_1_17376:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?gru/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_17358*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_163332#
!embedding/StatefulPartitionedCall?
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_17361	gru_17363	gru_17365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_166192
gru/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_17368dense_17370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_166372
dense/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_166482
dropout/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_17374dense_1_17376*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_166612!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_18408

inputs	*
embedding_lookup_18402:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_18402inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/18402*,
_output_shapes
:??????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/18402*,
_output_shapes
:??????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
߹
?	
gru_while_body_17674$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	?B
.gru_while_gru_cell_readvariableop_1_resource_0:
??A
.gru_while_gru_cell_readvariableop_4_resource_0:	@?
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	?@
,gru_while_gru_cell_readvariableop_1_resource:
???
,gru_while_gru_cell_readvariableop_4_resource:	@???!gru/while/gru_cell/ReadVariableOp?#gru/while/gru_cell/ReadVariableOp_1?#gru/while/gru_cell/ReadVariableOp_2?#gru/while/gru_cell/ReadVariableOp_3?#gru/while/gru_cell/ReadVariableOp_4?#gru/while/gru_cell/ReadVariableOp_5?#gru/while/gru_cell/ReadVariableOp_6?
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2=
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shape?
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02/
-gru/while/TensorArrayV2Read/TensorListGetItem?
"gru/while/gru_cell/ones_like/ShapeShape4gru/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/ones_like/Shape?
"gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"gru/while/gru_cell/ones_like/Const?
gru/while/gru_cell/ones_likeFill+gru/while/gru_cell/ones_like/Shape:output:0+gru/while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/ones_like?
$gru/while/gru_cell/ones_like_1/ShapeShapegru_while_placeholder_2*
T0*
_output_shapes
:2&
$gru/while/gru_cell/ones_like_1/Shape?
$gru/while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$gru/while/gru_cell/ones_like_1/Const?
gru/while/gru_cell/ones_like_1Fill-gru/while/gru_cell/ones_like_1/Shape:output:0-gru/while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2 
gru/while/gru_cell/ones_like_1?
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02#
!gru/while/gru_cell/ReadVariableOp?
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru/while/gru_cell/unstack?
gru/while/gru_cell/mulMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0%gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/mul?
gru/while/gru_cell/mul_1Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0%gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/mul_1?
gru/while/gru_cell/mul_2Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0%gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/mul_2?
#gru/while/gru_cell/ReadVariableOp_1ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02%
#gru/while/gru_cell/ReadVariableOp_1?
&gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru/while/gru_cell/strided_slice/stack?
(gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(gru/while/gru_cell/strided_slice/stack_1?
(gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru/while/gru_cell/strided_slice/stack_2?
 gru/while/gru_cell/strided_sliceStridedSlice+gru/while/gru_cell/ReadVariableOp_1:value:0/gru/while/gru_cell/strided_slice/stack:output:01gru/while/gru_cell/strided_slice/stack_1:output:01gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2"
 gru/while/gru_cell/strided_slice?
gru/while/gru_cell/MatMulMatMulgru/while/gru_cell/mul:z:0)gru/while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul?
#gru/while/gru_cell/ReadVariableOp_2ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02%
#gru/while/gru_cell/ReadVariableOp_2?
(gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(gru/while/gru_cell/strided_slice_1/stack?
*gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*gru/while/gru_cell/strided_slice_1/stack_1?
*gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_1/stack_2?
"gru/while/gru_cell/strided_slice_1StridedSlice+gru/while/gru_cell/ReadVariableOp_2:value:01gru/while/gru_cell/strided_slice_1/stack:output:03gru/while/gru_cell/strided_slice_1/stack_1:output:03gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_1?
gru/while/gru_cell/MatMul_1MatMulgru/while/gru_cell/mul_1:z:0+gru/while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_1?
#gru/while/gru_cell/ReadVariableOp_3ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02%
#gru/while/gru_cell/ReadVariableOp_3?
(gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(gru/while/gru_cell/strided_slice_2/stack?
*gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru/while/gru_cell/strided_slice_2/stack_1?
*gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_2/stack_2?
"gru/while/gru_cell/strided_slice_2StridedSlice+gru/while/gru_cell/ReadVariableOp_3:value:01gru/while/gru_cell/strided_slice_2/stack:output:03gru/while/gru_cell/strided_slice_2/stack_1:output:03gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_2?
gru/while/gru_cell/MatMul_2MatMulgru/while/gru_cell/mul_2:z:0+gru/while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_2?
(gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_3/stack?
*gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2,
*gru/while/gru_cell/strided_slice_3/stack_1?
*gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_3/stack_2?
"gru/while/gru_cell/strided_slice_3StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_3/stack:output:03gru/while/gru_cell/strided_slice_3/stack_1:output:03gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2$
"gru/while/gru_cell/strided_slice_3?
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0+gru/while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd?
(gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2*
(gru/while/gru_cell/strided_slice_4/stack?
*gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2,
*gru/while/gru_cell/strided_slice_4/stack_1?
*gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_4/stack_2?
"gru/while/gru_cell/strided_slice_4StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_4/stack:output:03gru/while/gru_cell/strided_slice_4/stack_1:output:03gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2$
"gru/while/gru_cell/strided_slice_4?
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0+gru/while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_1?
(gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2*
(gru/while/gru_cell/strided_slice_5/stack?
*gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gru/while/gru_cell/strided_slice_5/stack_1?
*gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_5/stack_2?
"gru/while/gru_cell/strided_slice_5StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_5/stack:output:03gru/while/gru_cell/strided_slice_5/stack_1:output:03gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2$
"gru/while/gru_cell/strided_slice_5?
gru/while/gru_cell/BiasAdd_2BiasAdd%gru/while/gru_cell/MatMul_2:product:0+gru/while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_2?
gru/while/gru_cell/mul_3Mulgru_while_placeholder_2'gru/while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_3?
gru/while/gru_cell/mul_4Mulgru_while_placeholder_2'gru/while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_4?
gru/while/gru_cell/mul_5Mulgru_while_placeholder_2'gru/while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_5?
#gru/while/gru_cell/ReadVariableOp_4ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02%
#gru/while/gru_cell/ReadVariableOp_4?
(gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru/while/gru_cell/strided_slice_6/stack?
*gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*gru/while/gru_cell/strided_slice_6/stack_1?
*gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_6/stack_2?
"gru/while/gru_cell/strided_slice_6StridedSlice+gru/while/gru_cell/ReadVariableOp_4:value:01gru/while/gru_cell/strided_slice_6/stack:output:03gru/while/gru_cell/strided_slice_6/stack_1:output:03gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_6?
gru/while/gru_cell/MatMul_3MatMulgru/while/gru_cell/mul_3:z:0+gru/while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_3?
#gru/while/gru_cell/ReadVariableOp_5ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02%
#gru/while/gru_cell/ReadVariableOp_5?
(gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(gru/while/gru_cell/strided_slice_7/stack?
*gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*gru/while/gru_cell/strided_slice_7/stack_1?
*gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_7/stack_2?
"gru/while/gru_cell/strided_slice_7StridedSlice+gru/while/gru_cell/ReadVariableOp_5:value:01gru/while/gru_cell/strided_slice_7/stack:output:03gru/while/gru_cell/strided_slice_7/stack_1:output:03gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_7?
gru/while/gru_cell/MatMul_4MatMulgru/while/gru_cell/mul_4:z:0+gru/while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_4?
(gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_8/stack?
*gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2,
*gru/while/gru_cell/strided_slice_8/stack_1?
*gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_8/stack_2?
"gru/while/gru_cell/strided_slice_8StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_8/stack:output:03gru/while/gru_cell/strided_slice_8/stack_1:output:03gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2$
"gru/while/gru_cell/strided_slice_8?
gru/while/gru_cell/BiasAdd_3BiasAdd%gru/while/gru_cell/MatMul_3:product:0+gru/while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_3?
(gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2*
(gru/while/gru_cell/strided_slice_9/stack?
*gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2,
*gru/while/gru_cell/strided_slice_9/stack_1?
*gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_9/stack_2?
"gru/while/gru_cell/strided_slice_9StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_9/stack:output:03gru/while/gru_cell/strided_slice_9/stack_1:output:03gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2$
"gru/while/gru_cell/strided_slice_9?
gru/while/gru_cell/BiasAdd_4BiasAdd%gru/while/gru_cell/MatMul_4:product:0+gru/while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_4?
gru/while/gru_cell/addAddV2#gru/while/gru_cell/BiasAdd:output:0%gru/while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add?
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/Sigmoid?
gru/while/gru_cell/add_1AddV2%gru/while/gru_cell/BiasAdd_1:output:0%gru/while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add_1?
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/Sigmoid_1?
#gru/while/gru_cell/ReadVariableOp_6ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02%
#gru/while/gru_cell/ReadVariableOp_6?
)gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)gru/while/gru_cell/strided_slice_10/stack?
+gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+gru/while/gru_cell/strided_slice_10/stack_1?
+gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+gru/while/gru_cell/strided_slice_10/stack_2?
#gru/while/gru_cell/strided_slice_10StridedSlice+gru/while/gru_cell/ReadVariableOp_6:value:02gru/while/gru_cell/strided_slice_10/stack:output:04gru/while/gru_cell/strided_slice_10/stack_1:output:04gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2%
#gru/while/gru_cell/strided_slice_10?
gru/while/gru_cell/MatMul_5MatMulgru/while/gru_cell/mul_5:z:0,gru/while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_5?
)gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2+
)gru/while/gru_cell/strided_slice_11/stack?
+gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gru/while/gru_cell/strided_slice_11/stack_1?
+gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gru/while/gru_cell/strided_slice_11/stack_2?
#gru/while/gru_cell/strided_slice_11StridedSlice#gru/while/gru_cell/unstack:output:12gru/while/gru_cell/strided_slice_11/stack:output:04gru/while/gru_cell/strided_slice_11/stack_1:output:04gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2%
#gru/while/gru_cell/strided_slice_11?
gru/while/gru_cell/BiasAdd_5BiasAdd%gru/while/gru_cell/MatMul_5:product:0,gru/while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_5?
gru/while/gru_cell/mul_6Mul gru/while/gru_cell/Sigmoid_1:y:0%gru/while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_6?
gru/while/gru_cell/add_2AddV2%gru/while/gru_cell/BiasAdd_2:output:0gru/while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add_2?
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/Tanh?
gru/while/gru_cell/mul_7Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_7y
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru/while/gru_cell/sub/x?
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/sub?
gru/while/gru_cell/mul_8Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_8?
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_7:z:0gru/while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add_3?
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype020
.gru/while/TensorArrayV2Write/TensorListSetItemd
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add/yy
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: 2
gru/while/addh
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add_1/y?
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru/while/add_1{
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity?
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity_1}
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity_2?
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity_3?
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*'
_output_shapes
:?????????@2
gru/while/Identity_4?
gru/while/NoOpNoOp"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
gru/while/NoOp"^
,gru_while_gru_cell_readvariableop_1_resource.gru_while_gru_cell_readvariableop_1_resource_0"^
,gru_while_gru_cell_readvariableop_4_resource.gru_while_gru_cell_readvariableop_4_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"?
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp2J
#gru/while/gru_cell/ReadVariableOp_1#gru/while/gru_cell/ReadVariableOp_12J
#gru/while/gru_cell/ReadVariableOp_2#gru/while/gru_cell/ReadVariableOp_22J
#gru/while/gru_cell/ReadVariableOp_3#gru/while/gru_cell/ReadVariableOp_32J
#gru/while/gru_cell/ReadVariableOp_4#gru/while/gru_cell/ReadVariableOp_42J
#gru/while/gru_cell/ReadVariableOp_5#gru/while/gru_cell/ReadVariableOp_52J
#gru/while/gru_cell/ReadVariableOp_6#gru/while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_19538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_19538___redundant_placeholder03
/while_while_cond_19538___redundant_placeholder13
/while_while_cond_19538___redundant_placeholder23
/while_while_cond_19538___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?	
gru_while_body_18072$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	?B
.gru_while_gru_cell_readvariableop_1_resource_0:
??A
.gru_while_gru_cell_readvariableop_4_resource_0:	@?
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	?@
,gru_while_gru_cell_readvariableop_1_resource:
???
,gru_while_gru_cell_readvariableop_4_resource:	@???!gru/while/gru_cell/ReadVariableOp?#gru/while/gru_cell/ReadVariableOp_1?#gru/while/gru_cell/ReadVariableOp_2?#gru/while/gru_cell/ReadVariableOp_3?#gru/while/gru_cell/ReadVariableOp_4?#gru/while/gru_cell/ReadVariableOp_5?#gru/while/gru_cell/ReadVariableOp_6?
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2=
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shape?
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02/
-gru/while/TensorArrayV2Read/TensorListGetItem?
"gru/while/gru_cell/ones_like/ShapeShape4gru/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/ones_like/Shape?
"gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"gru/while/gru_cell/ones_like/Const?
gru/while/gru_cell/ones_likeFill+gru/while/gru_cell/ones_like/Shape:output:0+gru/while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/ones_like?
 gru/while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2"
 gru/while/gru_cell/dropout/Const?
gru/while/gru_cell/dropout/MulMul%gru/while/gru_cell/ones_like:output:0)gru/while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2 
gru/while/gru_cell/dropout/Mul?
 gru/while/gru_cell/dropout/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2"
 gru/while/gru_cell/dropout/Shape?
7gru/while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform)gru/while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???29
7gru/while/gru_cell/dropout/random_uniform/RandomUniform?
)gru/while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2+
)gru/while/gru_cell/dropout/GreaterEqual/y?
'gru/while/gru_cell/dropout/GreaterEqualGreaterEqual@gru/while/gru_cell/dropout/random_uniform/RandomUniform:output:02gru/while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2)
'gru/while/gru_cell/dropout/GreaterEqual?
gru/while/gru_cell/dropout/CastCast+gru/while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2!
gru/while/gru_cell/dropout/Cast?
 gru/while/gru_cell/dropout/Mul_1Mul"gru/while/gru_cell/dropout/Mul:z:0#gru/while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2"
 gru/while/gru_cell/dropout/Mul_1?
"gru/while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2$
"gru/while/gru_cell/dropout_1/Const?
 gru/while/gru_cell/dropout_1/MulMul%gru/while/gru_cell/ones_like:output:0+gru/while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2"
 gru/while/gru_cell/dropout_1/Mul?
"gru/while/gru_cell/dropout_1/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_1/Shape?
9gru/while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9gru/while/gru_cell/dropout_1/random_uniform/RandomUniform?
+gru/while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2-
+gru/while/gru_cell/dropout_1/GreaterEqual/y?
)gru/while/gru_cell/dropout_1/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_1/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)gru/while/gru_cell/dropout_1/GreaterEqual?
!gru/while/gru_cell/dropout_1/CastCast-gru/while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!gru/while/gru_cell/dropout_1/Cast?
"gru/while/gru_cell/dropout_1/Mul_1Mul$gru/while/gru_cell/dropout_1/Mul:z:0%gru/while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"gru/while/gru_cell/dropout_1/Mul_1?
"gru/while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2$
"gru/while/gru_cell/dropout_2/Const?
 gru/while/gru_cell/dropout_2/MulMul%gru/while/gru_cell/ones_like:output:0+gru/while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2"
 gru/while/gru_cell/dropout_2/Mul?
"gru/while/gru_cell/dropout_2/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_2/Shape?
9gru/while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9gru/while/gru_cell/dropout_2/random_uniform/RandomUniform?
+gru/while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2-
+gru/while/gru_cell/dropout_2/GreaterEqual/y?
)gru/while/gru_cell/dropout_2/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_2/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)gru/while/gru_cell/dropout_2/GreaterEqual?
!gru/while/gru_cell/dropout_2/CastCast-gru/while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!gru/while/gru_cell/dropout_2/Cast?
"gru/while/gru_cell/dropout_2/Mul_1Mul$gru/while/gru_cell/dropout_2/Mul:z:0%gru/while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"gru/while/gru_cell/dropout_2/Mul_1?
$gru/while/gru_cell/ones_like_1/ShapeShapegru_while_placeholder_2*
T0*
_output_shapes
:2&
$gru/while/gru_cell/ones_like_1/Shape?
$gru/while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$gru/while/gru_cell/ones_like_1/Const?
gru/while/gru_cell/ones_like_1Fill-gru/while/gru_cell/ones_like_1/Shape:output:0-gru/while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2 
gru/while/gru_cell/ones_like_1?
"gru/while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2$
"gru/while/gru_cell/dropout_3/Const?
 gru/while/gru_cell/dropout_3/MulMul'gru/while/gru_cell/ones_like_1:output:0+gru/while/gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2"
 gru/while/gru_cell/dropout_3/Mul?
"gru/while/gru_cell/dropout_3/ShapeShape'gru/while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_3/Shape?
9gru/while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??2;
9gru/while/gru_cell/dropout_3/random_uniform/RandomUniform?
+gru/while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2-
+gru/while/gru_cell/dropout_3/GreaterEqual/y?
)gru/while/gru_cell/dropout_3/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_3/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2+
)gru/while/gru_cell/dropout_3/GreaterEqual?
!gru/while/gru_cell/dropout_3/CastCast-gru/while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2#
!gru/while/gru_cell/dropout_3/Cast?
"gru/while/gru_cell/dropout_3/Mul_1Mul$gru/while/gru_cell/dropout_3/Mul:z:0%gru/while/gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2$
"gru/while/gru_cell/dropout_3/Mul_1?
"gru/while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2$
"gru/while/gru_cell/dropout_4/Const?
 gru/while/gru_cell/dropout_4/MulMul'gru/while/gru_cell/ones_like_1:output:0+gru/while/gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2"
 gru/while/gru_cell/dropout_4/Mul?
"gru/while/gru_cell/dropout_4/ShapeShape'gru/while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_4/Shape?
9gru/while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??$2;
9gru/while/gru_cell/dropout_4/random_uniform/RandomUniform?
+gru/while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2-
+gru/while/gru_cell/dropout_4/GreaterEqual/y?
)gru/while/gru_cell/dropout_4/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_4/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2+
)gru/while/gru_cell/dropout_4/GreaterEqual?
!gru/while/gru_cell/dropout_4/CastCast-gru/while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2#
!gru/while/gru_cell/dropout_4/Cast?
"gru/while/gru_cell/dropout_4/Mul_1Mul$gru/while/gru_cell/dropout_4/Mul:z:0%gru/while/gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2$
"gru/while/gru_cell/dropout_4/Mul_1?
"gru/while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2$
"gru/while/gru_cell/dropout_5/Const?
 gru/while/gru_cell/dropout_5/MulMul'gru/while/gru_cell/ones_like_1:output:0+gru/while/gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2"
 gru/while/gru_cell/dropout_5/Mul?
"gru/while/gru_cell/dropout_5/ShapeShape'gru/while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_5/Shape?
9gru/while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2;
9gru/while/gru_cell/dropout_5/random_uniform/RandomUniform?
+gru/while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2-
+gru/while/gru_cell/dropout_5/GreaterEqual/y?
)gru/while/gru_cell/dropout_5/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_5/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2+
)gru/while/gru_cell/dropout_5/GreaterEqual?
!gru/while/gru_cell/dropout_5/CastCast-gru/while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2#
!gru/while/gru_cell/dropout_5/Cast?
"gru/while/gru_cell/dropout_5/Mul_1Mul$gru/while/gru_cell/dropout_5/Mul:z:0%gru/while/gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2$
"gru/while/gru_cell/dropout_5/Mul_1?
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02#
!gru/while/gru_cell/ReadVariableOp?
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru/while/gru_cell/unstack?
gru/while/gru_cell/mulMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0$gru/while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/mul?
gru/while/gru_cell/mul_1Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0&gru/while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/mul_1?
gru/while/gru_cell/mul_2Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0&gru/while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru/while/gru_cell/mul_2?
#gru/while/gru_cell/ReadVariableOp_1ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02%
#gru/while/gru_cell/ReadVariableOp_1?
&gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru/while/gru_cell/strided_slice/stack?
(gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(gru/while/gru_cell/strided_slice/stack_1?
(gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru/while/gru_cell/strided_slice/stack_2?
 gru/while/gru_cell/strided_sliceStridedSlice+gru/while/gru_cell/ReadVariableOp_1:value:0/gru/while/gru_cell/strided_slice/stack:output:01gru/while/gru_cell/strided_slice/stack_1:output:01gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2"
 gru/while/gru_cell/strided_slice?
gru/while/gru_cell/MatMulMatMulgru/while/gru_cell/mul:z:0)gru/while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul?
#gru/while/gru_cell/ReadVariableOp_2ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02%
#gru/while/gru_cell/ReadVariableOp_2?
(gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(gru/while/gru_cell/strided_slice_1/stack?
*gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*gru/while/gru_cell/strided_slice_1/stack_1?
*gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_1/stack_2?
"gru/while/gru_cell/strided_slice_1StridedSlice+gru/while/gru_cell/ReadVariableOp_2:value:01gru/while/gru_cell/strided_slice_1/stack:output:03gru/while/gru_cell/strided_slice_1/stack_1:output:03gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_1?
gru/while/gru_cell/MatMul_1MatMulgru/while/gru_cell/mul_1:z:0+gru/while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_1?
#gru/while/gru_cell/ReadVariableOp_3ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02%
#gru/while/gru_cell/ReadVariableOp_3?
(gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(gru/while/gru_cell/strided_slice_2/stack?
*gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru/while/gru_cell/strided_slice_2/stack_1?
*gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_2/stack_2?
"gru/while/gru_cell/strided_slice_2StridedSlice+gru/while/gru_cell/ReadVariableOp_3:value:01gru/while/gru_cell/strided_slice_2/stack:output:03gru/while/gru_cell/strided_slice_2/stack_1:output:03gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_2?
gru/while/gru_cell/MatMul_2MatMulgru/while/gru_cell/mul_2:z:0+gru/while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_2?
(gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_3/stack?
*gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2,
*gru/while/gru_cell/strided_slice_3/stack_1?
*gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_3/stack_2?
"gru/while/gru_cell/strided_slice_3StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_3/stack:output:03gru/while/gru_cell/strided_slice_3/stack_1:output:03gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2$
"gru/while/gru_cell/strided_slice_3?
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0+gru/while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd?
(gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2*
(gru/while/gru_cell/strided_slice_4/stack?
*gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2,
*gru/while/gru_cell/strided_slice_4/stack_1?
*gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_4/stack_2?
"gru/while/gru_cell/strided_slice_4StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_4/stack:output:03gru/while/gru_cell/strided_slice_4/stack_1:output:03gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2$
"gru/while/gru_cell/strided_slice_4?
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0+gru/while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_1?
(gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2*
(gru/while/gru_cell/strided_slice_5/stack?
*gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gru/while/gru_cell/strided_slice_5/stack_1?
*gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_5/stack_2?
"gru/while/gru_cell/strided_slice_5StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_5/stack:output:03gru/while/gru_cell/strided_slice_5/stack_1:output:03gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2$
"gru/while/gru_cell/strided_slice_5?
gru/while/gru_cell/BiasAdd_2BiasAdd%gru/while/gru_cell/MatMul_2:product:0+gru/while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_2?
gru/while/gru_cell/mul_3Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_3?
gru/while/gru_cell/mul_4Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_4?
gru/while/gru_cell/mul_5Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_5?
#gru/while/gru_cell/ReadVariableOp_4ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02%
#gru/while/gru_cell/ReadVariableOp_4?
(gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru/while/gru_cell/strided_slice_6/stack?
*gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*gru/while/gru_cell/strided_slice_6/stack_1?
*gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_6/stack_2?
"gru/while/gru_cell/strided_slice_6StridedSlice+gru/while/gru_cell/ReadVariableOp_4:value:01gru/while/gru_cell/strided_slice_6/stack:output:03gru/while/gru_cell/strided_slice_6/stack_1:output:03gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_6?
gru/while/gru_cell/MatMul_3MatMulgru/while/gru_cell/mul_3:z:0+gru/while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_3?
#gru/while/gru_cell/ReadVariableOp_5ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02%
#gru/while/gru_cell/ReadVariableOp_5?
(gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(gru/while/gru_cell/strided_slice_7/stack?
*gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*gru/while/gru_cell/strided_slice_7/stack_1?
*gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_7/stack_2?
"gru/while/gru_cell/strided_slice_7StridedSlice+gru/while/gru_cell/ReadVariableOp_5:value:01gru/while/gru_cell/strided_slice_7/stack:output:03gru/while/gru_cell/strided_slice_7/stack_1:output:03gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_7?
gru/while/gru_cell/MatMul_4MatMulgru/while/gru_cell/mul_4:z:0+gru/while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_4?
(gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_8/stack?
*gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2,
*gru/while/gru_cell/strided_slice_8/stack_1?
*gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_8/stack_2?
"gru/while/gru_cell/strided_slice_8StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_8/stack:output:03gru/while/gru_cell/strided_slice_8/stack_1:output:03gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2$
"gru/while/gru_cell/strided_slice_8?
gru/while/gru_cell/BiasAdd_3BiasAdd%gru/while/gru_cell/MatMul_3:product:0+gru/while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_3?
(gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2*
(gru/while/gru_cell/strided_slice_9/stack?
*gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2,
*gru/while/gru_cell/strided_slice_9/stack_1?
*gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_9/stack_2?
"gru/while/gru_cell/strided_slice_9StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_9/stack:output:03gru/while/gru_cell/strided_slice_9/stack_1:output:03gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2$
"gru/while/gru_cell/strided_slice_9?
gru/while/gru_cell/BiasAdd_4BiasAdd%gru/while/gru_cell/MatMul_4:product:0+gru/while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_4?
gru/while/gru_cell/addAddV2#gru/while/gru_cell/BiasAdd:output:0%gru/while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add?
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/Sigmoid?
gru/while/gru_cell/add_1AddV2%gru/while/gru_cell/BiasAdd_1:output:0%gru/while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add_1?
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/Sigmoid_1?
#gru/while/gru_cell/ReadVariableOp_6ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02%
#gru/while/gru_cell/ReadVariableOp_6?
)gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)gru/while/gru_cell/strided_slice_10/stack?
+gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+gru/while/gru_cell/strided_slice_10/stack_1?
+gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+gru/while/gru_cell/strided_slice_10/stack_2?
#gru/while/gru_cell/strided_slice_10StridedSlice+gru/while/gru_cell/ReadVariableOp_6:value:02gru/while/gru_cell/strided_slice_10/stack:output:04gru/while/gru_cell/strided_slice_10/stack_1:output:04gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2%
#gru/while/gru_cell/strided_slice_10?
gru/while/gru_cell/MatMul_5MatMulgru/while/gru_cell/mul_5:z:0,gru/while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/MatMul_5?
)gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2+
)gru/while/gru_cell/strided_slice_11/stack?
+gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gru/while/gru_cell/strided_slice_11/stack_1?
+gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gru/while/gru_cell/strided_slice_11/stack_2?
#gru/while/gru_cell/strided_slice_11StridedSlice#gru/while/gru_cell/unstack:output:12gru/while/gru_cell/strided_slice_11/stack:output:04gru/while/gru_cell/strided_slice_11/stack_1:output:04gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2%
#gru/while/gru_cell/strided_slice_11?
gru/while/gru_cell/BiasAdd_5BiasAdd%gru/while/gru_cell/MatMul_5:product:0,gru/while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/BiasAdd_5?
gru/while/gru_cell/mul_6Mul gru/while/gru_cell/Sigmoid_1:y:0%gru/while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_6?
gru/while/gru_cell/add_2AddV2%gru/while/gru_cell/BiasAdd_2:output:0gru/while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add_2?
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/Tanh?
gru/while/gru_cell/mul_7Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_7y
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru/while/gru_cell/sub/x?
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/sub?
gru/while/gru_cell/mul_8Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/mul_8?
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_7:z:0gru/while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru/while/gru_cell/add_3?
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype020
.gru/while/TensorArrayV2Write/TensorListSetItemd
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add/yy
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: 2
gru/while/addh
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add_1/y?
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru/while/add_1{
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity?
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity_1}
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity_2?
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: 2
gru/while/Identity_3?
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*'
_output_shapes
:?????????@2
gru/while/Identity_4?
gru/while/NoOpNoOp"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
gru/while/NoOp"^
,gru_while_gru_cell_readvariableop_1_resource.gru_while_gru_cell_readvariableop_1_resource_0"^
,gru_while_gru_cell_readvariableop_4_resource.gru_while_gru_cell_readvariableop_4_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"?
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp2J
#gru/while/gru_cell/ReadVariableOp_1#gru/while/gru_cell/ReadVariableOp_12J
#gru/while/gru_cell/ReadVariableOp_2#gru/while/gru_cell/ReadVariableOp_22J
#gru/while/gru_cell/ReadVariableOp_3#gru/while/gru_cell/ReadVariableOp_32J
#gru/while/gru_cell/ReadVariableOp_4#gru/while/gru_cell/ReadVariableOp_42J
#gru/while/gru_cell/ReadVariableOp_5#gru/while/gru_cell/ReadVariableOp_52J
#gru/while/gru_cell/ReadVariableOp_6#gru/while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_19208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	?>
*while_gru_cell_readvariableop_1_resource_0:
??=
*while_gru_cell_readvariableop_4_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	?<
(while_gru_cell_readvariableop_1_resource:
??;
(while_gru_cell_readvariableop_4_resource:	@???while/gru_cell/ReadVariableOp?while/gru_cell/ReadVariableOp_1?while/gru_cell/ReadVariableOp_2?while/gru_cell/ReadVariableOp_3?while/gru_cell/ReadVariableOp_4?while/gru_cell/ReadVariableOp_5?while/gru_cell/ReadVariableOp_6?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/Shape?
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
while/gru_cell/ones_like/Const?
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/ones_like?
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/Shape?
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell/ones_like_1/Const?
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/ones_like_1?
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02
while/gru_cell/ReadVariableOp?
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell/unstack?
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul?
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_1?
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_2?
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_1?
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stack?
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice/stack_1?
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2?
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
while/gru_cell/strided_slice?
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul?
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_2?
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_1/stack?
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_1/stack_1?
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2?
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1?
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_1?
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_3?
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$while/gru_cell/strided_slice_2/stack?
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1?
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2?
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2?
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_2?
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stack?
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_3/stack_1?
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2?
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_3?
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd?
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_4/stack?
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_4/stack_1?
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2?
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_4?
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_1?
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2&
$while/gru_cell/strided_slice_5/stack?
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1?
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2?
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2 
while/gru_cell/strided_slice_5?
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_2?
while/gru_cell/mul_3Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_3?
while/gru_cell/mul_4Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_4?
while/gru_cell/mul_5Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_5?
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_4?
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack?
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2(
&while/gru_cell/strided_slice_6/stack_1?
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2?
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6?
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_3?
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_5?
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_7/stack?
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_7/stack_1?
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2?
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7?
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_4?
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stack?
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_8/stack_1?
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2?
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_8?
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_3?
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_9/stack?
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_9/stack_1?
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2?
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_9?
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_4?
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add?
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid?
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_1?
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid_1?
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_6?
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/gru_cell/strided_slice_10/stack?
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1?
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2?
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10?
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_5?
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2'
%while/gru_cell/strided_slice_11/stack?
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1?
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2?
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2!
while/gru_cell/strided_slice_11?
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_5?
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_6?
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_2~
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Tanh?
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell/sub/x?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/sub?
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_8?
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_16467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	?>
*while_gru_cell_readvariableop_1_resource_0:
??=
*while_gru_cell_readvariableop_4_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	?<
(while_gru_cell_readvariableop_1_resource:
??;
(while_gru_cell_readvariableop_4_resource:	@???while/gru_cell/ReadVariableOp?while/gru_cell/ReadVariableOp_1?while/gru_cell/ReadVariableOp_2?while/gru_cell/ReadVariableOp_3?while/gru_cell/ReadVariableOp_4?while/gru_cell/ReadVariableOp_5?while/gru_cell/ReadVariableOp_6?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/Shape?
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
while/gru_cell/ones_like/Const?
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/ones_like?
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/Shape?
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell/ones_like_1/Const?
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/ones_like_1?
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02
while/gru_cell/ReadVariableOp?
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell/unstack?
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul?
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_1?
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_2?
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_1?
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stack?
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice/stack_1?
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2?
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
while/gru_cell/strided_slice?
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul?
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_2?
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_1/stack?
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_1/stack_1?
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2?
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1?
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_1?
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_3?
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$while/gru_cell/strided_slice_2/stack?
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1?
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2?
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2?
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_2?
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stack?
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_3/stack_1?
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2?
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_3?
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd?
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_4/stack?
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_4/stack_1?
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2?
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_4?
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_1?
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2&
$while/gru_cell/strided_slice_5/stack?
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1?
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2?
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2 
while/gru_cell/strided_slice_5?
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_2?
while/gru_cell/mul_3Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_3?
while/gru_cell/mul_4Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_4?
while/gru_cell/mul_5Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_5?
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_4?
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack?
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2(
&while/gru_cell/strided_slice_6/stack_1?
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2?
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6?
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_3?
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_5?
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_7/stack?
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_7/stack_1?
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2?
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7?
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_4?
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stack?
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_8/stack_1?
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2?
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_8?
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_3?
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_9/stack?
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_9/stack_1?
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2?
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_9?
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_4?
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add?
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid?
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_1?
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid_1?
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_6?
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/gru_cell/strided_slice_10/stack?
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1?
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2?
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10?
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_5?
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2'
%while/gru_cell/strided_slice_11/stack?
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1?
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2?
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2!
while/gru_cell/strided_slice_11?
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_5?
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_6?
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_2~
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Tanh?
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell/sub/x?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/sub?
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_8?
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_201426
2key_value_init134_lookuptableimportv2_table_handle.
*key_value_init134_lookuptableimportv2_keys0
,key_value_init134_lookuptableimportv2_values	
identity??%key_value_init134/LookupTableImportV2?
%key_value_init134/LookupTableImportV2LookupTableImportV22key_value_init134_lookuptableimportv2_table_handle*key_value_init134_lookuptableimportv2_keys,key_value_init134_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init134/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init134/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?4:?42N
%key_value_init134/LookupTableImportV2%key_value_init134/LookupTableImportV2:!

_output_shapes	
:?4:!

_output_shapes	
:?4
?
?
'model_calcbase_GRU_gru_while_cond_15346J
Fmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_while_loop_counterP
Lmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_while_maximum_iterations,
(model_calcbase_gru_gru_while_placeholder.
*model_calcbase_gru_gru_while_placeholder_1.
*model_calcbase_gru_gru_while_placeholder_2L
Hmodel_calcbase_gru_gru_while_less_model_calcbase_gru_gru_strided_slice_1a
]model_calcbase_gru_gru_while_model_calcbase_gru_gru_while_cond_15346___redundant_placeholder0a
]model_calcbase_gru_gru_while_model_calcbase_gru_gru_while_cond_15346___redundant_placeholder1a
]model_calcbase_gru_gru_while_model_calcbase_gru_gru_while_cond_15346___redundant_placeholder2a
]model_calcbase_gru_gru_while_model_calcbase_gru_gru_while_cond_15346___redundant_placeholder3)
%model_calcbase_gru_gru_while_identity
?
!model_calcbase_GRU/gru/while/LessLess(model_calcbase_gru_gru_while_placeholderHmodel_calcbase_gru_gru_while_less_model_calcbase_gru_gru_strided_slice_1*
T0*
_output_shapes
: 2#
!model_calcbase_GRU/gru/while/Less?
%model_calcbase_GRU/gru/while/IdentityIdentity%model_calcbase_GRU/gru/while/Less:z:0*
T0
*
_output_shapes
: 2'
%model_calcbase_GRU/gru/while/Identity"W
%model_calcbase_gru_gru_while_identity.model_calcbase_GRU/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
gru_while_cond_17673$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1;
7gru_while_gru_while_cond_17673___redundant_placeholder0;
7gru_while_gru_while_cond_17673___redundant_placeholder1;
7gru_while_gru_while_cond_17673___redundant_placeholder2;
7gru_while_gru_while_cond_17673___redundant_placeholder3
gru_while_identity
?
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: 2
gru/while/Lessi
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: 2
gru/while/Identity"1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_16466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_16466___redundant_placeholder03
/while_while_cond_16466___redundant_placeholder13
/while_while_cond_16466___redundant_placeholder23
/while_while_cond_16466___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?
>__inference_gru_layer_call_and_return_conditional_losses_19360

inputs3
 gru_cell_readvariableop_resource:	?6
"gru_cell_readvariableop_1_resource:
??5
"gru_cell_readvariableop_4_resource:	@?
identity??gru_cell/ReadVariableOp?gru_cell/ReadVariableOp_1?gru_cell/ReadVariableOp_2?gru_cell/ReadVariableOp_3?gru_cell/ReadVariableOp_4?gru_cell/ReadVariableOp_5?gru_cell/ReadVariableOp_6?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like/Const?
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/ones_likev
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like_1/Const?
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/ones_like_1?
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell/ReadVariableOp?
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell/unstack?
gru_cell/mulMulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul?
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_1?
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_2?
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_1?
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stack?
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice/stack_1?
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2?
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice?
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul?
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_2?
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_1/stack?
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_1/stack_1?
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2?
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_1?
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_1?
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_3?
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2 
gru_cell/strided_slice_2/stack?
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1?
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2?
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_2?
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_2?
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stack?
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_3/stack_1?
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2?
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_3?
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd?
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_4/stack?
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_4/stack_1?
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2?
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_4?
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_1?
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2 
gru_cell/strided_slice_5/stack?
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1?
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2?
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_5?
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_2?
gru_cell/mul_3Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_3?
gru_cell/mul_4Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_4?
gru_cell/mul_5Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_5?
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_4?
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stack?
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2"
 gru_cell/strided_slice_6/stack_1?
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2?
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_6?
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_3?
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_5?
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_7/stack?
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_7/stack_1?
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2?
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_7?
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_4?
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stack?
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_8/stack_1?
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2?
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_8?
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_3?
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_9/stack?
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_9/stack_1?
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2?
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_9?
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_4?
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/adds
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid?
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_1y
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid_1?
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_6?
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
gru_cell/strided_slice_10/stack?
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1?
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2?
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_10?
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_5?
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2!
gru_cell/strided_slice_11/stack?
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1?
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2?
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_11?
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_5?
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_6?
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_2l
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Tanh
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/sub/x?
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/sub~
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_8?
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_19208*
condR
while_cond_19207*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
>__inference_gru_layer_call_and_return_conditional_losses_19077
inputs_03
 gru_cell_readvariableop_resource:	?6
"gru_cell_readvariableop_1_resource:
??5
"gru_cell_readvariableop_4_resource:	@?
identity??gru_cell/ReadVariableOp?gru_cell/ReadVariableOp_1?gru_cell/ReadVariableOp_2?gru_cell/ReadVariableOp_3?gru_cell/ReadVariableOp_4?gru_cell/ReadVariableOp_5?gru_cell/ReadVariableOp_6?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like/Const?
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/ones_likeu
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout/Const?
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/Mul{
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout/Shape?
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2/
-gru_cell/dropout/random_uniform/RandomUniform?
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2!
gru_cell/dropout/GreaterEqual/y?
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/GreaterEqual?
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout/Cast?
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/Mul_1y
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_1/Const?
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_1/Mul
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_1/Shape?
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_1/random_uniform/RandomUniform?
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_1/GreaterEqual/y?
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
gru_cell/dropout_1/GreaterEqual?
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout_1/Cast?
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_1/Mul_1y
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_2/Const?
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_2/Mul
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_2/Shape?
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_2/random_uniform/RandomUniform?
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_2/GreaterEqual/y?
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
gru_cell/dropout_2/GreaterEqual?
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout_2/Cast?
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_2/Mul_1v
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like_1/Const?
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/ones_like_1y
gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_3/Const?
gru_cell/dropout_3/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Mul?
gru_cell/dropout_3/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_3/Shape?
/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?ȝ21
/gru_cell/dropout_3/random_uniform/RandomUniform?
!gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_3/GreaterEqual/y?
gru_cell/dropout_3/GreaterEqualGreaterEqual8gru_cell/dropout_3/random_uniform/RandomUniform:output:0*gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_3/GreaterEqual?
gru_cell/dropout_3/CastCast#gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Cast?
gru_cell/dropout_3/Mul_1Mulgru_cell/dropout_3/Mul:z:0gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Mul_1y
gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_4/Const?
gru_cell/dropout_4/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Mul?
gru_cell/dropout_4/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_4/Shape?
/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?ʹ21
/gru_cell/dropout_4/random_uniform/RandomUniform?
!gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_4/GreaterEqual/y?
gru_cell/dropout_4/GreaterEqualGreaterEqual8gru_cell/dropout_4/random_uniform/RandomUniform:output:0*gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_4/GreaterEqual?
gru_cell/dropout_4/CastCast#gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Cast?
gru_cell/dropout_4/Mul_1Mulgru_cell/dropout_4/Mul:z:0gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Mul_1y
gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_5/Const?
gru_cell/dropout_5/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Mul?
gru_cell/dropout_5/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_5/Shape?
/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2釜21
/gru_cell/dropout_5/random_uniform/RandomUniform?
!gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_5/GreaterEqual/y?
gru_cell/dropout_5/GreaterEqualGreaterEqual8gru_cell/dropout_5/random_uniform/RandomUniform:output:0*gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_5/GreaterEqual?
gru_cell/dropout_5/CastCast#gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Cast?
gru_cell/dropout_5/Mul_1Mulgru_cell/dropout_5/Mul:z:0gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Mul_1?
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell/ReadVariableOp?
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell/unstack?
gru_cell/mulMulstrided_slice_2:output:0gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul?
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_1?
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_2?
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_1?
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stack?
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice/stack_1?
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2?
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice?
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul?
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_2?
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_1/stack?
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_1/stack_1?
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2?
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_1?
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_1?
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_3?
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2 
gru_cell/strided_slice_2/stack?
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1?
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2?
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_2?
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_2?
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stack?
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_3/stack_1?
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2?
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_3?
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd?
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_4/stack?
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_4/stack_1?
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2?
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_4?
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_1?
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2 
gru_cell/strided_slice_5/stack?
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1?
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2?
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_5?
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_2?
gru_cell/mul_3Mulzeros:output:0gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_3?
gru_cell/mul_4Mulzeros:output:0gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_4?
gru_cell/mul_5Mulzeros:output:0gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_5?
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_4?
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stack?
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2"
 gru_cell/strided_slice_6/stack_1?
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2?
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_6?
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_3?
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_5?
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_7/stack?
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_7/stack_1?
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2?
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_7?
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_4?
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stack?
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_8/stack_1?
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2?
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_8?
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_3?
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_9/stack?
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_9/stack_1?
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2?
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_9?
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_4?
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/adds
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid?
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_1y
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid_1?
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_6?
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
gru_cell/strided_slice_10/stack?
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1?
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2?
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_10?
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_5?
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2!
gru_cell/strided_slice_11/stack?
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1?
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2?
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_11?
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_5?
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_6?
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_2l
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Tanh
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/sub/x?
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/sub~
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_8?
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_18877*
condR
while_cond_18876*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
??
?
while_body_16930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	?>
*while_gru_cell_readvariableop_1_resource_0:
??=
*while_gru_cell_readvariableop_4_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	?<
(while_gru_cell_readvariableop_1_resource:
??;
(while_gru_cell_readvariableop_4_resource:	@???while/gru_cell/ReadVariableOp?while/gru_cell/ReadVariableOp_1?while/gru_cell/ReadVariableOp_2?while/gru_cell/ReadVariableOp_3?while/gru_cell/ReadVariableOp_4?while/gru_cell/ReadVariableOp_5?while/gru_cell/ReadVariableOp_6?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/Shape?
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
while/gru_cell/ones_like/Const?
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/ones_like?
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
while/gru_cell/dropout/Const?
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout/Mul?
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/gru_cell/dropout/Shape?
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3while/gru_cell/dropout/random_uniform/RandomUniform?
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%while/gru_cell/dropout/GreaterEqual/y?
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#while/gru_cell/dropout/GreaterEqual?
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout/Cast?
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout/Mul_1?
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_1/Const?
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout_1/Mul?
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_1/Shape?
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2͚?27
5while/gru_cell/dropout_1/random_uniform/RandomUniform?
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_1/GreaterEqual/y?
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%while/gru_cell/dropout_1/GreaterEqual?
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout_1/Cast?
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2 
while/gru_cell/dropout_1/Mul_1?
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_2/Const?
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout_2/Mul?
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_2/Shape?
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ݞ27
5while/gru_cell/dropout_2/random_uniform/RandomUniform?
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_2/GreaterEqual/y?
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%while/gru_cell/dropout_2/GreaterEqual?
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout_2/Cast?
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2 
while/gru_cell/dropout_2/Mul_1?
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/Shape?
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell/ones_like_1/Const?
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/ones_like_1?
while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_3/Const?
while/gru_cell/dropout_3/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_3/Mul?
while/gru_cell/dropout_3/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_3/Shape?
5while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??k27
5while/gru_cell/dropout_3/random_uniform/RandomUniform?
'while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_3/GreaterEqual/y?
%while/gru_cell/dropout_3/GreaterEqualGreaterEqual>while/gru_cell/dropout_3/random_uniform/RandomUniform:output:00while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_3/GreaterEqual?
while/gru_cell/dropout_3/CastCast)while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_3/Cast?
while/gru_cell/dropout_3/Mul_1Mul while/gru_cell/dropout_3/Mul:z:0!while/gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_3/Mul_1?
while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_4/Const?
while/gru_cell/dropout_4/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_4/Mul?
while/gru_cell/dropout_4/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_4/Shape?
5while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5while/gru_cell/dropout_4/random_uniform/RandomUniform?
'while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_4/GreaterEqual/y?
%while/gru_cell/dropout_4/GreaterEqualGreaterEqual>while/gru_cell/dropout_4/random_uniform/RandomUniform:output:00while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_4/GreaterEqual?
while/gru_cell/dropout_4/CastCast)while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_4/Cast?
while/gru_cell/dropout_4/Mul_1Mul while/gru_cell/dropout_4/Mul:z:0!while/gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_4/Mul_1?
while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_5/Const?
while/gru_cell/dropout_5/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_5/Mul?
while/gru_cell/dropout_5/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_5/Shape?
5while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2ֺ?27
5while/gru_cell/dropout_5/random_uniform/RandomUniform?
'while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_5/GreaterEqual/y?
%while/gru_cell/dropout_5/GreaterEqualGreaterEqual>while/gru_cell/dropout_5/random_uniform/RandomUniform:output:00while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_5/GreaterEqual?
while/gru_cell/dropout_5/CastCast)while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_5/Cast?
while/gru_cell/dropout_5/Mul_1Mul while/gru_cell/dropout_5/Mul:z:0!while/gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_5/Mul_1?
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02
while/gru_cell/ReadVariableOp?
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell/unstack?
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul?
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_1?
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_2?
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_1?
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stack?
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice/stack_1?
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2?
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
while/gru_cell/strided_slice?
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul?
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_2?
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_1/stack?
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_1/stack_1?
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2?
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1?
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_1?
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_3?
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$while/gru_cell/strided_slice_2/stack?
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1?
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2?
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2?
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_2?
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stack?
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_3/stack_1?
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2?
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_3?
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd?
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_4/stack?
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_4/stack_1?
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2?
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_4?
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_1?
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2&
$while/gru_cell/strided_slice_5/stack?
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1?
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2?
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2 
while/gru_cell/strided_slice_5?
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_2?
while/gru_cell/mul_3Mulwhile_placeholder_2"while/gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_3?
while/gru_cell/mul_4Mulwhile_placeholder_2"while/gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_4?
while/gru_cell/mul_5Mulwhile_placeholder_2"while/gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_5?
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_4?
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack?
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2(
&while/gru_cell/strided_slice_6/stack_1?
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2?
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6?
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_3?
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_5?
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_7/stack?
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_7/stack_1?
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2?
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7?
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_4?
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stack?
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_8/stack_1?
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2?
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_8?
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_3?
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_9/stack?
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_9/stack_1?
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2?
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_9?
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_4?
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add?
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid?
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_1?
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid_1?
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_6?
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/gru_cell/strided_slice_10/stack?
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1?
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2?
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10?
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_5?
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2'
%while/gru_cell/strided_slice_11/stack?
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1?
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2?
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2!
while/gru_cell/strided_slice_11?
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_5?
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_6?
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_2~
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Tanh?
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell/sub/x?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/sub?
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_8?
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
>__inference_gru_layer_call_and_return_conditional_losses_19739

inputs3
 gru_cell_readvariableop_resource:	?6
"gru_cell_readvariableop_1_resource:
??5
"gru_cell_readvariableop_4_resource:	@?
identity??gru_cell/ReadVariableOp?gru_cell/ReadVariableOp_1?gru_cell/ReadVariableOp_2?gru_cell/ReadVariableOp_3?gru_cell/ReadVariableOp_4?gru_cell/ReadVariableOp_5?gru_cell/ReadVariableOp_6?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like/Const?
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/ones_likeu
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout/Const?
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/Mul{
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout/Shape?
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2┷2/
-gru_cell/dropout/random_uniform/RandomUniform?
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2!
gru_cell/dropout/GreaterEqual/y?
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/GreaterEqual?
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout/Cast?
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/Mul_1y
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_1/Const?
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_1/Mul
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_1/Shape?
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_1/random_uniform/RandomUniform?
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_1/GreaterEqual/y?
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
gru_cell/dropout_1/GreaterEqual?
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout_1/Cast?
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_1/Mul_1y
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_2/Const?
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_2/Mul
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_2/Shape?
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?Њ21
/gru_cell/dropout_2/random_uniform/RandomUniform?
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_2/GreaterEqual/y?
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
gru_cell/dropout_2/GreaterEqual?
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout_2/Cast?
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_2/Mul_1v
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like_1/Const?
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/ones_like_1y
gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_3/Const?
gru_cell/dropout_3/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Mul?
gru_cell/dropout_3/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_3/Shape?
/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??!21
/gru_cell/dropout_3/random_uniform/RandomUniform?
!gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_3/GreaterEqual/y?
gru_cell/dropout_3/GreaterEqualGreaterEqual8gru_cell/dropout_3/random_uniform/RandomUniform:output:0*gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_3/GreaterEqual?
gru_cell/dropout_3/CastCast#gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Cast?
gru_cell/dropout_3/Mul_1Mulgru_cell/dropout_3/Mul:z:0gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Mul_1y
gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_4/Const?
gru_cell/dropout_4/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Mul?
gru_cell/dropout_4/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_4/Shape?
/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_4/random_uniform/RandomUniform?
!gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_4/GreaterEqual/y?
gru_cell/dropout_4/GreaterEqualGreaterEqual8gru_cell/dropout_4/random_uniform/RandomUniform:output:0*gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_4/GreaterEqual?
gru_cell/dropout_4/CastCast#gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Cast?
gru_cell/dropout_4/Mul_1Mulgru_cell/dropout_4/Mul:z:0gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Mul_1y
gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_5/Const?
gru_cell/dropout_5/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Mul?
gru_cell/dropout_5/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_5/Shape?
/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??o21
/gru_cell/dropout_5/random_uniform/RandomUniform?
!gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_5/GreaterEqual/y?
gru_cell/dropout_5/GreaterEqualGreaterEqual8gru_cell/dropout_5/random_uniform/RandomUniform:output:0*gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_5/GreaterEqual?
gru_cell/dropout_5/CastCast#gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Cast?
gru_cell/dropout_5/Mul_1Mulgru_cell/dropout_5/Mul:z:0gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Mul_1?
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell/ReadVariableOp?
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell/unstack?
gru_cell/mulMulstrided_slice_2:output:0gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul?
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_1?
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_2?
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_1?
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stack?
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice/stack_1?
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2?
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice?
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul?
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_2?
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_1/stack?
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_1/stack_1?
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2?
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_1?
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_1?
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_3?
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2 
gru_cell/strided_slice_2/stack?
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1?
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2?
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_2?
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_2?
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stack?
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_3/stack_1?
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2?
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_3?
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd?
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_4/stack?
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_4/stack_1?
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2?
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_4?
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_1?
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2 
gru_cell/strided_slice_5/stack?
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1?
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2?
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_5?
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_2?
gru_cell/mul_3Mulzeros:output:0gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_3?
gru_cell/mul_4Mulzeros:output:0gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_4?
gru_cell/mul_5Mulzeros:output:0gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_5?
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_4?
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stack?
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2"
 gru_cell/strided_slice_6/stack_1?
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2?
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_6?
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_3?
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_5?
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_7/stack?
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_7/stack_1?
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2?
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_7?
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_4?
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stack?
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_8/stack_1?
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2?
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_8?
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_3?
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_9/stack?
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_9/stack_1?
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2?
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_9?
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_4?
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/adds
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid?
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_1y
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid_1?
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_6?
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
gru_cell/strided_slice_10/stack?
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1?
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2?
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_10?
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_5?
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2!
gru_cell/strided_slice_11/stack?
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1?
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2?
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_11?
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_5?
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_6?
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_2l
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Tanh
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/sub/x?
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/sub~
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_8?
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_19539*
condR
while_cond_19538*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_19824

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_166482
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????L2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????L:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?	
?
__inference_restore_fn_20189
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
.
__inference__initializer_20157
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_19840

inputs0
matmul_readvariableop_resource:L-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:L*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?T
?
__inference_adapt_step_18399
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
22
IteratorGetNextl
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:?????????2
StringLower?
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2
StaticRegexReplaceg
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
StringSplit/Const?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2
StringSplit/StringSplitV2?
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
StringSplit/strided_slice/stack?
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!StringSplit/strided_slice/stack_1?
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!StringSplit/strided_slice/stack_2?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
StringSplit/strided_slice?
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!StringSplit/strided_slice_1/stack?
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_1?
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_2?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
StringSplit/strided_slice_1?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2D
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2R
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2Q
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2O
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	2
UniqueWithCounts?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:2*
(None_lookup_table_find/LookupTableFindV2?
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:2
add?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2.
,None_lookup_table_insert/LookupTableInsertV2*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?

?
@__inference_dense_layer_call_and_return_conditional_losses_16637

inputs0
matmul_readvariableop_resource:@L-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@L*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????L2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
2__inference_model_calcbase_GRU_layer_call_fn_17307
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	@?
	unknown_7:@L
	unknown_8:L
	unknown_9:L

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_172512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
˖
?
!__inference__traced_restore_20450
file_prefix9
%assignvariableop_embedding_embeddings:
?N?1
assignvariableop_1_dense_kernel:@L+
assignvariableop_2_dense_bias:L3
!assignvariableop_3_dense_1_kernel:L-
assignvariableop_4_dense_1_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: ;
'assignvariableop_10_gru_gru_cell_kernel:
??D
1assignvariableop_11_gru_gru_cell_recurrent_kernel:	@?8
%assignvariableop_12_gru_gru_cell_bias:	?M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: C
/assignvariableop_17_adam_embedding_embeddings_m:
?N?9
'assignvariableop_18_adam_dense_kernel_m:@L3
%assignvariableop_19_adam_dense_bias_m:L;
)assignvariableop_20_adam_dense_1_kernel_m:L5
'assignvariableop_21_adam_dense_1_bias_m:B
.assignvariableop_22_adam_gru_gru_cell_kernel_m:
??K
8assignvariableop_23_adam_gru_gru_cell_recurrent_kernel_m:	@??
,assignvariableop_24_adam_gru_gru_cell_bias_m:	?C
/assignvariableop_25_adam_embedding_embeddings_v:
?N?9
'assignvariableop_26_adam_dense_kernel_v:@L3
%assignvariableop_27_adam_dense_bias_v:L;
)assignvariableop_28_adam_dense_1_kernel_v:L5
'assignvariableop_29_adam_dense_1_bias_v:B
.assignvariableop_30_adam_gru_gru_cell_kernel_v:
??K
8assignvariableop_31_adam_gru_gru_cell_recurrent_kernel_v:	@??
,assignvariableop_32_adam_gru_gru_cell_bias_v:	?
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*?
value?B?$B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp'assignvariableop_10_gru_gru_cell_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp1assignvariableop_11_gru_gru_cell_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_gru_gru_cell_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:13RestoreV2:tensors:14*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2n
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp/assignvariableop_17_adam_embedding_embeddings_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp%assignvariableop_19_adam_dense_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_1_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_gru_gru_cell_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_gru_gru_cell_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_gru_gru_cell_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_adam_embedding_embeddings_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp%assignvariableop_27_adam_dense_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_1_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_1_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_gru_gru_cell_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_gru_gru_cell_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_gru_gru_cell_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33f
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_34?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_34Identity_34:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
??
?
C__inference_gru_cell_layer_call_and_return_conditional_losses_15904

inputs

states*
readvariableop_resource:	?-
readvariableop_1_resource:
??,
readvariableop_4_resource:	@?
identity

identity_1??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?ReadVariableOp_4?ReadVariableOp_5?ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_3/Const?
dropout_3/MulMulones_like_1:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_3/Mulf
dropout_3/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_3/Mul_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?Θ2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mul_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slicem
MatMulMatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
MatMul?
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_1?
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2?
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_4?
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2?
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_5?
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2d
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_6u
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_7u
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack|
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_8?
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3x
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2?
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_9?
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_4k
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidq
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_6?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_10v
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2?
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_11?
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_5j
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
mul_6h
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh\
mul_7MulSigmoid:y:0states*
T0*'
_output_shapes
:?????????@2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
subZ
mul_8Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_8_
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:?????????@2
add_3d
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:??????????:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?

?
@__inference_dense_layer_call_and_return_conditional_losses_19793

inputs0
matmul_readvariableop_resource:@L-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@L*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????L2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_16648

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????L2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????L2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????L:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_19807

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????L2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????L2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????L:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?m
?
C__inference_gru_cell_layer_call_and_return_conditional_losses_19951

inputs
states_0*
readvariableop_resource:	?-
readvariableop_1_resource:
??,
readvariableop_4_resource:	@?
identity

identity_1??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?ReadVariableOp_4?ReadVariableOp_5?ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slicem
MatMulMatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
MatMul?
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_1?
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2?
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_4?
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2?
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_5?
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2g
mul_3Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_6u
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_7u
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack|
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_8?
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3x
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2?
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_9?
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_4k
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidq
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_6?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_10v
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2?
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_11?
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_5j
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
mul_6h
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh^
mul_7MulSigmoid:y:0states_0*
T0*'
_output_shapes
:?????????@2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
subZ
mul_8Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_8_
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:?????????@2
add_3d
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:??????????:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
Ç
?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17453
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_17431:
?N?
	gru_17434:	?
	gru_17436:
??
	gru_17438:	@?
dense_17441:@L
dense_17443:L
dense_1_17447:L
dense_1_17449:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?gru/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_17431*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_163332#
!embedding/StatefulPartitionedCall?
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_17434	gru_17436	gru_17438*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_171302
gru/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_17441dense_17443*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_166372
dense/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_167252!
dropout/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_17447dense_1_17449*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_166612!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
>__inference_gru_layer_call_and_return_conditional_losses_16619

inputs3
 gru_cell_readvariableop_resource:	?6
"gru_cell_readvariableop_1_resource:
??5
"gru_cell_readvariableop_4_resource:	@?
identity??gru_cell/ReadVariableOp?gru_cell/ReadVariableOp_1?gru_cell/ReadVariableOp_2?gru_cell/ReadVariableOp_3?gru_cell/ReadVariableOp_4?gru_cell/ReadVariableOp_5?gru_cell/ReadVariableOp_6?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like/Const?
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/ones_likev
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like_1/Const?
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/ones_like_1?
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell/ReadVariableOp?
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell/unstack?
gru_cell/mulMulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul?
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_1?
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_2?
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_1?
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stack?
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice/stack_1?
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2?
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice?
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul?
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_2?
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_1/stack?
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_1/stack_1?
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2?
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_1?
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_1?
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_3?
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2 
gru_cell/strided_slice_2/stack?
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1?
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2?
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_2?
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_2?
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stack?
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_3/stack_1?
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2?
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_3?
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd?
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_4/stack?
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_4/stack_1?
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2?
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_4?
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_1?
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2 
gru_cell/strided_slice_5/stack?
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1?
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2?
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_5?
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_2?
gru_cell/mul_3Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_3?
gru_cell/mul_4Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_4?
gru_cell/mul_5Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_5?
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_4?
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stack?
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2"
 gru_cell/strided_slice_6/stack_1?
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2?
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_6?
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_3?
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_5?
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_7/stack?
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_7/stack_1?
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2?
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_7?
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_4?
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stack?
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_8/stack_1?
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2?
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_8?
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_3?
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_9/stack?
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_9/stack_1?
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2?
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_9?
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_4?
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/adds
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid?
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_1y
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid_1?
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_6?
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
gru_cell/strided_slice_10/stack?
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1?
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2?
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_10?
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_5?
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2!
gru_cell/strided_slice_11/stack?
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1?
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2?
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_11?
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_5?
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_6?
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_2l
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Tanh
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/sub/x?
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/sub~
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_8?
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_16467*
condR
while_cond_16466*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_gru_layer_call_fn_19772

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_166192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
(__inference_gru_cell_layer_call_fn_20129

inputs
states_0
unknown:	?
	unknown_0:
??
	unknown_1:	@?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_159042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:??????????:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
#__inference_gru_layer_call_fn_19783

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_171302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
(__inference_gru_cell_layer_call_fn_20115

inputs
states_0
unknown:	?
	unknown_0:
??
	unknown_1:	@?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_156502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:??????????:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?=
?
>__inference_gru_layer_call_and_return_conditional_losses_15727

inputs!
gru_cell_15651:	?"
gru_cell_15653:
??!
gru_cell_15655:	@?
identity?? gru_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_15651gru_cell_15653gru_cell_15655*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_156502"
 gru_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_15651gru_cell_15653gru_cell_15655*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_15663*
condR
while_cond_15662*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityy
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?
'model_calcbase_GRU_gru_while_body_15347J
Fmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_while_loop_counterP
Lmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_while_maximum_iterations,
(model_calcbase_gru_gru_while_placeholder.
*model_calcbase_gru_gru_while_placeholder_1.
*model_calcbase_gru_gru_while_placeholder_2I
Emodel_calcbase_gru_gru_while_model_calcbase_gru_gru_strided_slice_1_0?
?model_calcbase_gru_gru_while_tensorarrayv2read_tensorlistgetitem_model_calcbase_gru_gru_tensorarrayunstack_tensorlistfromtensor_0R
?model_calcbase_gru_gru_while_gru_cell_readvariableop_resource_0:	?U
Amodel_calcbase_gru_gru_while_gru_cell_readvariableop_1_resource_0:
??T
Amodel_calcbase_gru_gru_while_gru_cell_readvariableop_4_resource_0:	@?)
%model_calcbase_gru_gru_while_identity+
'model_calcbase_gru_gru_while_identity_1+
'model_calcbase_gru_gru_while_identity_2+
'model_calcbase_gru_gru_while_identity_3+
'model_calcbase_gru_gru_while_identity_4G
Cmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_strided_slice_1?
model_calcbase_gru_gru_while_tensorarrayv2read_tensorlistgetitem_model_calcbase_gru_gru_tensorarrayunstack_tensorlistfromtensorP
=model_calcbase_gru_gru_while_gru_cell_readvariableop_resource:	?S
?model_calcbase_gru_gru_while_gru_cell_readvariableop_1_resource:
??R
?model_calcbase_gru_gru_while_gru_cell_readvariableop_4_resource:	@???4model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp?6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_1?6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_2?6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_3?6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_4?6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_5?6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_6?
Nmodel_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2P
Nmodel_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape?
@model_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_calcbase_gru_gru_while_tensorarrayv2read_tensorlistgetitem_model_calcbase_gru_gru_tensorarrayunstack_tensorlistfromtensor_0(model_calcbase_gru_gru_while_placeholderWmodel_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02B
@model_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem?
5model_calcbase_GRU/gru/while/gru_cell/ones_like/ShapeShapeGmodel_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5model_calcbase_GRU/gru/while/gru_cell/ones_like/Shape?
5model_calcbase_GRU/gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5model_calcbase_GRU/gru/while/gru_cell/ones_like/Const?
/model_calcbase_GRU/gru/while/gru_cell/ones_likeFill>model_calcbase_GRU/gru/while/gru_cell/ones_like/Shape:output:0>model_calcbase_GRU/gru/while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????21
/model_calcbase_GRU/gru/while/gru_cell/ones_like?
7model_calcbase_GRU/gru/while/gru_cell/ones_like_1/ShapeShape*model_calcbase_gru_gru_while_placeholder_2*
T0*
_output_shapes
:29
7model_calcbase_GRU/gru/while/gru_cell/ones_like_1/Shape?
7model_calcbase_GRU/gru/while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7model_calcbase_GRU/gru/while/gru_cell/ones_like_1/Const?
1model_calcbase_GRU/gru/while/gru_cell/ones_like_1Fill@model_calcbase_GRU/gru/while/gru_cell/ones_like_1/Shape:output:0@model_calcbase_GRU/gru/while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@23
1model_calcbase_GRU/gru/while/gru_cell/ones_like_1?
4model_calcbase_GRU/gru/while/gru_cell/ReadVariableOpReadVariableOp?model_calcbase_gru_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype026
4model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp?
-model_calcbase_GRU/gru/while/gru_cell/unstackUnpack<model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2/
-model_calcbase_GRU/gru/while/gru_cell/unstack?
)model_calcbase_GRU/gru/while/gru_cell/mulMulGmodel_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem:item:08model_calcbase_GRU/gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2+
)model_calcbase_GRU/gru/while/gru_cell/mul?
+model_calcbase_GRU/gru/while/gru_cell/mul_1MulGmodel_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem:item:08model_calcbase_GRU/gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2-
+model_calcbase_GRU/gru/while/gru_cell/mul_1?
+model_calcbase_GRU/gru/while/gru_cell/mul_2MulGmodel_calcbase_GRU/gru/while/TensorArrayV2Read/TensorListGetItem:item:08model_calcbase_GRU/gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2-
+model_calcbase_GRU/gru/while/gru_cell/mul_2?
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_1ReadVariableOpAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype028
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_1?
9model_calcbase_GRU/gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_calcbase_GRU/gru/while/gru_cell/strided_slice/stack?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice/stack_1?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice/stack_2?
3model_calcbase_GRU/gru/while/gru_cell/strided_sliceStridedSlice>model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_1:value:0Bmodel_calcbase_GRU/gru/while/gru_cell/strided_slice/stack:output:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice/stack_1:output:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask25
3model_calcbase_GRU/gru/while/gru_cell/strided_slice?
,model_calcbase_GRU/gru/while/gru_cell/MatMulMatMul-model_calcbase_GRU/gru/while/gru_cell/mul:z:0<model_calcbase_GRU/gru/while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2.
,model_calcbase_GRU/gru/while/gru_cell/MatMul?
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_2ReadVariableOpAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype028
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_2?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_1StridedSlice>model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_2:value:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_1?
.model_calcbase_GRU/gru/while/gru_cell/MatMul_1MatMul/model_calcbase_GRU/gru/while/gru_cell/mul_1:z:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@20
.model_calcbase_GRU/gru/while/gru_cell/MatMul_1?
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_3ReadVariableOpAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype028
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_3?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_2StridedSlice>model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_3:value:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_2?
.model_calcbase_GRU/gru/while/gru_cell/MatMul_2MatMul/model_calcbase_GRU/gru/while/gru_cell/mul_2:z:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@20
.model_calcbase_GRU/gru/while/gru_cell/MatMul_2?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_3StridedSlice6model_calcbase_GRU/gru/while/gru_cell/unstack:output:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_3?
-model_calcbase_GRU/gru/while/gru_cell/BiasAddBiasAdd6model_calcbase_GRU/gru/while/gru_cell/MatMul:product:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2/
-model_calcbase_GRU/gru/while/gru_cell/BiasAdd?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_4StridedSlice6model_calcbase_GRU/gru/while/gru_cell/unstack:output:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_4?
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_1BiasAdd8model_calcbase_GRU/gru/while/gru_cell/MatMul_1:product:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@21
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_1?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_5StridedSlice6model_calcbase_GRU/gru/while/gru_cell/unstack:output:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_5?
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_2BiasAdd8model_calcbase_GRU/gru/while/gru_cell/MatMul_2:product:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@21
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_2?
+model_calcbase_GRU/gru/while/gru_cell/mul_3Mul*model_calcbase_gru_gru_while_placeholder_2:model_calcbase_GRU/gru/while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/mul_3?
+model_calcbase_GRU/gru/while/gru_cell/mul_4Mul*model_calcbase_gru_gru_while_placeholder_2:model_calcbase_GRU/gru/while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/mul_4?
+model_calcbase_GRU/gru/while/gru_cell/mul_5Mul*model_calcbase_gru_gru_while_placeholder_2:model_calcbase_GRU/gru/while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/mul_5?
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_4ReadVariableOpAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype028
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_4?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_6StridedSlice>model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_4:value:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_6?
.model_calcbase_GRU/gru/while/gru_cell/MatMul_3MatMul/model_calcbase_GRU/gru/while/gru_cell/mul_3:z:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@20
.model_calcbase_GRU/gru/while/gru_cell/MatMul_3?
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_5ReadVariableOpAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype028
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_5?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_7StridedSlice>model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_5:value:0Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_7?
.model_calcbase_GRU/gru/while/gru_cell/MatMul_4MatMul/model_calcbase_GRU/gru/while/gru_cell/mul_4:z:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@20
.model_calcbase_GRU/gru/while/gru_cell/MatMul_4?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_8StridedSlice6model_calcbase_GRU/gru/while/gru_cell/unstack:output:1Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_8?
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_3BiasAdd8model_calcbase_GRU/gru/while/gru_cell/MatMul_3:product:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@21
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_3?
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2=
;model_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack_1?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack_2?
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_9StridedSlice6model_calcbase_GRU/gru/while/gru_cell/unstack:output:1Dmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack_1:output:0Fmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@27
5model_calcbase_GRU/gru/while/gru_cell/strided_slice_9?
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_4BiasAdd8model_calcbase_GRU/gru/while/gru_cell/MatMul_4:product:0>model_calcbase_GRU/gru/while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@21
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_4?
)model_calcbase_GRU/gru/while/gru_cell/addAddV26model_calcbase_GRU/gru/while/gru_cell/BiasAdd:output:08model_calcbase_GRU/gru/while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/while/gru_cell/add?
-model_calcbase_GRU/gru/while/gru_cell/SigmoidSigmoid-model_calcbase_GRU/gru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2/
-model_calcbase_GRU/gru/while/gru_cell/Sigmoid?
+model_calcbase_GRU/gru/while/gru_cell/add_1AddV28model_calcbase_GRU/gru/while/gru_cell/BiasAdd_1:output:08model_calcbase_GRU/gru/while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/add_1?
/model_calcbase_GRU/gru/while/gru_cell/Sigmoid_1Sigmoid/model_calcbase_GRU/gru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@21
/model_calcbase_GRU/gru/while/gru_cell/Sigmoid_1?
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_6ReadVariableOpAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype028
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_6?
<model_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2>
<model_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack?
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack_1?
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack_2?
6model_calcbase_GRU/gru/while/gru_cell/strided_slice_10StridedSlice>model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_6:value:0Emodel_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack:output:0Gmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack_1:output:0Gmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask28
6model_calcbase_GRU/gru/while/gru_cell/strided_slice_10?
.model_calcbase_GRU/gru/while/gru_cell/MatMul_5MatMul/model_calcbase_GRU/gru/while/gru_cell/mul_5:z:0?model_calcbase_GRU/gru/while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@20
.model_calcbase_GRU/gru/while/gru_cell/MatMul_5?
<model_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2>
<model_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack?
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2@
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack_1?
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>model_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack_2?
6model_calcbase_GRU/gru/while/gru_cell/strided_slice_11StridedSlice6model_calcbase_GRU/gru/while/gru_cell/unstack:output:1Emodel_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack:output:0Gmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack_1:output:0Gmodel_calcbase_GRU/gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask28
6model_calcbase_GRU/gru/while/gru_cell/strided_slice_11?
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_5BiasAdd8model_calcbase_GRU/gru/while/gru_cell/MatMul_5:product:0?model_calcbase_GRU/gru/while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@21
/model_calcbase_GRU/gru/while/gru_cell/BiasAdd_5?
+model_calcbase_GRU/gru/while/gru_cell/mul_6Mul3model_calcbase_GRU/gru/while/gru_cell/Sigmoid_1:y:08model_calcbase_GRU/gru/while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/mul_6?
+model_calcbase_GRU/gru/while/gru_cell/add_2AddV28model_calcbase_GRU/gru/while/gru_cell/BiasAdd_2:output:0/model_calcbase_GRU/gru/while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/add_2?
*model_calcbase_GRU/gru/while/gru_cell/TanhTanh/model_calcbase_GRU/gru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2,
*model_calcbase_GRU/gru/while/gru_cell/Tanh?
+model_calcbase_GRU/gru/while/gru_cell/mul_7Mul1model_calcbase_GRU/gru/while/gru_cell/Sigmoid:y:0*model_calcbase_gru_gru_while_placeholder_2*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/mul_7?
+model_calcbase_GRU/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+model_calcbase_GRU/gru/while/gru_cell/sub/x?
)model_calcbase_GRU/gru/while/gru_cell/subSub4model_calcbase_GRU/gru/while/gru_cell/sub/x:output:01model_calcbase_GRU/gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2+
)model_calcbase_GRU/gru/while/gru_cell/sub?
+model_calcbase_GRU/gru/while/gru_cell/mul_8Mul-model_calcbase_GRU/gru/while/gru_cell/sub:z:0.model_calcbase_GRU/gru/while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/mul_8?
+model_calcbase_GRU/gru/while/gru_cell/add_3AddV2/model_calcbase_GRU/gru/while/gru_cell/mul_7:z:0/model_calcbase_GRU/gru/while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2-
+model_calcbase_GRU/gru/while/gru_cell/add_3?
Amodel_calcbase_GRU/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*model_calcbase_gru_gru_while_placeholder_1(model_calcbase_gru_gru_while_placeholder/model_calcbase_GRU/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02C
Amodel_calcbase_GRU/gru/while/TensorArrayV2Write/TensorListSetItem?
"model_calcbase_GRU/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_calcbase_GRU/gru/while/add/y?
 model_calcbase_GRU/gru/while/addAddV2(model_calcbase_gru_gru_while_placeholder+model_calcbase_GRU/gru/while/add/y:output:0*
T0*
_output_shapes
: 2"
 model_calcbase_GRU/gru/while/add?
$model_calcbase_GRU/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_calcbase_GRU/gru/while/add_1/y?
"model_calcbase_GRU/gru/while/add_1AddV2Fmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_while_loop_counter-model_calcbase_GRU/gru/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"model_calcbase_GRU/gru/while/add_1?
%model_calcbase_GRU/gru/while/IdentityIdentity&model_calcbase_GRU/gru/while/add_1:z:0"^model_calcbase_GRU/gru/while/NoOp*
T0*
_output_shapes
: 2'
%model_calcbase_GRU/gru/while/Identity?
'model_calcbase_GRU/gru/while/Identity_1IdentityLmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_while_maximum_iterations"^model_calcbase_GRU/gru/while/NoOp*
T0*
_output_shapes
: 2)
'model_calcbase_GRU/gru/while/Identity_1?
'model_calcbase_GRU/gru/while/Identity_2Identity$model_calcbase_GRU/gru/while/add:z:0"^model_calcbase_GRU/gru/while/NoOp*
T0*
_output_shapes
: 2)
'model_calcbase_GRU/gru/while/Identity_2?
'model_calcbase_GRU/gru/while/Identity_3IdentityQmodel_calcbase_GRU/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^model_calcbase_GRU/gru/while/NoOp*
T0*
_output_shapes
: 2)
'model_calcbase_GRU/gru/while/Identity_3?
'model_calcbase_GRU/gru/while/Identity_4Identity/model_calcbase_GRU/gru/while/gru_cell/add_3:z:0"^model_calcbase_GRU/gru/while/NoOp*
T0*'
_output_shapes
:?????????@2)
'model_calcbase_GRU/gru/while/Identity_4?
!model_calcbase_GRU/gru/while/NoOpNoOp5^model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp7^model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_17^model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_27^model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_37^model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_47^model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_57^model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2#
!model_calcbase_GRU/gru/while/NoOp"?
?model_calcbase_gru_gru_while_gru_cell_readvariableop_1_resourceAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_1_resource_0"?
?model_calcbase_gru_gru_while_gru_cell_readvariableop_4_resourceAmodel_calcbase_gru_gru_while_gru_cell_readvariableop_4_resource_0"?
=model_calcbase_gru_gru_while_gru_cell_readvariableop_resource?model_calcbase_gru_gru_while_gru_cell_readvariableop_resource_0"W
%model_calcbase_gru_gru_while_identity.model_calcbase_GRU/gru/while/Identity:output:0"[
'model_calcbase_gru_gru_while_identity_10model_calcbase_GRU/gru/while/Identity_1:output:0"[
'model_calcbase_gru_gru_while_identity_20model_calcbase_GRU/gru/while/Identity_2:output:0"[
'model_calcbase_gru_gru_while_identity_30model_calcbase_GRU/gru/while/Identity_3:output:0"[
'model_calcbase_gru_gru_while_identity_40model_calcbase_GRU/gru/while/Identity_4:output:0"?
Cmodel_calcbase_gru_gru_while_model_calcbase_gru_gru_strided_slice_1Emodel_calcbase_gru_gru_while_model_calcbase_gru_gru_strided_slice_1_0"?
model_calcbase_gru_gru_while_tensorarrayv2read_tensorlistgetitem_model_calcbase_gru_gru_tensorarrayunstack_tensorlistfromtensor?model_calcbase_gru_gru_while_tensorarrayv2read_tensorlistgetitem_model_calcbase_gru_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2l
4model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp4model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp2p
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_16model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_12p
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_26model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_22p
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_36model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_32p
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_46model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_42p
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_56model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_52p
6model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_66model_calcbase_GRU/gru/while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_15662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_15662___redundant_placeholder03
/while_while_cond_15662___redundant_placeholder13
/while_while_cond_15662___redundant_placeholder23
/while_while_cond_15662___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?
>__inference_gru_layer_call_and_return_conditional_losses_17130

inputs3
 gru_cell_readvariableop_resource:	?6
"gru_cell_readvariableop_1_resource:
??5
"gru_cell_readvariableop_4_resource:	@?
identity??gru_cell/ReadVariableOp?gru_cell/ReadVariableOp_1?gru_cell/ReadVariableOp_2?gru_cell/ReadVariableOp_3?gru_cell/ReadVariableOp_4?gru_cell/ReadVariableOp_5?gru_cell/ReadVariableOp_6?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like/Const?
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/ones_likeu
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout/Const?
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/Mul{
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout/Shape?
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??k2/
-gru_cell/dropout/random_uniform/RandomUniform?
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2!
gru_cell/dropout/GreaterEqual/y?
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/GreaterEqual?
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout/Cast?
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout/Mul_1y
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_1/Const?
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_1/Mul
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_1/Shape?
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_1/random_uniform/RandomUniform?
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_1/GreaterEqual/y?
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
gru_cell/dropout_1/GreaterEqual?
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout_1/Cast?
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_1/Mul_1y
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_2/Const?
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_2/Mul
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_2/Shape?
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_2/random_uniform/RandomUniform?
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_2/GreaterEqual/y?
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
gru_cell/dropout_2/GreaterEqual?
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru_cell/dropout_2/Cast?
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru_cell/dropout_2/Mul_1v
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like_1/Const?
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/ones_like_1y
gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_3/Const?
gru_cell/dropout_3/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Mul?
gru_cell/dropout_3/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_3/Shape?
/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_3/random_uniform/RandomUniform?
!gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_3/GreaterEqual/y?
gru_cell/dropout_3/GreaterEqualGreaterEqual8gru_cell/dropout_3/random_uniform/RandomUniform:output:0*gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_3/GreaterEqual?
gru_cell/dropout_3/CastCast#gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Cast?
gru_cell/dropout_3/Mul_1Mulgru_cell/dropout_3/Mul:z:0gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_3/Mul_1y
gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_4/Const?
gru_cell/dropout_4/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Mul?
gru_cell/dropout_4/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_4/Shape?
/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???21
/gru_cell/dropout_4/random_uniform/RandomUniform?
!gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_4/GreaterEqual/y?
gru_cell/dropout_4/GreaterEqualGreaterEqual8gru_cell/dropout_4/random_uniform/RandomUniform:output:0*gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_4/GreaterEqual?
gru_cell/dropout_4/CastCast#gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Cast?
gru_cell/dropout_4/Mul_1Mulgru_cell/dropout_4/Mul:z:0gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_4/Mul_1y
gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru_cell/dropout_5/Const?
gru_cell/dropout_5/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Mul?
gru_cell/dropout_5/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_5/Shape?
/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?21
/gru_cell/dropout_5/random_uniform/RandomUniform?
!gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2#
!gru_cell/dropout_5/GreaterEqual/y?
gru_cell/dropout_5/GreaterEqualGreaterEqual8gru_cell/dropout_5/random_uniform/RandomUniform:output:0*gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
gru_cell/dropout_5/GreaterEqual?
gru_cell/dropout_5/CastCast#gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Cast?
gru_cell/dropout_5/Mul_1Mulgru_cell/dropout_5/Mul:z:0gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/dropout_5/Mul_1?
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell/ReadVariableOp?
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell/unstack?
gru_cell/mulMulstrided_slice_2:output:0gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul?
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_1?
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_2?
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_1?
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stack?
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice/stack_1?
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2?
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice?
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul?
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_2?
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_1/stack?
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_1/stack_1?
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2?
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_1?
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_1?
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_3?
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2 
gru_cell/strided_slice_2/stack?
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1?
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2?
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_2?
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_2?
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stack?
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_3/stack_1?
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2?
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_3?
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd?
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_4/stack?
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_4/stack_1?
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2?
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_4?
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_1?
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2 
gru_cell/strided_slice_5/stack?
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1?
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2?
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_5?
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_2?
gru_cell/mul_3Mulzeros:output:0gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_3?
gru_cell/mul_4Mulzeros:output:0gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_4?
gru_cell/mul_5Mulzeros:output:0gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_5?
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_4?
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stack?
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2"
 gru_cell/strided_slice_6/stack_1?
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2?
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_6?
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_3?
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_5?
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_7/stack?
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_7/stack_1?
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2?
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_7?
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_4?
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stack?
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_8/stack_1?
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2?
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_8?
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_3?
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_9/stack?
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_9/stack_1?
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2?
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_9?
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_4?
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/adds
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid?
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_1y
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid_1?
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_6?
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
gru_cell/strided_slice_10/stack?
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1?
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2?
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_10?
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_5?
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2!
gru_cell/strided_slice_11/stack?
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1?
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2?
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_11?
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_5?
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_6?
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_2l
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Tanh
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/sub/x?
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/sub~
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_8?
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_16930*
condR
while_cond_16929*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
while_body_18546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	?>
*while_gru_cell_readvariableop_1_resource_0:
??=
*while_gru_cell_readvariableop_4_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	?<
(while_gru_cell_readvariableop_1_resource:
??;
(while_gru_cell_readvariableop_4_resource:	@???while/gru_cell/ReadVariableOp?while/gru_cell/ReadVariableOp_1?while/gru_cell/ReadVariableOp_2?while/gru_cell/ReadVariableOp_3?while/gru_cell/ReadVariableOp_4?while/gru_cell/ReadVariableOp_5?while/gru_cell/ReadVariableOp_6?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/Shape?
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
while/gru_cell/ones_like/Const?
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/ones_like?
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/Shape?
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell/ones_like_1/Const?
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/ones_like_1?
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02
while/gru_cell/ReadVariableOp?
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell/unstack?
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul?
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_1?
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_2?
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_1?
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stack?
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice/stack_1?
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2?
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
while/gru_cell/strided_slice?
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul?
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_2?
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_1/stack?
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_1/stack_1?
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2?
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1?
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_1?
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_3?
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$while/gru_cell/strided_slice_2/stack?
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1?
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2?
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2?
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_2?
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stack?
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_3/stack_1?
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2?
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_3?
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd?
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_4/stack?
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_4/stack_1?
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2?
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_4?
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_1?
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2&
$while/gru_cell/strided_slice_5/stack?
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1?
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2?
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2 
while/gru_cell/strided_slice_5?
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_2?
while/gru_cell/mul_3Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_3?
while/gru_cell/mul_4Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_4?
while/gru_cell/mul_5Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_5?
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_4?
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack?
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2(
&while/gru_cell/strided_slice_6/stack_1?
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2?
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6?
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_3?
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_5?
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_7/stack?
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_7/stack_1?
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2?
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7?
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_4?
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stack?
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_8/stack_1?
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2?
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_8?
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_3?
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_9/stack?
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_9/stack_1?
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2?
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_9?
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_4?
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add?
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid?
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_1?
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid_1?
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_6?
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/gru_cell/strided_slice_10/stack?
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1?
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2?
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10?
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_5?
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2'
%while/gru_cell/strided_slice_11/stack?
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1?
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2?
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2!
while/gru_cell/strided_slice_11?
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_5?
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_6?
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_2~
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Tanh?
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell/sub/x?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/sub?
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_8?
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
`
'__inference_dropout_layer_call_fn_19829

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_167252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????L2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????L22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
,
__inference__destroyer_20162
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
F
__inference__creator_20152
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	2
MutableHashTablei
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identitya
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?

)__inference_embedding_layer_call_fn_18415

inputs	
unknown:
?N?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_163332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
*
__inference_<lambda>_20202
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_16333

inputs	*
embedding_lookup_16327:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_16327inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/16327*,
_output_shapes
:??????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/16327*,
_output_shapes
:??????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17251

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_17229:
?N?
	gru_17232:	?
	gru_17234:
??
	gru_17236:	@?
dense_17239:@L
dense_17241:L
dense_1_17245:L
dense_1_17247:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?gru/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_17229*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_163332#
!embedding/StatefulPartitionedCall?
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_17232	gru_17234	gru_17236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_171302
gru/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_17239dense_17241*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_166372
dense/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_167252!
dropout/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_17245dense_1_17247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_166612!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
gru_while_cond_18071$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1;
7gru_while_gru_while_cond_18071___redundant_placeholder0;
7gru_while_gru_while_cond_18071___redundant_placeholder1;
7gru_while_gru_while_cond_18071___redundant_placeholder2;
7gru_while_gru_while_cond_18071___redundant_placeholder3
gru_while_identity
?
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: 2
gru/while/Lessi
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: 2
gru/while/Identity"1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_16929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_16929___redundant_placeholder03
/while_while_cond_16929___redundant_placeholder13
/while_while_cond_16929___redundant_placeholder23
/while_while_cond_16929___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?"
?
while_body_15971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_gru_cell_15993_0:	?*
while_gru_cell_15995_0:
??)
while_gru_cell_15997_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_gru_cell_15993:	?(
while_gru_cell_15995:
??'
while_gru_cell_15997:	@???&while/gru_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_15993_0while_gru_cell_15995_0while_gru_cell_15997_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_159042(
&while/gru_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp".
while_gru_cell_15993while_gru_cell_15993_0".
while_gru_cell_15995while_gru_cell_15995_0".
while_gru_cell_15997while_gru_cell_15997_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_201976
2key_value_init134_lookuptableimportv2_table_handle.
*key_value_init134_lookuptableimportv2_keys0
,key_value_init134_lookuptableimportv2_values	
identity??%key_value_init134/LookupTableImportV2?
%key_value_init134/LookupTableImportV2LookupTableImportV22key_value_init134_lookuptableimportv2_table_handle*key_value_init134_lookuptableimportv2_keys,key_value_init134_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init134/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init134/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?4:?42N
%key_value_init134/LookupTableImportV2%key_value_init134/LookupTableImportV2:!

_output_shapes	
:?4:!

_output_shapes	
:?4
??
?	
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_18293

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_17891:
?N?7
$gru_gru_cell_readvariableop_resource:	?:
&gru_gru_cell_readvariableop_1_resource:
??9
&gru_gru_cell_readvariableop_4_resource:	@?6
$dense_matmul_readvariableop_resource:@L3
%dense_biasadd_readvariableop_resource:L8
&dense_1_matmul_readvariableop_resource:L5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?gru/gru_cell/ReadVariableOp?gru/gru_cell/ReadVariableOp_1?gru/gru_cell/ReadVariableOp_2?gru/gru_cell/ReadVariableOp_3?gru/gru_cell/ReadVariableOp_4?gru/gru_cell/ReadVariableOp_5?gru/gru_cell/ReadVariableOp_6?	gru/while?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_17891?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/17891*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/17891*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1t
	gru/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stack?
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1?
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2?
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_sliced
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessj
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
gru/zeros/packed/1?
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const?
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
	gru/zeros}
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose/perm?
gru/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0gru/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
gru/transpose[
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:2
gru/Shape_1?
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_1/stack?
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_1?
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_2?
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slice_1?
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
gru/TensorArrayV2/element_shape?
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2?
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9gru/TensorArrayUnstack/TensorListFromTensor/element_shape?
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+gru/TensorArrayUnstack/TensorListFromTensor?
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_2/stack?
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_1?
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_2?
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru/strided_slice_2?
gru/gru_cell/ones_like/ShapeShapegru/strided_slice_2:output:0*
T0*
_output_shapes
:2
gru/gru_cell/ones_like/Shape?
gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru/gru_cell/ones_like/Const?
gru/gru_cell/ones_likeFill%gru/gru_cell/ones_like/Shape:output:0%gru/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/ones_like}
gru/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru/gru_cell/dropout/Const?
gru/gru_cell/dropout/MulMulgru/gru_cell/ones_like:output:0#gru/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/dropout/Mul?
gru/gru_cell/dropout/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout/Shape?
1gru/gru_cell/dropout/random_uniform/RandomUniformRandomUniform#gru/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ɾ?23
1gru/gru_cell/dropout/random_uniform/RandomUniform?
#gru/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2%
#gru/gru_cell/dropout/GreaterEqual/y?
!gru/gru_cell/dropout/GreaterEqualGreaterEqual:gru/gru_cell/dropout/random_uniform/RandomUniform:output:0,gru/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2#
!gru/gru_cell/dropout/GreaterEqual?
gru/gru_cell/dropout/CastCast%gru/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru/gru_cell/dropout/Cast?
gru/gru_cell/dropout/Mul_1Mulgru/gru_cell/dropout/Mul:z:0gru/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/dropout/Mul_1?
gru/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru/gru_cell/dropout_1/Const?
gru/gru_cell/dropout_1/MulMulgru/gru_cell/ones_like:output:0%gru/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/dropout_1/Mul?
gru/gru_cell/dropout_1/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_1/Shape?
3gru/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3gru/gru_cell/dropout_1/random_uniform/RandomUniform?
%gru/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%gru/gru_cell/dropout_1/GreaterEqual/y?
#gru/gru_cell/dropout_1/GreaterEqualGreaterEqual<gru/gru_cell/dropout_1/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#gru/gru_cell/dropout_1/GreaterEqual?
gru/gru_cell/dropout_1/CastCast'gru/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru/gru_cell/dropout_1/Cast?
gru/gru_cell/dropout_1/Mul_1Mulgru/gru_cell/dropout_1/Mul:z:0gru/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/dropout_1/Mul_1?
gru/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru/gru_cell/dropout_2/Const?
gru/gru_cell/dropout_2/MulMulgru/gru_cell/ones_like:output:0%gru/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/dropout_2/Mul?
gru/gru_cell/dropout_2/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_2/Shape?
3gru/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3gru/gru_cell/dropout_2/random_uniform/RandomUniform?
%gru/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%gru/gru_cell/dropout_2/GreaterEqual/y?
#gru/gru_cell/dropout_2/GreaterEqualGreaterEqual<gru/gru_cell/dropout_2/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#gru/gru_cell/dropout_2/GreaterEqual?
gru/gru_cell/dropout_2/CastCast'gru/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
gru/gru_cell/dropout_2/Cast?
gru/gru_cell/dropout_2/Mul_1Mulgru/gru_cell/dropout_2/Mul:z:0gru/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/dropout_2/Mul_1?
gru/gru_cell/ones_like_1/ShapeShapegru/zeros:output:0*
T0*
_output_shapes
:2 
gru/gru_cell/ones_like_1/Shape?
gru/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
gru/gru_cell/ones_like_1/Const?
gru/gru_cell/ones_like_1Fill'gru/gru_cell/ones_like_1/Shape:output:0'gru/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/ones_like_1?
gru/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru/gru_cell/dropout_3/Const?
gru/gru_cell/dropout_3/MulMul!gru/gru_cell/ones_like_1:output:0%gru/gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_3/Mul?
gru/gru_cell/dropout_3/ShapeShape!gru/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_3/Shape?
3gru/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???25
3gru/gru_cell/dropout_3/random_uniform/RandomUniform?
%gru/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%gru/gru_cell/dropout_3/GreaterEqual/y?
#gru/gru_cell/dropout_3/GreaterEqualGreaterEqual<gru/gru_cell/dropout_3/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2%
#gru/gru_cell/dropout_3/GreaterEqual?
gru/gru_cell/dropout_3/CastCast'gru/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_3/Cast?
gru/gru_cell/dropout_3/Mul_1Mulgru/gru_cell/dropout_3/Mul:z:0gru/gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_3/Mul_1?
gru/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru/gru_cell/dropout_4/Const?
gru/gru_cell/dropout_4/MulMul!gru/gru_cell/ones_like_1:output:0%gru/gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_4/Mul?
gru/gru_cell/dropout_4/ShapeShape!gru/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_4/Shape?
3gru/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2ᛀ25
3gru/gru_cell/dropout_4/random_uniform/RandomUniform?
%gru/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%gru/gru_cell/dropout_4/GreaterEqual/y?
#gru/gru_cell/dropout_4/GreaterEqualGreaterEqual<gru/gru_cell/dropout_4/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2%
#gru/gru_cell/dropout_4/GreaterEqual?
gru/gru_cell/dropout_4/CastCast'gru/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_4/Cast?
gru/gru_cell/dropout_4/Mul_1Mulgru/gru_cell/dropout_4/Mul:z:0gru/gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_4/Mul_1?
gru/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
gru/gru_cell/dropout_5/Const?
gru/gru_cell/dropout_5/MulMul!gru/gru_cell/ones_like_1:output:0%gru/gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_5/Mul?
gru/gru_cell/dropout_5/ShapeShape!gru/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_5/Shape?
3gru/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?Ƹ25
3gru/gru_cell/dropout_5/random_uniform/RandomUniform?
%gru/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%gru/gru_cell/dropout_5/GreaterEqual/y?
#gru/gru_cell/dropout_5/GreaterEqualGreaterEqual<gru/gru_cell/dropout_5/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2%
#gru/gru_cell/dropout_5/GreaterEqual?
gru/gru_cell/dropout_5/CastCast'gru/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_5/Cast?
gru/gru_cell/dropout_5/Mul_1Mulgru/gru_cell/dropout_5/Mul:z:0gru/gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/dropout_5/Mul_1?
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru/gru_cell/ReadVariableOp?
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru/gru_cell/unstack?
gru/gru_cell/mulMulgru/strided_slice_2:output:0gru/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/mul?
gru/gru_cell/mul_1Mulgru/strided_slice_2:output:0 gru/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/mul_1?
gru/gru_cell/mul_2Mulgru/strided_slice_2:output:0 gru/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
gru/gru_cell/mul_2?
gru/gru_cell/ReadVariableOp_1ReadVariableOp&gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru/gru_cell/ReadVariableOp_1?
 gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru/gru_cell/strided_slice/stack?
"gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"gru/gru_cell/strided_slice/stack_1?
"gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru/gru_cell/strided_slice/stack_2?
gru/gru_cell/strided_sliceStridedSlice%gru/gru_cell/ReadVariableOp_1:value:0)gru/gru_cell/strided_slice/stack:output:0+gru/gru_cell/strided_slice/stack_1:output:0+gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice?
gru/gru_cell/MatMulMatMulgru/gru_cell/mul:z:0#gru/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul?
gru/gru_cell/ReadVariableOp_2ReadVariableOp&gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru/gru_cell/ReadVariableOp_2?
"gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"gru/gru_cell/strided_slice_1/stack?
$gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$gru/gru_cell/strided_slice_1/stack_1?
$gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_1/stack_2?
gru/gru_cell/strided_slice_1StridedSlice%gru/gru_cell/ReadVariableOp_2:value:0+gru/gru_cell/strided_slice_1/stack:output:0-gru/gru_cell/strided_slice_1/stack_1:output:0-gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_1?
gru/gru_cell/MatMul_1MatMulgru/gru_cell/mul_1:z:0%gru/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_1?
gru/gru_cell/ReadVariableOp_3ReadVariableOp&gru_gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru/gru_cell/ReadVariableOp_3?
"gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"gru/gru_cell/strided_slice_2/stack?
$gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru/gru_cell/strided_slice_2/stack_1?
$gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_2/stack_2?
gru/gru_cell/strided_slice_2StridedSlice%gru/gru_cell/ReadVariableOp_3:value:0+gru/gru_cell/strided_slice_2/stack:output:0-gru/gru_cell/strided_slice_2/stack_1:output:0-gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_2?
gru/gru_cell/MatMul_2MatMulgru/gru_cell/mul_2:z:0%gru/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_2?
"gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_3/stack?
$gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2&
$gru/gru_cell/strided_slice_3/stack_1?
$gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_3/stack_2?
gru/gru_cell/strided_slice_3StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_3/stack:output:0-gru/gru_cell/strided_slice_3/stack_1:output:0-gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru/gru_cell/strided_slice_3?
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0%gru/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd?
"gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2$
"gru/gru_cell/strided_slice_4/stack?
$gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2&
$gru/gru_cell/strided_slice_4/stack_1?
$gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_4/stack_2?
gru/gru_cell/strided_slice_4StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_4/stack:output:0-gru/gru_cell/strided_slice_4/stack_1:output:0-gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru/gru_cell/strided_slice_4?
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0%gru/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_1?
"gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2$
"gru/gru_cell/strided_slice_5/stack?
$gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$gru/gru_cell/strided_slice_5/stack_1?
$gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_5/stack_2?
gru/gru_cell/strided_slice_5StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_5/stack:output:0-gru/gru_cell/strided_slice_5/stack_1:output:0-gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru/gru_cell/strided_slice_5?
gru/gru_cell/BiasAdd_2BiasAddgru/gru_cell/MatMul_2:product:0%gru/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_2?
gru/gru_cell/mul_3Mulgru/zeros:output:0 gru/gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_3?
gru/gru_cell/mul_4Mulgru/zeros:output:0 gru/gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_4?
gru/gru_cell/mul_5Mulgru/zeros:output:0 gru/gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_5?
gru/gru_cell/ReadVariableOp_4ReadVariableOp&gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru/gru_cell/ReadVariableOp_4?
"gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gru/gru_cell/strided_slice_6/stack?
$gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$gru/gru_cell/strided_slice_6/stack_1?
$gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_6/stack_2?
gru/gru_cell/strided_slice_6StridedSlice%gru/gru_cell/ReadVariableOp_4:value:0+gru/gru_cell/strided_slice_6/stack:output:0-gru/gru_cell/strided_slice_6/stack_1:output:0-gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_6?
gru/gru_cell/MatMul_3MatMulgru/gru_cell/mul_3:z:0%gru/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_3?
gru/gru_cell/ReadVariableOp_5ReadVariableOp&gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru/gru_cell/ReadVariableOp_5?
"gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"gru/gru_cell/strided_slice_7/stack?
$gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$gru/gru_cell/strided_slice_7/stack_1?
$gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_7/stack_2?
gru/gru_cell/strided_slice_7StridedSlice%gru/gru_cell/ReadVariableOp_5:value:0+gru/gru_cell/strided_slice_7/stack:output:0-gru/gru_cell/strided_slice_7/stack_1:output:0-gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_7?
gru/gru_cell/MatMul_4MatMulgru/gru_cell/mul_4:z:0%gru/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_4?
"gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_8/stack?
$gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2&
$gru/gru_cell/strided_slice_8/stack_1?
$gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_8/stack_2?
gru/gru_cell/strided_slice_8StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_8/stack:output:0-gru/gru_cell/strided_slice_8/stack_1:output:0-gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru/gru_cell/strided_slice_8?
gru/gru_cell/BiasAdd_3BiasAddgru/gru_cell/MatMul_3:product:0%gru/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_3?
"gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2$
"gru/gru_cell/strided_slice_9/stack?
$gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2&
$gru/gru_cell/strided_slice_9/stack_1?
$gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_9/stack_2?
gru/gru_cell/strided_slice_9StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_9/stack:output:0-gru/gru_cell/strided_slice_9/stack_1:output:0-gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru/gru_cell/strided_slice_9?
gru/gru_cell/BiasAdd_4BiasAddgru/gru_cell/MatMul_4:product:0%gru/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_4?
gru/gru_cell/addAddV2gru/gru_cell/BiasAdd:output:0gru/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/Sigmoid?
gru/gru_cell/add_1AddV2gru/gru_cell/BiasAdd_1:output:0gru/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add_1?
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/Sigmoid_1?
gru/gru_cell/ReadVariableOp_6ReadVariableOp&gru_gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru/gru_cell/ReadVariableOp_6?
#gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#gru/gru_cell/strided_slice_10/stack?
%gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%gru/gru_cell/strided_slice_10/stack_1?
%gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%gru/gru_cell/strided_slice_10/stack_2?
gru/gru_cell/strided_slice_10StridedSlice%gru/gru_cell/ReadVariableOp_6:value:0,gru/gru_cell/strided_slice_10/stack:output:0.gru/gru_cell/strided_slice_10/stack_1:output:0.gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_10?
gru/gru_cell/MatMul_5MatMulgru/gru_cell/mul_5:z:0&gru/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/MatMul_5?
#gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2%
#gru/gru_cell/strided_slice_11/stack?
%gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%gru/gru_cell/strided_slice_11/stack_1?
%gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%gru/gru_cell/strided_slice_11/stack_2?
gru/gru_cell/strided_slice_11StridedSlicegru/gru_cell/unstack:output:1,gru/gru_cell/strided_slice_11/stack:output:0.gru/gru_cell/strided_slice_11/stack_1:output:0.gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru/gru_cell/strided_slice_11?
gru/gru_cell/BiasAdd_5BiasAddgru/gru_cell/MatMul_5:product:0&gru/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/BiasAdd_5?
gru/gru_cell/mul_6Mulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_6?
gru/gru_cell/add_2AddV2gru/gru_cell/BiasAdd_2:output:0gru/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add_2x
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/Tanh?
gru/gru_cell/mul_7Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_7m
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru/gru_cell/sub/x?
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/sub?
gru/gru_cell/mul_8Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/mul_8?
gru/gru_cell/add_3AddV2gru/gru_cell/mul_7:z:0gru/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru/gru_cell/add_3?
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2#
!gru/TensorArrayV2_1/element_shape?
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2_1V
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru/time?
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru/while/maximum_iterationsr
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru/while/loop_counter?
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource&gru_gru_cell_readvariableop_1_resource&gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( * 
bodyR
gru_while_body_18072* 
condR
gru_while_cond_18071*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
	gru/while?
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   26
4gru/TensorArrayV2Stack/TensorListStack/element_shape?
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02(
&gru/TensorArrayV2Stack/TensorListStack?
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru/strided_slice_3/stack?
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_3/stack_1?
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_3/stack_2?
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
gru/strided_slice_3?
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose_1/perm?
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
gru/transpose_1n
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/runtime?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@L*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulgru/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L2
dense/BiasAdds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout/dropout/Const?
dropout/dropout/MulMuldense/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????L2
dropout/dropout/Mult
dropout/dropout/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????L*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????L2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????L2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????L2
dropout/dropout/Mul_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:L*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmaxt
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/gru_cell/ReadVariableOp^gru/gru_cell/ReadVariableOp_1^gru/gru_cell/ReadVariableOp_2^gru/gru_cell/ReadVariableOp_3^gru/gru_cell/ReadVariableOp_4^gru/gru_cell/ReadVariableOp_5^gru/gru_cell/ReadVariableOp_6
^gru/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2>
gru/gru_cell/ReadVariableOp_1gru/gru_cell/ReadVariableOp_12>
gru/gru_cell/ReadVariableOp_2gru/gru_cell/ReadVariableOp_22>
gru/gru_cell/ReadVariableOp_3gru/gru_cell/ReadVariableOp_32>
gru/gru_cell/ReadVariableOp_4gru/gru_cell/ReadVariableOp_42>
gru/gru_cell/ReadVariableOp_5gru/gru_cell/ReadVariableOp_52>
gru/gru_cell/ReadVariableOp_6gru/gru_cell/ReadVariableOp_62
	gru/while	gru/while2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
>__inference_gru_layer_call_and_return_conditional_losses_18698
inputs_03
 gru_cell_readvariableop_resource:	?6
"gru_cell_readvariableop_1_resource:
??5
"gru_cell_readvariableop_4_resource:	@?
identity??gru_cell/ReadVariableOp?gru_cell/ReadVariableOp_1?gru_cell/ReadVariableOp_2?gru_cell/ReadVariableOp_3?gru_cell/ReadVariableOp_4?gru_cell/ReadVariableOp_5?gru_cell/ReadVariableOp_6?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like/Const?
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/ones_likev
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/ones_like_1/Const?
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/ones_like_1?
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell/ReadVariableOp?
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell/unstack?
gru_cell/mulMulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul?
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_1?
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
gru_cell/mul_2?
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_1?
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stack?
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice/stack_1?
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2?
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice?
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul?
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_2?
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_1/stack?
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_1/stack_1?
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2?
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_1?
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_1?
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource* 
_output_shapes
:
??*
dtype02
gru_cell/ReadVariableOp_3?
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2 
gru_cell/strided_slice_2/stack?
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1?
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2?
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
gru_cell/strided_slice_2?
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_2?
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stack?
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_3/stack_1?
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2?
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_3?
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd?
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_4/stack?
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_4/stack_1?
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2?
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_4?
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_1?
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2 
gru_cell/strided_slice_5/stack?
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1?
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2?
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_5?
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_2?
gru_cell/mul_3Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_3?
gru_cell/mul_4Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_4?
gru_cell/mul_5Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_5?
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_4?
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stack?
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2"
 gru_cell/strided_slice_6/stack_1?
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2?
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_6?
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_3?
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_5?
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2 
gru_cell/strided_slice_7/stack?
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2"
 gru_cell/strided_slice_7/stack_1?
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2?
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_7?
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_4?
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stack?
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gru_cell/strided_slice_8/stack_1?
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2?
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
gru_cell/strided_slice_8?
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_3?
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2 
gru_cell/strided_slice_9/stack?
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2"
 gru_cell/strided_slice_9/stack_1?
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2?
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
gru_cell/strided_slice_9?
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_4?
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/adds
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid?
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_1y
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Sigmoid_1?
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource*
_output_shapes
:	@?*
dtype02
gru_cell/ReadVariableOp_6?
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
gru_cell/strided_slice_10/stack?
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1?
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2?
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
gru_cell/strided_slice_10?
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/MatMul_5?
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2!
gru_cell/strided_slice_11/stack?
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1?
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2?
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
gru_cell/strided_slice_11?
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/BiasAdd_5?
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_6?
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_2l
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/Tanh
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell/sub/x?
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/sub~
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
gru_cell/mul_8?
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
gru_cell/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_18546*
condR
while_cond_18545*8
output_shapes'
%: : : : :?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_19207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_19207___redundant_placeholder03
/while_while_cond_19207___redundant_placeholder13
/while_while_cond_19207___redundant_placeholder23
/while_while_cond_19207___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_19819

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????L2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????L*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????L2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????L2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????L2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????L2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????L:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
?
while_cond_18545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_18545___redundant_placeholder03
/while_while_cond_18545___redundant_placeholder13
/while_while_cond_18545___redundant_placeholder23
/while_while_cond_18545___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
:
__inference__creator_20134
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name135*
value_dtype0	2

hash_tablec
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identity[
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
??
?
while_body_19539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	?>
*while_gru_cell_readvariableop_1_resource_0:
??=
*while_gru_cell_readvariableop_4_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	?<
(while_gru_cell_readvariableop_1_resource:
??;
(while_gru_cell_readvariableop_4_resource:	@???while/gru_cell/ReadVariableOp?while/gru_cell/ReadVariableOp_1?while/gru_cell/ReadVariableOp_2?while/gru_cell/ReadVariableOp_3?while/gru_cell/ReadVariableOp_4?while/gru_cell/ReadVariableOp_5?while/gru_cell/ReadVariableOp_6?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/Shape?
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
while/gru_cell/ones_like/Const?
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/ones_like?
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
while/gru_cell/dropout/Const?
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout/Mul?
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/gru_cell/dropout/Shape?
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3while/gru_cell/dropout/random_uniform/RandomUniform?
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2'
%while/gru_cell/dropout/GreaterEqual/y?
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#while/gru_cell/dropout/GreaterEqual?
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout/Cast?
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout/Mul_1?
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_1/Const?
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout_1/Mul?
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_1/Shape?
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ص?27
5while/gru_cell/dropout_1/random_uniform/RandomUniform?
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_1/GreaterEqual/y?
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%while/gru_cell/dropout_1/GreaterEqual?
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout_1/Cast?
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2 
while/gru_cell/dropout_1/Mul_1?
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_2/Const?
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/dropout_2/Mul?
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_2/Shape?
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ɉ27
5while/gru_cell/dropout_2/random_uniform/RandomUniform?
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_2/GreaterEqual/y?
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%while/gru_cell/dropout_2/GreaterEqual?
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/gru_cell/dropout_2/Cast?
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2 
while/gru_cell/dropout_2/Mul_1?
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/Shape?
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell/ones_like_1/Const?
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/ones_like_1?
while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_3/Const?
while/gru_cell/dropout_3/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_3/Mul?
while/gru_cell/dropout_3/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_3/Shape?
5while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5while/gru_cell/dropout_3/random_uniform/RandomUniform?
'while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_3/GreaterEqual/y?
%while/gru_cell/dropout_3/GreaterEqualGreaterEqual>while/gru_cell/dropout_3/random_uniform/RandomUniform:output:00while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_3/GreaterEqual?
while/gru_cell/dropout_3/CastCast)while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_3/Cast?
while/gru_cell/dropout_3/Mul_1Mul while/gru_cell/dropout_3/Mul:z:0!while/gru_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_3/Mul_1?
while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_4/Const?
while/gru_cell/dropout_4/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_4/Mul?
while/gru_cell/dropout_4/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_4/Shape?
5while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5while/gru_cell/dropout_4/random_uniform/RandomUniform?
'while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_4/GreaterEqual/y?
%while/gru_cell/dropout_4/GreaterEqualGreaterEqual>while/gru_cell/dropout_4/random_uniform/RandomUniform:output:00while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_4/GreaterEqual?
while/gru_cell/dropout_4/CastCast)while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_4/Cast?
while/gru_cell/dropout_4/Mul_1Mul while/gru_cell/dropout_4/Mul:z:0!while/gru_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_4/Mul_1?
while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2 
while/gru_cell/dropout_5/Const?
while/gru_cell/dropout_5/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/dropout_5/Mul?
while/gru_cell/dropout_5/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_5/Shape?
5while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2Ζ?27
5while/gru_cell/dropout_5/random_uniform/RandomUniform?
'while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2)
'while/gru_cell/dropout_5/GreaterEqual/y?
%while/gru_cell/dropout_5/GreaterEqualGreaterEqual>while/gru_cell/dropout_5/random_uniform/RandomUniform:output:00while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/gru_cell/dropout_5/GreaterEqual?
while/gru_cell/dropout_5/CastCast)while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
while/gru_cell/dropout_5/Cast?
while/gru_cell/dropout_5/Mul_1Mul while/gru_cell/dropout_5/Mul:z:0!while/gru_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
while/gru_cell/dropout_5/Mul_1?
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	?*
dtype02
while/gru_cell/ReadVariableOp?
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell/unstack?
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul?
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_1?
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell/mul_2?
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_1?
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stack?
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice/stack_1?
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2?
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
while/gru_cell/strided_slice?
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul?
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_2?
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_1/stack?
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_1/stack_1?
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2?
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1?
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_1?
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell/ReadVariableOp_3?
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$while/gru_cell/strided_slice_2/stack?
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1?
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2?
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2?
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_2?
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stack?
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_3/stack_1?
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2?
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_3?
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd?
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_4/stack?
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_4/stack_1?
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2?
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_4?
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_1?
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2&
$while/gru_cell/strided_slice_5/stack?
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1?
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2?
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2 
while/gru_cell/strided_slice_5?
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_2?
while/gru_cell/mul_3Mulwhile_placeholder_2"while/gru_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_3?
while/gru_cell/mul_4Mulwhile_placeholder_2"while/gru_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_4?
while/gru_cell/mul_5Mulwhile_placeholder_2"while/gru_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_5?
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_4?
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack?
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2(
&while/gru_cell/strided_slice_6/stack_1?
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2?
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6?
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_3?
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_5?
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$while/gru_cell/strided_slice_7/stack?
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&while/gru_cell/strided_slice_7/stack_1?
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2?
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7?
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_4?
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stack?
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2(
&while/gru_cell/strided_slice_8/stack_1?
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2?
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2 
while/gru_cell/strided_slice_8?
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_3?
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2&
$while/gru_cell/strided_slice_9/stack?
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2(
&while/gru_cell/strided_slice_9/stack_1?
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2?
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2 
while/gru_cell/strided_slice_9?
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_4?
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add?
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid?
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_1?
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Sigmoid_1?
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0*
_output_shapes
:	@?*
dtype02!
while/gru_cell/ReadVariableOp_6?
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/gru_cell/strided_slice_10/stack?
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1?
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2?
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10?
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/MatMul_5?
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2'
%while/gru_cell/strided_slice_11/stack?
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1?
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2?
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2!
while/gru_cell/strided_slice_11?
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/BiasAdd_5?
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_6?
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_2~
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/Tanh?
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell/sub/x?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/sub?
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/mul_8?
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*'
_output_shapes
:?????????@2
while/gru_cell/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?"
?
while_body_15663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_gru_cell_15685_0:	?*
while_gru_cell_15687_0:
??)
while_gru_cell_15689_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_gru_cell_15685:	?(
while_gru_cell_15687:
??'
while_gru_cell_15689:	@???&while/gru_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_15685_0while_gru_cell_15687_0while_gru_cell_15689_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_156502(
&while/gru_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp".
while_gru_cell_15685while_gru_cell_15685_0".
while_gru_cell_15687while_gru_cell_15687_0".
while_gru_cell_15689while_gru_cell_15689_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????@: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?M
?
__inference__traced_save_20338
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_m_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_v_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*?
value?B?$B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop5savev2_adam_gru_gru_cell_kernel_m_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop3savev2_adam_gru_gru_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop5savev2_adam_gru_gru_cell_kernel_v_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop3savev2_adam_gru_gru_cell_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?N?:@L:L:L:: : : : : :
??:	@?:	?::: : : : :
?N?:@L:L:L::
??:	@?:	?:
?N?:@L:L:L::
??:	@?:	?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?N?:$ 

_output_shapes

:@L: 

_output_shapes
:L:$ 

_output_shapes

:L: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :&"
 
_output_shapes
:
??:%!

_output_shapes
:	@?:%!

_output_shapes
:	?:

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?N?:$ 

_output_shapes

:@L: 

_output_shapes
:L:$ 

_output_shapes

:L: 

_output_shapes
::&"
 
_output_shapes
:
??:%!

_output_shapes
:	@?:%!

_output_shapes
:	?:&"
 
_output_shapes
:
?N?:$ 

_output_shapes

:@L: 

_output_shapes
:L:$ 

_output_shapes

:L:  

_output_shapes
::&!"
 
_output_shapes
:
??:%"!

_output_shapes
:	@?:%#!

_output_shapes
:	?:$

_output_shapes
: 
ɣ
?
C__inference_gru_cell_layer_call_and_return_conditional_losses_20101

inputs
states_0*
readvariableop_resource:	?-
readvariableop_1_resource:
??,
readvariableop_4_resource:	@?
identity

identity_1??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?ReadVariableOp_4?ReadVariableOp_5?ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ϥ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_3/Const?
dropout_3/MulMulones_like_1:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_3/Mulf
dropout_3/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??~2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_3/Mul_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @?2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mul_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slicem
MatMulMatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
MatMul?
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_1?
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2?
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_4?
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2?
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_5?
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2f
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_6u
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_7u
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack|
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_8?
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3x
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2?
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_9?
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_4k
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidq
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_6?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_10v
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2?
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_11?
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_5j
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
mul_6h
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh^
mul_7MulSigmoid:y:0states_0*
T0*'
_output_shapes
:?????????@2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
subZ
mul_8Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_8_
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:?????????@2
add_3d
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:??????????:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0
?
?
#__inference_gru_layer_call_fn_19750
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_157272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_16661

inputs0
matmul_readvariableop_resource:L-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:L*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
??
?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_16668

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_16334:
?N?
	gru_16620:	?
	gru_16622:
??
	gru_16624:	@?
dense_16638:@L
dense_16640:L
dense_1_16662:L
dense_1_16664:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?gru/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_16334*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_163332#
!embedding/StatefulPartitionedCall?
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_16620	gru_16622	gru_16624*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_166192
gru/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_16638dense_16640*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_166372
dense/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_166482
dropout/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_16662dense_1_16664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_166612!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?m
?
C__inference_gru_cell_layer_call_and_return_conditional_losses_15650

inputs

states*
readvariableop_resource:	?-
readvariableop_1_resource:
??,
readvariableop_4_resource:	@?
identity

identity_1??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?ReadVariableOp_4?ReadVariableOp_5?ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slicem
MatMulMatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
MatMul?
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_1?
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2?
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_4?
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2?
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_5?
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2e
mul_3Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_6u
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_7u
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack|
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2?
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*

begin_mask2
strided_slice_8?
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3x
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:@2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2?
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:@2
strided_slice_9?
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_4k
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidq
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_6?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_10v
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:?2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2?
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes
:@*
end_mask2
strided_slice_11?
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*'
_output_shapes
:?????????@2
	BiasAdd_5j
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*'
_output_shapes
:?????????@2
mul_6h
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh\
mul_7MulSigmoid:y:0states*
T0*'
_output_shapes
:?????????@2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
subZ
mul_8Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_8_
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:?????????@2
add_3d
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:??????????:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????=
dense_12
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
*z&call_and_return_all_conditional_losses
{_default_save_signature
|__call__"
_tf_keras_network
"
_tf_keras_input_layer
V
_index_lookup_layer
	keras_api
}_adapt_function"
_tf_keras_layer
?

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
*~&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
?
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
 	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
!trainable_variables
"	variables
#regularization_losses
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

%kernel
&bias
'trainable_variables
(	variables
)regularization_losses
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
+iter

,beta_1

-beta_2
	.decay
/learning_ratemjmkml%mm&mn0mo1mp2mqvrvsvt%vu&vv0vw1vx2vy"
	optimizer
X
0
01
12
23
4
5
%6
&7"
trackable_list_wrapper
X
1
02
13
24
5
6
%7
&8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3non_trainable_variables
4layer_metrics

5layers
6layer_regularization_losses
	trainable_variables
7metrics

	variables
regularization_losses
|__call__
{_default_save_signature
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
L
8lookup_table
9token_counts
:	keras_api"
_tf_keras_layer
"
_generic_user_object
(:&
?N?2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
;non_trainable_variables
<layer_metrics

=layers
>layer_regularization_losses
trainable_variables
?metrics
	variables
regularization_losses
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
?

0kernel
1recurrent_kernel
2bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables
Elayer_metrics

Flayers
Glayer_regularization_losses
trainable_variables
Hmetrics
	variables

Istates
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:@L2dense/kernel
:L2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jnon_trainable_variables
Klayer_metrics

Llayers
Mlayer_regularization_losses
trainable_variables
Nmetrics
	variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables
Player_metrics

Qlayers
Rlayer_regularization_losses
!trainable_variables
Smetrics
"	variables
#regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :L2dense_1/kernel
:2dense_1/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tnon_trainable_variables
Ulayer_metrics

Vlayers
Wlayer_regularization_losses
'trainable_variables
Xmetrics
(	variables
)regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
':%
??2gru/gru_cell/kernel
0:.	@?2gru/gru_cell/recurrent_kernel
$:"	?2gru/gru_cell/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
U
[_initializer
?_create_resource
?_initialize
?_destroy_resourceR 
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
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
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
\non_trainable_variables
]layer_metrics

^layers
_layer_regularization_losses
@trainable_variables
`metrics
A	variables
Bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	atotal
	bcount
c	variables
d	keras_api"
_tf_keras_metric
^
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"
_tf_keras_metric
"
_generic_user_object
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
:  (2total
:  (2count
.
a0
b1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
e0
f1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
-:+
?N?2Adam/embedding/embeddings/m
#:!@L2Adam/dense/kernel/m
:L2Adam/dense/bias/m
%:#L2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*
??2Adam/gru/gru_cell/kernel/m
5:3	@?2$Adam/gru/gru_cell/recurrent_kernel/m
):'	?2Adam/gru/gru_cell/bias/m
-:+
?N?2Adam/embedding/embeddings/v
#:!@L2Adam/dense/kernel/v
:L2Adam/dense/bias/v
%:#L2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
,:*
??2Adam/gru/gru_cell/kernel/v
5:3	@?2$Adam/gru/gru_cell/recurrent_kernel/v
):'	?2Adam/gru/gru_cell/bias/v
?2?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17840
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_18293
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17380
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17453?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_15513input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_model_calcbase_GRU_layer_call_fn_16695
2__inference_model_calcbase_GRU_layer_call_fn_18322
2__inference_model_calcbase_GRU_layer_call_fn_18351
2__inference_model_calcbase_GRU_layer_call_fn_17307?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference_adapt_step_18399?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_18408?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_embedding_layer_call_fn_18415?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
>__inference_gru_layer_call_and_return_conditional_losses_18698
>__inference_gru_layer_call_and_return_conditional_losses_19077
>__inference_gru_layer_call_and_return_conditional_losses_19360
>__inference_gru_layer_call_and_return_conditional_losses_19739?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
#__inference_gru_layer_call_fn_19750
#__inference_gru_layer_call_fn_19761
#__inference_gru_layer_call_fn_19772
#__inference_gru_layer_call_fn_19783?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_19793?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_19802?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_19807
B__inference_dropout_layer_call_and_return_conditional_losses_19819?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dropout_layer_call_fn_19824
'__inference_dropout_layer_call_fn_19829?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_19840?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_19849?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_17490input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_gru_cell_layer_call_and_return_conditional_losses_19951
C__inference_gru_cell_layer_call_and_return_conditional_losses_20101?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_gru_cell_layer_call_fn_20115
(__inference_gru_cell_layer_call_fn_20129?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__creator_20134?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_20142?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_20147?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_20152?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_20157?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_20162?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_20181checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_20189restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_20134?

? 
? "? 6
__inference__creator_20152?

? 
? "? 8
__inference__destroyer_20147?

? 
? "? 8
__inference__destroyer_20162?

? 
? "? A
__inference__initializer_201428???

? 
? "? :
__inference__initializer_20157?

? 
? "? ?
 __inference__wrapped_model_15513v8???201%&0?-
&?#
!?
input_1?????????
? "1?.
,
dense_1!?
dense_1?????????h
__inference_adapt_step_18399H9?=?:
3?0
.?+?
??????????IteratorSpec
? "
 ?
B__inference_dense_1_layer_call_and_return_conditional_losses_19840\%&/?,
%?"
 ?
inputs?????????L
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_19849O%&/?,
%?"
 ?
inputs?????????L
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_19793\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????L
? x
%__inference_dense_layer_call_fn_19802O/?,
%?"
 ?
inputs?????????@
? "??????????L?
B__inference_dropout_layer_call_and_return_conditional_losses_19807\3?0
)?&
 ?
inputs?????????L
p 
? "%?"
?
0?????????L
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_19819\3?0
)?&
 ?
inputs?????????L
p
? "%?"
?
0?????????L
? z
'__inference_dropout_layer_call_fn_19824O3?0
)?&
 ?
inputs?????????L
p 
? "??????????Lz
'__inference_dropout_layer_call_fn_19829O3?0
)?&
 ?
inputs?????????L
p
? "??????????L?
D__inference_embedding_layer_call_and_return_conditional_losses_18408`/?,
%?"
 ?
inputs?????????	
? "*?'
 ?
0??????????
? ?
)__inference_embedding_layer_call_fn_18415S/?,
%?"
 ?
inputs?????????	
? "????????????
C__inference_gru_cell_layer_call_and_return_conditional_losses_19951?201]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p 
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
C__inference_gru_cell_layer_call_and_return_conditional_losses_20101?201]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p
? "R?O
H?E
?
0/0?????????@
$?!
?
0/1/0?????????@
? ?
(__inference_gru_cell_layer_call_fn_20115?201]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p 
? "D?A
?
0?????????@
"?
?
1/0?????????@?
(__inference_gru_cell_layer_call_fn_20129?201]?Z
S?P
!?
inputs??????????
'?$
"?
states/0?????????@
p
? "D?A
?
0?????????@
"?
?
1/0?????????@?
>__inference_gru_layer_call_and_return_conditional_losses_18698~201P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"
?
0?????????@
? ?
>__inference_gru_layer_call_and_return_conditional_losses_19077~201P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "%?"
?
0?????????@
? ?
>__inference_gru_layer_call_and_return_conditional_losses_19360n201@?=
6?3
%?"
inputs??????????

 
p 

 
? "%?"
?
0?????????@
? ?
>__inference_gru_layer_call_and_return_conditional_losses_19739n201@?=
6?3
%?"
inputs??????????

 
p

 
? "%?"
?
0?????????@
? ?
#__inference_gru_layer_call_fn_19750q201P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "??????????@?
#__inference_gru_layer_call_fn_19761q201P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "??????????@?
#__inference_gru_layer_call_fn_19772a201@?=
6?3
%?"
inputs??????????

 
p 

 
? "??????????@?
#__inference_gru_layer_call_fn_19783a201@?=
6?3
%?"
inputs??????????

 
p

 
? "??????????@?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17380r8???201%&8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17453r8???201%&8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_17840q8???201%&7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
M__inference_model_calcbase_GRU_layer_call_and_return_conditional_losses_18293q8???201%&7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
2__inference_model_calcbase_GRU_layer_call_fn_16695e8???201%&8?5
.?+
!?
input_1?????????
p 

 
? "???????????
2__inference_model_calcbase_GRU_layer_call_fn_17307e8???201%&8?5
.?+
!?
input_1?????????
p

 
? "???????????
2__inference_model_calcbase_GRU_layer_call_fn_18322d8???201%&7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
2__inference_model_calcbase_GRU_layer_call_fn_18351d8???201%&7?4
-?*
 ?
inputs?????????
p

 
? "??????????y
__inference_restore_fn_20189Y9K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_20181?9&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_17490?8???201%&;?8
? 
1?.
,
input_1!?
input_1?????????"1?.
,
dense_1!?
dense_1?????????