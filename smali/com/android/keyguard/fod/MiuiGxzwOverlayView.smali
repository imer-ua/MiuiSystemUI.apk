.class public Lcom/android/keyguard/fod/MiuiGxzwOverlayView;
.super Landroid/widget/FrameLayout;
.source "MiuiGxzwOverlayView.java"

# interfaces
.implements Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;
    }
.end annotation


# static fields
.field private static BRIGHTNESS_TO_ALPHA_1024:[D


# instance fields
.field private mAdded:Z

.field private mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

.field private mBrightnessFilePath:Ljava/lang/String;

.field private volatile mDozing:Z

.field private mHbmOverlay:Landroid/view/View;

.field private volatile mInvertColors:Z

.field private mKeyguardAuthen:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOverlayAlpha:F

.field private mPreAlpha:F

.field private volatile mShowed:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mKeyguardAuthen:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->caculateOverlayAlpha()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    const/16 v0, 0x400

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->BRIGHTNESS_TO_ALPHA_1024:[D

    .line 46
    return-void

    .line 394
    :array_0
    .array-data 8
        0x3feec85d2b226f4bL    # 0.9619584887
        0x3feec85d2b226f4bL    # 0.9619584887
        0x3fed6e2eb1c432caL    # 0.9197
        0x3fed53f7ced91687L    # 0.9165
        0x3fed39c0ebedfa44L    # 0.9133
        0x3fed1f8a0902de01L    # 0.9101
        0x3fed05532617c1beL    # 0.9069
        0x3feceb1c432ca57aL    # 0.9037
        0x3fecd0e560418937L    # 0.9005
        0x3fecba5c716add61L    # 0.8977491584
        0x3fec91b0b3fc1648L    # 0.8927844539
        0x3fec6b334d9d324fL    # 0.8880859867
        0x3fec46974913618aL    # 0.8836170604
        0x3fec239fbb13335bL    # 0.8793486265
        0x3fec021b7429e768L    # 0.8752572316
        0x3febe1e2137b9feeL    # 0.8713236218
        0x3febc2d1f92aa57aL    # 0.8675317637
        0x3feba4cecc7dddd6L    # 0.8638681406
        0x3feb87c06590718bL    # 0.8603212341
        0x3feb6b91fca3466fL    # 0.8568811354
        0x3feb50318a72a76bL    # 0.8535392479
        0x3feb358f4d0dc57eL    # 0.8502880578
        0x3feb1b9d6657cdc7L    # 0.8471209525
        0x3feb024f8f18e903L    # 0.8440320773
        0x3feae99ad89bd37fL    # 0.8410162192
        0x3fead1757aa48d9eL    # 0.8380687137
        0x3feab9d6a9826066L    # 0.8351853667
        0x3feaa2b67466715eL    # 0.8323623918
        0x3fea8c0da89d0832L    # 0.8295963567
        0x3fea75d5b9a9862bL    # 0.8268841387
        0x3fea6008ad322ea5L    # 0.8242228873
        0x3fea4aa109ed9808L    # 0.8216099924
        0x3fea3599c8b5de40L    # 0.8190430565
        0x3fea20ee483d489aL    # 0.8165198718
        0x3fea0c9a421a8896L    # 0.8140383998
        0x3fe9f899c1480e81L    # 0.8115967536
        0x3fe9e4e91a08b573L    # 0.8091931828
        0x3fe9d184e2b614bbL    # 0.8068260601
        0x3fe9be69ed5cf9d1L    # 0.8044938694
        0x3fe9ab95427a8184L    # 0.802195196
        0x3fe999041b9db43eL    # 0.7999287166
        0x3fe986b3df97b4fbL    # 0.7976931922
        0x3fe974a21e227fddL    # 0.79548746
        0x3fe962cc8cc3c4d2L    # 0.7933104276
        0x3fe95131036b0a08L    # 0.7911610667
        0x3fe93fcd79f973d2L    # 0.7890384085
        0x3fe92ea005a05139L    # 0.7869415388
        0x3fe91da6d676a251L    # 0.7848695935
        0x3fe90ce035b38bcbL    # 0.7828217553
        0x3fe8fc4a83cd4da8L    # 0.7807972502
        0x3fe8ebe436a5f85aL    # 0.7787953441
        0x3fe8dbabd81856faL    # 0.7768153401
        0x3fe8cba004ae14c5L    # 0.7748565761
        0x3fe8bbbf6a3a65bfL    # 0.7729184222
        0x3fe8ac08c6c725f9L    # 0.7710002787
        0x3fe89c7ae78fb73cL    # 0.7691015742
        0x3fe88d14a7c4e4feL    # 0.7672217633
        0x3fe87dd4f01ef0e3L    # 0.7653603258
        0x3fe86ebab593b83eL    # 0.7635167643
        0x3fe85fc4f8e8c091L    # 0.7616906034
        0x3fe850f2c5bbd3afL    # 0.7598813879
        0x3fe8424332150c3dL    # 0.758088682
        0x3fe833b55dcfa6e2L    # 0.7563120682
        0x3fe8254871cbd9baL    # 0.7545511458
        0x3fe816fb9faa1c21L    # 0.7528055304
        0x3fe808ce214f74ccL    # 0.751074853
        0x3fe7fabf38250fa3L    # 0.7493587586
        0x3fe7ecce2d33baa4L    # 0.7476569064
        0x3fe7defa502c8203L    # 0.745968968
        0x3fe7d142f7842d0cL    # 0.7442946276
        0x3fe7c3a77fe9cdc2L    # 0.742633581
        0x3fe7b6274bd8cd5fL    # 0.7409855348
        0x3fe7a8c1c3a6aac7L    # 0.7393502065
        0x3fe79b7654c29063L    # 0.7377273231
        0x3fe78e4471ec4de9L    # 0.7361166215
        0x3fe7812b929d2986L    # 0.7345178474
        0x3fe7742b32fa2170L    # 0.7329307552
        0x3fe76742d38f33baL    # 0.7313551075
        0x3fe75a71f918648eL    # 0.7297906747
        0x3fe74db82c664151L    # 0.7282372348
        0x3fe74114f9fdab94L    # 0.7266945727
        0x3fe73487f23355f1L    # 0.7251624804
        0x3fe72810a8cb8f00L    # 0.7236407563
        0x3fe71baeb4ec82e1L    # 0.7221292051
        0x3fe70f61b0e74182L    # 0.7206276374
        0x3fe703293a1c41bbL    # 0.7191358695
        0x3fe6f704f0fb6152L    # 0.7176537234
        0x3fe6eaf478a3afe7L    # 0.7161810261
        0x3fe6def7770caa47L    # 0.7147176099
        0x3fe6d30d94b3c3ccL    # 0.7132633118
        0x3fe6c7367c8ea7ebL    # 0.7118179734
        0x3fe6bb71dc18f8a8L    # 0.710381441
        0x3fe6afbf62f41982L    # 0.7089535649
        0x3fe6a41ec31e2934L    # 0.7075341998
        0x3fe6988fb09f8b19L    # 0.7061232042
        0x3fe68d11e1a66408L    # 0.7047204406
        0x3fe681a50e3423b3L    # 0.7033257749
        0x3fe67648f0547e6cL    # 0.7019390768
        0x3fe66afd43e67362L    # 0.7005602194
        0x3fe65fc1c680cfc1L    # 0.699189079
        0x3fe6549637647042L    # 0.697825535
        0x3fe6497a5797be0eL    # 0.6964694701
        0x3fe63e6de9a1f689L    # 0.6951207698
        0x3fe63370b198e9c6L    # 0.6937793225
        0x3fe6288275057da8L    # 0.6924450193
        0x3fe61da2faf16c4cL    # 0.6911177541
        0x3fe612d20ba28be1L    # 0.6897974231
        0x3fe6080f70df86d1L    # 0.6884839253
        0x3fe5fd5af59d6526L    # 0.6871771619
        0x3fe5f2b46628c7d8L    # 0.6858770366
        0x3fe5e81b8fe1309dL    # 0.6845834551
        0x3fe5dd9041623d3aL    # 0.6832963254
        0x3fe5d3124a83a782L    # 0.6820155578
        0x3fe5c8a17c148d26L    # 0.6807410644
        0x3fe5be3da7e92e26L    # 0.6794727592
        0x3fe5b3e6a111e690L    # 0.6782105585
        0x3fe5a99c3b5f7c92L    # 0.67695438
        0x3fe59f5e4bd113f8L    # 0.6757041436
        0x3fe5952ca8263aacL    # 0.6744597706
        0x3fe58b0727315f58L    # 0.6732211843
        0x3fe580eda0855ac3L    # 0.6719883094
        0x3fe576dfecac6995L    # 0.6707610724
        0x3fe56cdde4e37422L    # 0.6695394011
        0x3fe562e763510830L    # 0.668323225
        0x3fe558fc42dc1da3L    # 0.667112475
        0x3fe54f1c5f39d4ecL    # 0.6659070835
        0x3fe5454794d1fa2cL    # 0.6647069842
        0x3fe53b7dc0b146c6L    # 0.663512112
        0x3fe531bec0b29ca7L    # 0.6623224033
        0x3fe5280a7363896eL    # 0.6611377958
        0x3fe51e60b7db0b1aL    # 0.6599582282
        0x3fe514c16dfe4835L    # 0.6587836407
        0x3fe50b2c76205aceL    # 0.6576139743
        0x3fe501a1b154c70eL    # 0.6564491714
        0x3fe4f8210153fe5fL    # 0.6552891756
        0x3fe4eeaa4836a73bL    # 0.6541339312
        0x3fe4e53d68c813cbL    # 0.6529833838
        0x3fe4dbda465d0696L    # 0.65183748
        0x3fe4d280c4d3b284L    # 0.6506961674
        0x3fe4c930c893badaL    # 0.6495593946
        0x3fe4bfea3664f7efL    # 0.6484271109
        0x3fe4b6acf3b42f57L    # 0.6472992668
        0x3fe4ad78e64e5bb6L    # 0.6461758135
        0x3fe4a44df497a681L    # 0.6450567033
        0x3fe49b2c0546afcbL    # 0.6439418891
        0x3fe49212ff9b8805L    # 0.6428313248
        0x3fe48902cb443321L    # 0.6417249651
        0x3fe47ffb504eea21L    # 0.6406227654
        0x3fe476fc7737d986L    # 0.6395246819
        0x3fe46e0628db62dfL    # 0.6384306715
        0x3fe465184e9f581cL    # 0.6373406921
        0x3fe45c32d212c67cL    # 0.6362547019
        0x3fe453559d5bea0dL    # 0.6351726602
        0x3fe44a809ae5b70eL    # 0.6340945268
        0x3fe441b3b55fd9ebL    # 0.633020262
        0x3fe438eed8112de3L    # 0.6319498272
        0x3fe43031ee4e4ca0L    # 0.6308831839
        0x3fe4277ce3f54030L    # 0.6298202946
        0x3fe41ecfa536893eL    # 0.6287611224
        0x3fe4162a1e79a234L    # 0.6277056308
        0x3fe40d8c3c787c1fL    # 0.6266537839
        0x3fe404f5ec5afb87L    # 0.6256055466
        0x3fe3fc671b7ffeb7L    # 0.6245608842
        0x3fe3f3dfb78b1c28L    # 0.6235197625
        0x3fe3eb5fae64a284L    # 0.6224821478
        0x3fe3e2e6ee62d3f3L    # 0.6214480072
        0x3fe3da7565f76f7cL    # 0.620417308
        0x3fe3d20b03f46939L    # 0.6193900182
        0x3fe3c9a7b7473221L    # 0.618366106
        0x3fe3c14b6f66ab8bL    # 0.6173455406
        0x3fe3b8f61bbbf85dL    # 0.6163282911
        0x3fe3b0a7ac1e2effL    # 0.6153143274
        0x3fe3a860109b5f96L    # 0.6143036198
        0x3fe3a01f39789408L    # 0.613296139
        0x3fe397e51731cffbL    # 0.6122918561
        0x3fe38fb19a7a10d4L    # 0.6112907426
        0x3fe38784b456ca97L    # 0.6102927706
        0x3fe37f5e55e8ee2aL    # 0.6092979124
        0x3fe3773e709624a1L    # 0.6083061408
        0x3fe36f24f5fb10cfL    # 0.607317429
        0x3fe36711d7cfd269L    # 0.6063317504
        0x3fe35f05082cbe32L    # 0.6053490791
        0x3fe356fe7937e75cL    # 0.6043693893
        0x3fe34efe1d4e5adcL    # 0.6033926556
        0x3fe34703e711ddd3L    # 0.6024188531
        0x3fe33f0fc93fb244L    # 0.6014479571
        0x3fe33721b6be5581L    # 0.6004799432
        0x3fe32f39a2b8fd0cL    # 0.5995147875
        0x3fe32757808419b7L    # 0.5985524664
        0x3fe31f7b438f9932L    # 0.5975929565
        0x3fe317a4df8262f0L    # 0.5966362348
        0x3fe30fd4481edb40L    # 0.5956822785
        0x3fe30809716c1ea4L    # 0.5947310653
        0x3fe300444f8cc67dL    # 0.5937825731
        0x3fe2f884d6bee909L    # 0.59283678
        0x3fe2f0cafb69d7dbL    # 0.5918936644
        0x3fe2e916b2399cb1L    # 0.5909532052
        0x3fe2e167efe7ffbaL    # 0.5900153814
        0x3fe2d9bea94a4607L    # 0.5890801722
        0x3fe2d21ad36cae67L    # 0.5881475572
        0x3fe2ca7c6384b2f8L    # 0.5872175163
        0x3fe2c2e34ec7cddaL    # 0.5862900294
        0x3fe2bb4f8abdefcbL    # 0.585365077
        0x3fe2b3c10cfcc7faL    # 0.5844426397
        0x3fe2ac37cb27c405L    # 0.5835226982
        0x3fe2a4b3bb0b8cdaL    # 0.5826052335
        0x3fe29d34d2b98396L    # 0.5816902271
        0x3fe295bb08430959L    # 0.5807776605
        0x3fe28e4651c73dafL    # 0.5798675153
        0x3fe286d6a59c39e6L    # 0.5789597735
        0x3fe27f6bfa4f110aL    # 0.5780544175
        0x3fe278064651594aL    # 0.5771514295
        0x3fe270a580596102L    # 0.5762507922
        0x3fe269499f38f36fL    # 0.5753524885
        0x3fe261f299c1dbceL    # 0.5744565013
        0x3fe25aa0670a9d8aL    # 0.573562814
        0x3fe25352fe29bc11L    # 0.57267141
        0x3fe24c0a5643793fL    # 0.5717822728
        0x3fe244c666c0cf1fL    # 0.5708953864
        0x3fe23d8726fcf94dL    # 0.5700107347
        0x3fe2364c8e8a2d26L    # 0.569128302
        0x3fe22f1694faa005L    # 0.5682480726
        0x3fe227e53209c295L    # 0.5673700311
        0x3fe220b85d80c3f3L    # 0.5664941622
        0x3fe219900f5fccf8L    # 0.565620451
        0x3fe2126c3f7dcb30L    # 0.5647488823
        0x3fe20b4ce611e137L    # 0.5638794416
        0x3fe20431fb37b4c6L    # 0.5630121142
        0x3fe1fd1b773426eaL    # 0.5621468857
        0x3fe1f6095267958bL    # 0.5612837419
        0x3fe1eefb85401d06L    # 0.5604226687
        0x3fe1e7f208399824L    # 0.5595636521
        0x3fe1e0ecd3f91cffL    # 0.5587066784
        0x3fe1d9ebe1160342L    # 0.5578517338
        0x3fe1d2ef287a1937L    # 0.5569988051
        0x3fe1cbf6a2d83368L    # 0.5561478787
        0x3fe1c5024927de8eL    # 0.5552989415
        0x3fe1be12146e65d3L    # 0.5544519805
        0x3fe1b725fdb11461L    # 0.5536069827
        0x3fe1b03dfe1e70b2L    # 0.5527639354
        0x3fe1a95a0ef2bfaeL    # 0.551922826
        0x3fe1a27a296a4640L    # 0.5510836419
        0x3fe19b9e46dcc630L    # 0.5502463707
        0x3fe194c660d8fb07L    # 0.5494110004
        0x3fe18df270b6a68fL    # 0.5485775186
        0x3fe1872270200130L    # 0.5477459135
        0x3fe1805658a3c673L    # 0.5469161731
        0x3fe1798e2407aba2L    # 0.5460882858
        0x3fe172c9cc03a794L    # 0.5452622399
        0x3fe16c094a78ec72L    # 0.544438024
        0x3fe1654c993aedf5L    # 0.5436156266
        0x3fe15e93b2465b26L    # 0.5427950365
        0x3fe157de8fa5a17bL    # 0.5419762426
        0x3fe1512d2b556ffeL    # 0.5411592337
        0x3fe14a7f7f972de7L    # 0.5403439991
        0x3fe143d58683071eL    # 0.5395305278
        0x3fe13d2f3a5a62dbL    # 0.5387188091
        0x3fe1368c9587e3a5L    # 0.5379088326
        0x3fe12fed924cf0b5L    # 0.5371005876
        0x3fe129522b142c92L    # 0.5362940637
        0x3fe122ba5a717514L    # 0.5354892508
        0x3fe11c261acf6cc3L    # 0.5346861385
        0x3fe1159566dd6e55L    # 0.5338847169
        0x3fe10f0839219934L    # 0.5330849758
        0x3fe1087e8c66c4f5L    # 0.5322869055
        0x3fe101f85b5c4c50L    # 0.5314904961
        0x3fe0fb75a0dac54dL    # 0.530695738
        0x3fe0f4f6579f4912L    # 0.5299026214
        0x3fe0ee7a7a9dea87L    # 0.5291111369
        0x3fe0e80204cabc93L    # 0.5283212751
        0x3fe0e18cf10c13acL    # 0.5275330265
        0x3fe0db1b3a8cfc7aL    # 0.5267463821
        0x3fe0d4acdc4189e3L    # 0.5259613325
        0x3fe0ce41d16286feL    # 0.5251778688
        0x3fe0c7da14ff8393L    # 0.5243959818
        0x3fe0c175a26cc797L    # 0.5236156628
        0x3fe0bb1474e31e20L    # 0.5228369029
        0x3fe0b4b687a910b7L    # 0.5220596933
        0x3fe0ae5bd620a5c0L    # 0.5212840254
        0x3fe0a8045b9e2533L    # 0.5205098905
        0x3fe0a1b013acd0c6L    # 0.5197372803
        0x3fe09b5ef9a0f06fL    # 0.5189661861
        0x3fe09511092142c4L    # 0.5181965998
        0x3fe08ec63dab4b0cL    # 0.517428513
        0x3fe0887e92ca4afcL    # 0.5166619174
        0x3fe0823a04407e0bL    # 0.5158968051
        0x3fe07bf88d9925eeL    # 0.5151331678
        0x3fe075ba2aa43c8dL    # 0.5143709977
        0x3fe06f7ed7163eebL    # 0.5136102868
        0x3fe069468ebf26f0L    # 0.5128510273
        0x3fe063114d613011L    # 0.5120932113
        0x3fe05cdf0ee7d114L    # 0.5113368312
        0x3fe056afcf3e80bfL    # 0.5105818794
        0x3fe050838a42f767L    # 0.5098283482
        0x3fe04a5a3bfc28b2L    # 0.5090762302
        0x3fe04433e06349d5L    # 0.5083255179
        0x3fe03e10737f4e76L    # 0.5075762039
        0x3fe037eff164e8aaL    # 0.5068282809
        0x3fe031d2563688f7L    # 0.5060817417
        0x3fe02bb79e169fe2L    # 0.5053365791
        0x3fe0259fc5279df1L    # 0.5045927859
        0x3fe01f8ac7a77088L    # 0.5038503551
        0x3fe01978a1d4050dL    # 0.5031092797
        0x3fe013694fdd8a76L    # 0.5023695526
        0x3fe00d5cce2b2976L    # 0.5016311671
        0x3fe0075319088de4L    # 0.5008941163
        0x3fe0014c2ccf2204L    # 0.5001583934
        0x3fdff6900bcc1d17L    # 0.4994239917
        0x3fdfea8d4168f85eL    # 0.4986909045
        0x3fdfde8ff37a2109L    # 0.4979591253
        0x3fdfd2981acde87fL    # 0.4972286474
        0x3fdfc6a5b08516cbL    # 0.4964994644
        0x3fdfbab8ad897a38L    # 0.4957715697
        0x3fdfaed10b32d48dL    # 0.4950449571
        0x3fdfa2eec2a1edd4L    # 0.4943196202
        0x3fdf9711cd130af8L    # 0.4935955527
        0x3fdf8b3a23c270e1L    # 0.4928727483
        0x3fdf7f67c0235e38L    # 0.4921512009
        0x3fdf739a9b7217e8L    # 0.4914309042
        0x3fdf67d2af58d657L    # 0.4907118523
        0x3fdf5c0ff54ad831L    # 0.4899940391
        0x3fdf505266d6d8fdL    # 0.4892774586
        0x3fdf4499fd8b9445L    # 0.4885621048
        0x3fdf38e6b3134271L    # 0.4878479718
        0x3fdf2d38814f15aaL    # 0.4871350539
        0x3fdf218f61cdc979L    # 0.4864233451
        0x3fdf15eb4e709006L    # 0.4857128397
        0x3fdf0a4c41189b7aL    # 0.485003532
        0x3fdefeb233a71dfdL    # 0.4842954163
        0x3fdef31d2018c698L    # 0.483588487
        0x3fdee78d0085c133L    # 0.4828827386
        0x3fdedc01cecf3ff6L    # 0.4821781654
        0x3fded07b8528eba9L    # 0.481474762
        0x3fdec4fa1daaf035L    # 0.4807725229
        0x3fdeb97d9288f662L    # 0.4800714427
        0x3fdeae05ddf6a6f7L    # 0.479371516
        0x3fdea292fa43279dL    # 0.4786727375
        0x3fde9724e1bd9dfbL    # 0.4779751019
        0x3fde8bbb8ed0ac9aL    # 0.477278604
        0x3fde8056fbcb7921L    # 0.4765832385
        0x3fde74f7233422f7L    # 0.4758890003
        0x3fde699bff59cfc6L    # 0.4751958841
        0x3fde5e458b151593L    # 0.4745038851
        0x3fde52f3c0b51a06L    # 0.473812998
        0x3fde47a69adb7968L    # 0.4731232178
        0x3fde3c5e14454cdfL    # 0.4724345396
        0x3fde311a279430b4L    # 0.4717469584
        0x3fde25dacfa0baecL    # 0.4710604694
        0x3fde1aa006f10af0L    # 0.4703750675
        0x3fde0f69c894b086L    # 0.4696907481
        0x3fde04380f48c4d6L    # 0.4690075063
        0x3fddf90ad5e5dde7L    # 0.4683253373
        0x3fddede2174491c1L    # 0.4676442363
        0x3fdde2bdce8fed09L    # 0.4669641988
        0x3fddd79df6a085c7L    # 0.46628522
        0x3fddcc828a85ebc2L    # 0.4656072953
        0x3fddc16b854faec1L    # 0.4649304201
        0x3fddb658e20d5e8aL    # 0.4642545898
        0x3fddab4a9bea07c4L    # 0.4635797999
        0x3fdda040ae10b717L    # 0.4629060459
        0x3fdd953b13ac7928L    # 0.4622333233
        0x3fdd8a39c803d77eL    # 0.4615616277
        0x3fdd7f3cc65d5ba1L    # 0.4608909547
        0x3fdd744409ff8f15L    # 0.4602212999
        0x3fdd694f8e4c7842L    # 0.459552659
        0x3fdd5e5f4e8aa0afL    # 0.4588850276
        0x3fdd5373461c0ec1L    # 0.4582184014
        0x3fdd488b7099c2a0L    # 0.4575527763
        0x3fdd3da7c965c2b0L    # 0.456888148
        0x3fdd32c84be21559L    # 0.4562245122
        0x3fdd27ecf3c337a1L    # 0.4555618649
        0x3fdd1d15bc86acceL    # 0.4549002019
        0x3fdd1242a1a9f825L    # 0.454239519
        0x3fdd07739efd138eL    # 0.4535798123
        0x3fdcfca8affd824eL    # 0.4529210776
        0x3fdcf1e1d05fc16bL    # 0.4522633109
        0x3fdce71efbd84debL    # 0.4516065082
        0x3fdcdc602e1ba4d5L    # 0.4509506655
        0x3fdcd1a563153cedL    # 0.450295779
        0x3fdcc6ee9679933aL    # 0.4496418447
        0x3fdcbc3bc3fd24c1L    # 0.4489888586
        0x3fdcb18ce7a6e529L    # 0.448336817
        0x3fdca6e1fd46ce57L    # 0.447685716
        0x3fdc9c3b00acda30L    # 0.4470355517
        0x3fdc9197eddffc5bL    # 0.4463863204
        0x3fdc86f8c0e7287dL    # 0.4457380184
        0x3fdc7c5d7592587cL    # 0.4450906418
        0x3fdc71c6081f79bcL    # 0.4444441871
        0x3fdc673274430944L    # 0.4437986503
        0x3fdc5ca2b671ee39L    # 0.4431540281
        0x3fdc5216ca7c2281L    # 0.4425103166
        0x3fdc478eac8416a0L    # 0.4418675122
        0x3fdc3d0a58c7b7fdL    # 0.4412256114
        0x3fdc3289cb69771cL    # 0.4405846106
        0x3fdc280d00a74163L    # 0.4399445063
        0x3fdc1d93f4a38757L    # 0.4393052949
        0x3fdc131ea39c365eL    # 0.4386669729
        0x3fdc08ad09eab8bcL    # 0.4380295369
        0x3fdbfe3f23b17ef6L    # 0.4373929833
        0x3fdbf3d4ed657033L    # 0.4367573088
        0x3fdbe96e634479d6L    # 0.4361225099
        0x3fdbdf0b81c38305L    # 0.4354885833
        0x3fdbd4ac453bf605L    # 0.4348555256
        0x3fdbca50aa073d1bL    # 0.4342233334
        0x3fdbbff8ac9a3f6bL    # 0.4335920034
        0x3fdbb5a44969e41cL    # 0.4329615323
        0x3fdbab537ceb1251L    # 0.4323319168
        0x3fdba10643ae2e10L    # 0.4317031537
        0x3fdb96bc9a281e7dL    # 0.4310752397
        0x3fdb8c767ccdcabdL    # 0.4304481715
        0x3fdb8233e8669096L    # 0.4298219461
        0x3fdb77f4d94bda4bL    # 0.4291965601
        0x3fdb6db94c4505a1L    # 0.4285720105
        0x3fdb63813dc6f9beL    # 0.427948294
        0x3fdb594caa991465L    # 0.4273254076
        0x3fdb4f1b8f67367cL    # 0.4267033482
        0x3fdb44ede8dd40e7L    # 0.4260821127
        0x3fdb3ac3b38b97aaL    # 0.4254616979
        0x3fdb309cec55156bL    # 0.4248421009
        0x3fdb2679900117edL    # 0.4242233187
        0x3fdb1c599b200335L    # 0.4236053481
        0x3fdb123d0ab02ec8L    # 0.4229881863
        0x3fdb0823db5d7b8aL    # 0.4223718302
        0x3fdafe0e0a0ac41fL    # 0.4217562769
        0x3fdaf3fb937f664cL    # 0.4211415234
        0x3fdae9ec74b9b995L    # 0.4205275669
        0x3fdadfe0aa811bbfL    # 0.4199144044
        0x3fdad5d831b8676eL    # 0.419302033
        0x3fdacbd307427745L    # 0.4186904498
        0x3fdac1d128391faaL    # 0.4180796521
        0x3fdab7d2917f3b41L    # 0.417469637
        0x3fdaadd73ff7a4adL    # 0.4168604016
        0x3fdaa3df30bc3053L    # 0.4162519432
        0x3fda99ea60afb8d8L    # 0.4156442589
        0x3fda8ff8ccec129eL    # 0.415037346
        0x3fda860a728b120bL    # 0.4144312018
        0x3fda7c1f4e6f91c3L    # 0.4138258234
        0x3fda72375dea5fe8L    # 0.4132212083
        0x3fda68529dde5721L    # 0.4126173536
        0x3fda5e710b9c458fL    # 0.4120142568
        0x3fda5492a40705d9L    # 0.411411915
        0x3fda4ab7646f6620L    # 0.4108103257
        0x3fda40df49ef3acaL    # 0.4102094862
        0x3fda370a51bbd51bL    # 0.4096093939
        0x3fda2d38790a8655L    # 0.4090100462
        0x3fda2369bcf522deL    # 0.4084114404
        0x3fda199e1ae7f5b9L    # 0.4078135741
        0x3fda0fd58ffcd349L    # 0.4072164446
        0x3fda061019690cd3L    # 0.4066200493
        0x3fd9fc4db498ed5aL    # 0.4060243858
        0x3fd9f28e5ec1c622L    # 0.4054294515
        0x3fd9e8d21534654fL    # 0.4048352439
        0x3fd9df18d5261c25L    # 0.4042417604
        0x3fd9d5629c1eb287L    # 0.4036489987
        0x3fd9cbaf676ef699L    # 0.4030569563
        0x3fd9c1ff3467b67fL    # 0.4024656307
        0x3fd9b8520059c05bL    # 0.4018750194
        0x3fd9aea7c8b15f33L    # 0.40128512
        0x3fd9a5008af65ae9L    # 0.4006959302
        0x3fd99b5c447981a1L    # 0.4001074475
        0x3fd991baf2a71e5fL    # 0.3995196695
        0x3fd9881c9306f906L    # 0.3989325939
        0x3fd97e8122e9dfb9L    # 0.3983462182
        0x3fd974e8a00e941dL    # 0.3977605403
        0x3fd96b5307aa6774L    # 0.3971755576
        0x3fd961c057609e82L    # 0.3965912679
        0x3fd958308cd47e0bL    # 0.396007669
        0x3fd94ea3a556d432L    # 0.3954247584
        0x3fd945199e8ae5baL    # 0.3948425339
        0x3fd93b927613f766L    # 0.3942609933
        0x3fd9320e295e543bL    # 0.3936801342
        0x3fd9288cb628bddcL    # 0.3930999545
        0x3fd91f0e19fafc2bL    # 0.3925204519
        0x3fd91592525cd70cL    # 0.3919416241
        0x3fd90c195d0d1023L    # 0.391363469
        0x3fd902a337aeec32L    # 0.3907859844
        0x3fd8f92fdfca331dL    # 0.390209168
        0x3fd8efbf53392367L    # 0.3896330178
        0x3fd8e6518f8384f4L    # 0.3890575315
        0x3fd8dce692681966L    # 0.388482707
        0x3fd8d37e598a2581L    # 0.3879085421
        0x3fd8ca18e2c3e7c8L    # 0.3873350348
        0x3fd8c0b62bb8a4feL    # 0.3867621829
        0x3fd8b756320ba1e7L    # 0.3861899842
        0x3fd8adf8f3b299e5L    # 0.3856184368
        0x3fd8a49e6e50d1bbL    # 0.3850475385
        0x3fd89b469fa50b0dL    # 0.3844772872
        0x3fd891f18589845dL    # 0.3839076809
        0x3fd8889f1dd87c2fL    # 0.3833387176
        0x3fd87f4f66353746L    # 0.3827703951
        0x3fd876025c957105L    # 0.3822027115
        0x3fd86cb7feb7eb0eL    # 0.3816356647
        0x3fd863704a9260c5L    # 0.3810692528
        0x3fd85a2b3de393cdL    # 0.3805034737
        0x3fd850e8d685c2a9L    # 0.3799383254
        0x3fd847a9126ea8bbL    # 0.379373806
        0x3fd83e6bef788487L    # 0.3788099135
        0x3fd835316b7d9490L    # 0.3782466459
        0x3fd82bf984739438L    # 0.3776840013
        0x3fd822c438503ee2L    # 0.3771219778
        0x3fd8199184edd311L    # 0.3765605734
        0x3fd8106168420c29L    # 0.3759997862
        0x3fd80733e042a58bL    # 0.3754396143
        0x3fd7fe08eae55a9bL    # 0.3748800558
        0x3fd7f4e0861fe6bcL    # 0.3743211088
        0x3fd7ebbaafe80550L    # 0.3737627714
        0x3fd7e297664eee9aL    # 0.3732050418
        0x3fd7d976a74a5dfcL    # 0.3726479181
        0x3fd7d05870eb8bbbL    # 0.3720913985
        0x3fd7c73cc10cb658L    # 0.371535481
        0x3fd7be2395da92f6L    # 0.3709801639
        0x3fd7b50ced6659d8L    # 0.3704254454
        0x3fd7abf8c5a5c661L    # 0.3698713236
        0x3fd7a2e71caa10d2L    # 0.3693177967
        0x3fd799d7f09fee50L    # 0.368764863
        0x3fd790cb3f7d1a3cL    # 0.3682125206
        0x3fd787c1076e49baL    # 0.3676607678
        0x3fd77eb94669382bL    # 0.3671096027
        0x3fd775b3fad19473L    # 0.3665590238
        0x3fd76cb122662034L    # 0.366009029
        0x3fd763b0bba60731L    # 0.3654596169
        0x3fd75ab2c46b87ecL    # 0.3649107855
        0x3fd751b73afed468L    # 0.3643625332
        0x3fd748be1d8ca1c7L    # 0.3638148583
        0x3fd73fc76a26284dL    # 0.363267759
        0x3fd736d31ef81d1bL    # 0.3627212336
        0x3fd72de13a4ab233L    # 0.3621752805
        0x3fd724f1ba4a9cbaL    # 0.361629898
        0x3fd71c049d0914f1L    # 0.3610850843
        0x3fd71319e0e9c9baL    # 0.3605408379
        0x3fd70a3183fdf358L    # 0.359997157
        0x3fd7014b84a940adL    # 0.3594540401
        0x3fd6f867e0fce9fdL    # 0.3589114854
        0x3fd6ef8697412149L    # 0.3583694913
        0x3fd6e6a7a5be1894L    # 0.3578280562
        0x3fd6ddcb0abc01e0L    # 0.3572871785
        0x3fd6d4f0c467924fL    # 0.3567468565
        0x3fd6cc18d12478c5L    # 0.3562070887
        0x3fd6c3432f3ae743L    # 0.3556678735
        0x3fd6ba6fdcd792ecL    # 0.3551292092
        0x3fd6b19ed85e2aa2L    # 0.3545910943
        0x3fd6a8d01ffb6387L    # 0.3540535271
        0x3fd6a003b249e63eL    # 0.3535165063
        0x3fd697398d3f6e2aL    # 0.35298003
        0x3fd68e71af76a3ecL    # 0.3524440969
        0x3fd685ac1737b987L    # 0.3519087054
        0x3fd67ce8c2cae0fcL    # 0.3513738539
        0x3fd67427b093c930L    # 0.3508395409
        0x3fd66b68def62102L    # 0.3503057649
        0x3fd662ac4c559757L    # 0.3497725244
        0x3fd659f1f6dee150L    # 0.3492398177
        0x3fd65139dd48246fL    # 0.3487076436
        0x3fd64883fda298f7L    # 0.3481760003
        0x3fd63fd05688e78aL    # 0.3476448865
        0x3fd6371ee65ebf09L    # 0.3471143007
        0x3fd62e6fab87ce58L    # 0.3465842414
        0x3fd625c2a467c459L    # 0.3460547071
        0x3fd61d17cf7dcccdL    # 0.3455256964
        0x3fd6146f2b2d9696L    # 0.3449972078
        0x3fd60bc8b5dad098L    # 0.3444692398
        0x3fd603246e04a694L    # 0.343941791
        0x3fd5fa82522a444cL    # 0.34341486
        0x3fd5f1e260cad583L    # 0.3428884454
        0x3fd5e944984a091aL    # 0.3423625457
        0x3fd5e0a8f7270ad3L    # 0.3418371595
        0x3fd5d80f7be10672L    # 0.3413122854
        0x3fd5cf7824dbaad7L    # 0.3407879219
        0x3fd5c6e2f0cd1d85L    # 0.3402640678
        0x3fd5be4fde190d5eL    # 0.3397407216
        0x3fd5b5beeb3ea624L    # 0.3392178819
        0x3fd5ad3016bd1399L    # 0.3386955473
        0x3fd5a4a35f2efe5fL    # 0.3381737165
        0x3fd59c18c3139238L    # 0.3376523881
        0x3fd5939040e9fae7L    # 0.3371315607
        0x3fd58b09d74ce10dL    # 0.336611233
        0x3fd5828584d6ed4cL    # 0.3360914037
        0x3fd57a0347ebce86L    # 0.3355720713
        0x3fd571831f41aa3eL    # 0.3350532346
        0x3fd569050957ac34L    # 0.3345348922
        0x3fd5608904c87d0cL    # 0.3340170428
        0x3fd5580f102ec567L    # 0.3334996851
        0x3fd54f972a09b107L    # 0.3329828177
        0x3fd54721510f656eL    # 0.3324664394
        0x3fd53ead83da8b3eL    # 0.3319505489
        0x3fd5363bc0ea4e3aL    # 0.3314351448
        0x3fd52dcc06f4d3e1L    # 0.3309202259
        0x3fd5255e5494c4d8L    # 0.3304057909
        0x3fd51cf2a864c9bfL    # 0.3298918385
        0x3fd5148900ff8b39L    # 0.3293783674
        0x3fd50c215d1b2ec8L    # 0.3288653764
        0x3fd503bbbb525d0cL    # 0.3283528642
        0x3fd4fb581a3fbea9L    # 0.3278408295
        0x3fd4f2f678997920L    # 0.3273292711
        0x3fd4ea96d515b1f3L    # 0.3268181878
        0x3fd4e2392e3394e4L    # 0.3263075782
        0x3fd4d9dd82e04134L    # 0.3257974413
        0x3fd4d183d17f65c6L    # 0.3252877756
        0x3fd4c92c18fe21dbL    # 0.3247785801
        0x3fd4c0d657f71e15L    # 0.3242698535
        0x3fd4b8828d050317L    # 0.3237615945
        0x3fd4b030b714f020L    # 0.3232538021
        0x3fd4a7e0d48a9415L    # 0.3227464748
        0x3fd49f92e46e8b15L    # 0.3222396117
        0x3fd49746e54000e4L    # 0.3217332114
        0x3fd48efcd5d097e3L    # 0.3212272728
        0x3fd486b4b4d67593L    # 0.3207217947
        0x3fd47e6e8107bf76L    # 0.3202167759
        0x3fd4762a393617efL    # 0.3197122153
        0x3fd46de7dbfc279fL    # 0.3192081116
        0x3fd465a7682b90e7L    # 0.3187044637
        0x3fd45d68dc95f62aL    # 0.3182012705
        0x3fd4552c37f17ce8L    # 0.3176985308
        0x3fd44cf178f44aa5L    # 0.3171962434
        0x3fd444b89e7001c1L    # 0.3166944072
        0x3fd43c81a736449eL    # 0.3161930211
        0x3fd4344c91fd38bdL    # 0.3156920839
        0x3fd42c195d968082L    # 0.3151915945
        0x3fd423e808d3be4dL    # 0.3146915518
        0x3fd41bb8926b179fL    # 0.3141919546
        0x3fd4138af92e2edbL    # 0.3136928018
        0x3fd40b5f3c0a2343L    # 0.3131940924
        0x3fd4033559999d77L    # 0.3126958251
        0x3fd3fb0d50e5399aL    # 0.312197999
        0x3fd3f2e720a31d2dL    # 0.3117006129
        0x3fd3eac2c7a4ea92L    # 0.3112036657
        0x3fd3e2a044bc442aL    # 0.3107071563
        0x3fd3da7f96bacc57L    # 0.3102110836
        0x3fd3d260bc8da25bL    # 0.3097154466
        0x3fd3ca43b5066897L    # 0.3092202442
        0x3fd3c2287ef6c16dL    # 0.3087254753
        0x3fd3ba0f19304f3fL    # 0.3082311388
        0x3fd3b1f782a0314dL    # 0.3077372337
        0x3fd3a9e1ba1809faL    # 0.3072437589
        0x3fd3a1cdbe84f887L    # 0.3067507134
        0x3fd399bb8e9d2276L    # 0.306258096
        0x3fd391ab2984a0c9L    # 0.3057659059
        0x3fd3899c8df19900L    # 0.3052741419
        0x3fd3818fbab5ad7dL    # 0.3047828029
        0x3fd37984aed97a63L    # 0.304291888
        0x3fd3717b692ea212L    # 0.3038013961
        0x3fd36973e8bdc0acL    # 0.3033113263
        0x3fd3616e2c3cfbb2L    # 0.3028216774
        0x3fd3596a32997267L    # 0.3023324484
        0x3fd35167fadbc0ebL    # 0.3018436384
        0x3fd3496783d589a0L    # 0.3013552463
        0x3fd34168cc8f68a8L    # 0.3008672712
        0x3fd3396bd3bf8384L    # 0.3003797119
        0x3fd3317098a57015L    # 0.2998925677
        0x3fd3297719dbd6fdL    # 0.2994058373
        0x3fd3217f5686d13eL    # 0.2989195199
        0x3fd319894d780139L    # 0.2984336144
        0x3fd31194fdb8030fL    # 0.2979481199
        0x3fd309a2664f72e2L    # 0.2974630355
        0x3fd301b185f47634L    # 0.29697836
        0x3fd2f9c25bcb2605L    # 0.2964940926
        0x3fd2f1d4e6c0a198L    # 0.2960102323
        0x3fd2e9e925c2082dL    # 0.2955267781
        0x3fd2e1ff17d7f5e6L    # 0.2950437291
        0x3fd2da16bbef8a05L    # 0.2945610843
        0x3fd2d23010f5e3cbL    # 0.2940788427
        0x3fd2ca4b15f39f59L    # 0.2935970034
        0x3fd2c267ca0cd5b1L    # 0.2931155656
        0x3fd2ba862bf7ac54L    # 0.2926345281
        0x3fd2b2a63ad83c43L    # 0.2921538901
        0x3fd2aac7f5b721a1L    # 0.2916736507
        0x3fd2a2eb5b817baeL    # 0.2911938089
        0x3fd29b106b3fe68bL    # 0.2907143638
        0x3fd2933723fafe5bL    # 0.2902353145
        0x3fd28b5f84bb5f3eL    # 0.2897566601
        0x3fd283898c52ab96L    # 0.2892783995
        0x3fd27bb53a007944L    # 0.288800532
        0x3fd273e28ccd646aL    # 0.2883230567
        0x3fd26c11838b0f68L    # 0.2878459725
        0x3fd264421d791021L    # 0.2873692787
        0x3fd25c74596908f5L    # 0.2868929742
        0x3fd254a8369a8fc7L    # 0.2864170583
        0x3fd24cddb3fac3d6L    # 0.28594153
        0x3fd24514d0924145L    # 0.2854663884
        0x3fd23d4d8b852115L    # 0.2849916327
        0x3fd23587e3dbff67L    # 0.284517262
        0x3fd22dc3d883fb7dL    # 0.2840432753
        0x3fd2260168bcab37L    # 0.2835696719
        0x3fd21e4093732dd8L    # 0.2830964508
        0x3fd2168157cb9c60L    # 0.2826236112
        0x3fd20ec3b4ce92f0L    # 0.2821511522
        0x3fd20707a9a02a8bL    # 0.281679073
        0x3fd1ff4d352d8271L    # 0.2812073726
        0x3fd1f79456b63083L    # 0.2807360503
        0x3fd1efdd0d42d0e3L    # 0.2802651052
        0x3fd1e82757dbffb3L    # 0.2797945364
        0x3fd1e073358a5912L    # 0.279324343
        0x3fd1d8c0a58d72e4L    # 0.2788545243
        0x3fd1d10fa7096628L    # 0.2783850795
        0x3fd1c96038cfd540L    # 0.2779160075
        0x3fd1c1b25a574fcdL    # 0.2774473078
        0x3fd1ba060a717831L    # 0.2769789793
        0x3fd1b25b485de44dL    # 0.2765110213
        0x3fd1aab213253042L    # 0.2760434329
        0x3fd1a30a6a06f1f1L    # 0.2755762134
        0x3fd19b644c0bc57cL    # 0.2751093619
        0x3fd193bfb83c4703L    # 0.2746428775
        0x3fd18c1cadf38948L    # 0.2741767596
        0x3fd1847b2c1eab8dL    # 0.2737110072
        0x3fd17cdb31fd43b1L    # 0.2732456196
        0x3fd1753cbe97edd7L    # 0.2727805959
        0x3fd16d9fd12e3fe0L    # 0.2723159354
        0x3fd1660468e452cdL    # 0.2718516373
        0x3fd15e6a84c2c2bfL    # 0.2713877007
        0x3fd156d224092597L    # 0.2709241249
        0x3fd14f3b45db9456L    # 0.2704609091
        0x3fd147a5e942ab1fL    # 0.2699980524
        0x3fd140120d997cb1L    # 0.2695355542
        0x3fd1387fb1e8a52dL    # 0.2690734136
        0x3fd130eed56fba76L    # 0.2686116299
        0x3fd1295f773758adL    # 0.2681502022
        0x3fd121d1969a9291L    # 0.2676891299
        0x3fd11a4532a20445L    # 0.2672284121
        0x3fd112ba4a71c6caL    # 0.266768048
        0x3fd10b30dd64ece1L    # 0.266308037
        0x3fd103a8ea8412abL    # 0.2658483782
        0x3fd0fc22710ece09L    # 0.2653890709
        0x3fd0f49d702937fcL    # 0.2649301143
        0x3fd0ed19e712e665L    # 0.2644715077
        0x3fd0e597d4eff246L    # 0.2640132503
        0x3fd0de1738e474a0L    # 0.2635553413
        0x3fd0d698124b8033L    # 0.2630977801
        0x3fd0cf1a60492e01L    # 0.2626405659
        0x3fd0c79e2201970bL    # 0.2621836979
        0x3fd0c02356cfce12L    # 0.2617271755
        0x3fd0b8a9fdbc6f37L    # 0.2612709978
        0x3fd0b1321607105bL    # 0.2608151641
        0x3fd0a9bb9f0ac440L    # 0.2603596738
        0x3fd0a24697d02706L    # 0.259904526
        0x3fd09ad2ffb24b6eL    # 0.2594497201
        0x3fd09360d5d54a7aL    # 0.2589952553
        0x3fd08bf01978ba0bL    # 0.2585411309
        0x3fd08480c9dc3001L    # 0.2580873462
        0x3fd07d12e63f423eL    # 0.2576339005
        0x3fd075a66de186a3L    # 0.2571807931
        0x3fd06e3b5fe71630L    # 0.2567280232
        0x3fd066d1bbab03a8L    # 0.2562755902
        0x3fd05f698051680aL    # 0.2558234933
        0x3fd05802ad19d939L    # 0.2553717318
        0x3fd0509d415f69f5L    # 0.2549203051
        0x3fd049393c61b01eL    # 0.2544692125
        0x3fd041d69d2947d7L    # 0.2540184531
        0x3fd03a7563483da0L    # 0.2535680265
        0x3fd033158dc72d9aL    # 0.2531179318
        0x3fd02bb71be5ada7L    # 0.2526681683
        0x3fd0245a0d1a4d67L    # 0.2522187355
        0x3fd01cfe606da8fbL    # 0.2517696325
        0x3fd015a415565004L    # 0.2513208588
        0x3fd00e4b2af85b84L    # 0.2508724136
        0x3fd006f3a0aede3bL    # 0.2504242963
        0x3fcfff3aeb72dc14L    # 0.2499765062
        0x3fcff09152af41a5L    # 0.2495290426
        0x3fcfe1ea759218ebL    # 0.2490819048
        0x3fcfd34652d18767L    # 0.2486350922
        0x3fcfc4a4e923b29cL    # 0.2481886042
        0x3fcfb60636d0cc8cL    # 0.24774244
        0x3fcfa76a3a5800f8L    # 0.2472965989
        0x3fcf98d0f2dd68e2L    # 0.2468510805
        0x3fcf8a3a5e3b42ceL    # 0.2464058838
        0x3fcf7ba67b95a7bbL    # 0.2459610084
        0x3fcf6d15496bc36dL    # 0.2455164536
        0x3fcf5e86c63cc1a6L    # 0.2450722187
        0x3fcf4ffaf0bec7e6L    # 0.2446283031
        0x3fcf4171c77101f1L    # 0.2441847061
        0x3fcf32eb48d29b88L    # 0.243741427
        0x3fcf246773d0b3ecL    # 0.2432984653
        0x3fcf15e646ea76e1L    # 0.2428558203
        0x3fcf0767c0d609e7L    # 0.2424134914
        0x3fcef8ebe01298c2L    # 0.2419714779
        0x3fceea72a35648f1L    # 0.2415297792
        0x3fcedbfc09204639L    # 0.2410883946
        0x3fcecd88105dafd9L    # 0.2406473236
        0x3fcebf16b78db195L    # 0.2402065655
        0x3fceb0a7fd6670eeL    # 0.2397661197
        0x3fcea23be06719a6L    # 0.2393259855
        0x3fce93d25f7ccafeL    # 0.2388861624
        0x3fce856b7926b0baL    # 0.2384466497
        0x3fce77072c1af059L    # 0.2380074468
        0x3fce68a5770faf5fL    # 0.2375685531
        0x3fce5a465884198dL    # 0.2371299679
        0x3fce4be9cf9c47e5L    # 0.2366916908
        0x3fce3d8fda6972a9L    # 0.2362537209
        0x3fce2f387846ac9aL    # 0.2358160579
        0x3fce20e3a77c27bbL    # 0.235378701
        0x3fce129166c0098dL    # 0.2349416496
        0x3fce0441b4ff7152L    # 0.2345049032
        0x3fcdf5f490b98accL    # 0.2340684611
        0x3fcde7a9f8a47b7cL    # 0.2336323227
        0x3fcdd961ebad62a4L    # 0.2331964875
        0x3fcdcb1c688a65c7L    # 0.2327609549
        0x3fcdbcd96dbab0a5L    # 0.2323257242
        0x3fcdae98fa2b6281L    # 0.2318907949
        0x3fcda05b0c92a0dcL    # 0.2314561664
        0x3fcd921fa3dd8af8L    # 0.2310218382
        0x3fcd83e6be5452d7L    # 0.2305878095
        0x3fcd75b05b1b117bL    # 0.2301540799
        0x3fcd677c78b0f2a5L    # 0.2297206487
        0x3fcd594b16031597L    # 0.2292875154
        0x3fcd4b1c31c79fd3L    # 0.2288546794
        0x3fcd3cefcaebb09aL    # 0.2284221402
        0x3fcd2ec5dfee73aeL    # 0.2279898971
        0x3fcd209e6f860e91L    # 0.2275579495
        0x3fcd1279790d9405L    # 0.2271262971
        0x3fcd0456fa963c4bL    # 0.226694939
        0x3fccf636f37b1a24L    # 0.2262638749
        0x3fcce81962045f94L    # 0.225833104
        0x3fccd9fe458d1f5aL    # 0.225402626
        0x3fcccbe59c5d8b7aL    # 0.2249724401
        0x3fccbdcf6599bcf4L    # 0.2245425459
        0x3fccafbb9fc0df8bL    # 0.2241129427
        0x3fcca1aa49f70c3fL    # 0.2236836301
        0x3fcc939b62f26893L    # 0.2232546075
        0x3fcc858ee9691a08L    # 0.2228258743
        0x3fcc7784dc483fe0L    # 0.22239743
        0x3fcc697d3a45ff9cL    # 0.221969274
        0x3fcc5b78024f787fL    # 0.2215414058
        0x3fcc4d75331ad009L    # 0.2211138248
        0x3fcc3f74cb95257dL    # 0.2206865305
        0x3fcc3176caab981bL    # 0.2202595224
        0x3fcc237b2f144d66L    # 0.2198327999
        0x3fcc1581f7bc64a0L    # 0.2194063625
        0x3fcc078b235a0349L    # 0.2189802096
        0x3fcbf996b0da48a3L    # 0.2185543407
        0x3fcbeba49f2a53f1L    # 0.2181287553
        0x3fcbddb4ed004ab3L    # 0.2177034528
        0x3fcbcfc7998045ebL    # 0.2172784328
        0x3fcbc1dca329715bL    # 0.2168536946
        0x3fcbb3f4091fe604L    # 0.2164292378
        0x3fcba60dca19c968L    # 0.2160050618
        0x3fcb9829e53b3488L    # 0.2155811662
        0x3fcb8a4859035326L    # 0.2151575503
        0x3fcb7c6924963e44L    # 0.2147342137
        0x3fcb6e8c46e11522L    # 0.2143111559
        0x3fcb60b1be99fd43L    # 0.2138883763
        0x3fcb52d98aae15e9L    # 0.2134658744
        0x3fcb4503aa0a7e54L    # 0.2130436497
        0x3fcb37301bd34f86L    # 0.2126217018
        0x3fcb295ede87b541L    # 0.21220003
        0x3fcb1b8ff114cec6L    # 0.2117786338
        0x3fcb0dc352d5aed6L    # 0.2113575129
        0x3fcafff902498134L    # 0.2109366666
        0x3fcaf230fe945ee1L    # 0.2105160945
        0x3fcae46b466c6d5eL    # 0.210095796
        0x3fcad6a7d8f5c5adL    # 0.2096757707
        0x3fcac8e6b4e68d4eL    # 0.209256018
        0x3fcabb27d962dd45L    # 0.2088365375
        0x3fcaad6b4557d4d1L    # 0.2084173287
        0x3fca9fb0f77b9976L    # 0.207998391
        0x3fca91f8eef24433L    # 0.207579724
        0x3fca84432aa8f44bL    # 0.2071613272
        0x3fca768fa955cf3fL    # 0.2067432
        0x3fca68de6a53e7d1L    # 0.2063253421
        0x3fca5b2f6c596381L    # 0.2059077529
        0x3fca4d82ae1c67d3L    # 0.2054904318
        0x3fca3fd82f2f0145L    # 0.2050733786
        0x3fca322fee105b9bL    # 0.2046565926
        0x3fca2489e9ad9616L    # 0.2042400733
        0x3fca16e62161c377L    # 0.2038238204
        0x3fca094493e30940L    # 0.2034078333
        0x3fc9fba5401e86b1L    # 0.2029921115
        0x3fc9ee0825015b0eL    # 0.2025766545
        0x3fc9e06d41e69915L    # 0.202161462
        0x3fc9d2d49584664bL    # 0.2017465334
        0x3fc9c53e1ec7e1efL    # 0.2013318682
        0x3fc9b7a9dc9e2b43L    # 0.2009174659
        0x3fc9aa17ce625508L    # 0.2005033262
        0x3fc99c87f2ca84c0L    # 0.2000894485
        0x3fc98efa48fad36dL    # 0.1996758324
        0x3fc9816ecfe0604fL    # 0.1992624774
        0x3fc973e586684aa8L    # 0.198849383
        0x3fc9665e6b7fb1baL    # 0.1984365487
        0x3fc958d97e81a846L    # 0.1980239742
        0x3fc94b56be2453ccL    # 0.1976116589
        0x3fc93dd629c2c70fL    # 0.1971996025
        0x3fc93057bfdc2dd1L    # 0.1967878043
        0x3fc922db80029491L    # 0.1963762641
        0x3fc9156168ec20d2L    # 0.1959649813
        0x3fc907e97985f1d5L    # 0.1955539554
        0x3fc8fa73b12b1a5bL    # 0.1951431861
        0x3fc8ed000e91bfe6L    # 0.1947326728
        0x3fc8df8e90ddfb77L    # 0.1943224151
        0x3fc8d21f3733e60fL    # 0.1939124126
        0x3fc8c4b200b798b0L    # 0.1935026649
        0x3fc8b746ec1f38dbL    # 0.1930931714
        0x3fc8a9ddf8c5d951L    # 0.1926839318
        0x3fc89c7725619f93L    # 0.1922749455
        0x3fc88f12714d9e64L    # 0.1918662122
        0x3fc881afdb76f504L    # 0.1914577314
        0x3fc8744f6301bc75L    # 0.1910495027
        0x3fc866f106db13f7L    # 0.1906415256
        0x3fc85994c627148dL    # 0.1902337997
        0x3fc84c3aa009d737L    # 0.1898263246
        0x3fc83ee293707b36L    # 0.1894190998
        0x3fc8318c9f7f198dL    # 0.1890121249
        0x3fc82438c359cb3cL    # 0.1886053995
        0x3fc816e6fdb6b5c5L    # 0.188198923
        0x3fc809974e27e5a9L    # 0.1877926952
        0x3fc7fc49b39a7a29L    # 0.1873867156
        0x3fc7eefe2cfb9286L    # 0.1869809837
        0x3fc7e1b4b96f47c2L    # 0.1865754991
        0x3fc7d46d5850ac9eL    # 0.1861702615
        0x3fc7c7280855e69cL    # 0.1857652703
        0x3fc7b9e4c8a30ebcL    # 0.1853605251
        0x3fc7aca3989337bfL    # 0.1849560256
        0x3fc79f64771380e8L    # 0.1845517713
        0x3fc7922763480337L    # 0.1841477618
        0x3fc784ec5c54d7adL    # 0.1837439967
        0x3fc777b361271d8cL    # 0.1833404755
        0x3fc76a7c7119e795L    # 0.1829371979
        0x3fc75d478b1a550aL    # 0.1825341634
        0x3fc75014ae4c7eebL    # 0.1821313716
        0x3fc742e3da0b77f9L    # 0.1817288222
        0x3fc735b50d0d65b6L    # 0.1813265146
        0x3fc7288846ad5ae4L    # 0.1809244485
        0x3fc71b5d860f7083L    # 0.1805226235
        0x3fc70e34ca57bf94L    # 0.1801210392
        0x3fc7010e12736759L    # 0.1797196951
        0x3fc6f3e95dbd7a93L    # 0.1793185909
        0x3fc6e6c6ab5a1243L    # 0.1789177262
        0x3fc6d9a5fa364dabL    # 0.1785171005
        0x3fc6cc8749ad3f8bL    # 0.1781167135
        0x3fc6bf6a98ac0725L    # 0.1777165647
        0x3fc6b24fe68db73aL    # 0.1773166538
        0x3fc6a537323f6f0bL    # 0.1769169803
        0x3fc698207b1c4159L    # 0.1765175439
        0x3fc68b0bc0484726L    # 0.1761183442
        0x3fc67df900b09fb3L    # 0.1757193807
        0x3fc670e83bb05dc0L    # 0.1753206531
        0x3fc663d9706b9a4fL    # 0.174922161
        0x3fc656cc9e066e62L    # 0.174523904
        0x3fc649c1c3a4f2f9L    # 0.1741258817
        0x3fc63cb8e06b4115L    # 0.1737280937
        0x3fc62fb1f3b46b78L    # 0.1733305397
        0x3fc622acfc3697a3L    # 0.1729332191
        0x3fc615a9f983d217L    # 0.1725361317
        0x3fc608a8eac033d4L    # 0.1721392771
        0x3fc5fba9cf0fd5deL    # 0.1717426549
        0x3fc5eeaca55fd773L    # 0.1713462646
        0x3fc5e1b16d424516L    # 0.170950106
        0x3fc5d4b825a43e08L    # 0.1705541786
        0x3fc5c7c0cde0d50aL    # 0.1701584821
        0x3fc5bacb64e5295cL    # 0.169763016
        0x3fc5add7ea434781L    # 0.1693677801
        0x3fc5a0e65cb154f9L    # 0.1689727738
        0x3fc593f6bbc15e45L    # 0.1685779969
        0x3fc5870906977c67L    # 0.168183449
        0x3fc57a1d3c57c85fL    # 0.1677891297
        0x3fc56d335c265b2eL    # 0.1673950386
        0x3fc5604b655e4797L    # 0.1670011754
        0x3fc5536556ecacd9L    # 0.1666075396
        0x3fc54681302c9db7L    # 0.1662141309
        0x3fc5399ef0792cf0L    # 0.165820949
        0x3fc52cbe96f67387L    # 0.1654279935
        0x3fc51fe022c88a7bL    # 0.165035264
        0x3fc5130393138ad0L    # 0.1646427601
        0x3fc50628e7328744L    # 0.1642504815
        0x3fc4f9501e4998dbL    # 0.1638584278
        0x3fc4ec79377cd894L    # 0.1634665986
        0x3fc4dfa4325e52f0L    # 0.1630749937
        0x3fc4d2d10da42d71L    # 0.1626836125
        0x3fc4c5ffc9176e58L    # 0.1622924549
        0x3fc4b930636e3b26L    # 0.1619015203
        0x3fc4ac62dc3aa05cL    # 0.1615108085
        0x3fc49f9732a0b6fbL    # 0.1611203191
        0x3fc492cd65c49804L    # 0.1607300517
        0x3fc4860575015639L    # 0.160340006
        0x3fc4793f5f7b0a99L    # 0.1599501816
        0x3fc46c7b248cc7e7L    # 0.1595605782
        0x3fc45fb8c35aa723L    # 0.1591711954
        0x3fc452f83b3fbb0fL    # 0.1587820329
        0x3fc446398b601cabL    # 0.1583930903
        0x3fc4397cb2dfe4f8L    # 0.1580043672
        0x3fc42cc1b1512078L    # 0.1576158634
        0x3fc4200885d7e82bL    # 0.1572275785
        0x3fc413512f985513L    # 0.1568395121
        0x3fc4069badb68031L    # 0.1564516638
        0x3fc3f9e7ffc47605L    # 0.1560640334
        0x3fc3ed3624e64f91L    # 0.1556766205
        0x3fc3e0861c4025d6L    # 0.1552894247
        0x3fc3d3d7e52d0b94L    # 0.1549024457
        0x3fc3c72b7f08138dL    # 0.1545156832
        0x3fc3ba80e8be5d02L    # 0.1541291367
        0x3fc3add82218ee33L    # 0.1537428061
        0x3fc3a1312a04e663L    # 0.1533566909
        0x3fc3948bffdd5851L    # 0.1529707908
        0x3fc387e8a2fd56bfL    # 0.1525851055
        0x3fc37b471288faadL    # 0.1521996346
        0x3fc36ea74ddb56deL    # 0.1518143778
        0x3fc3620954188451L    # 0.1514293347
        0x3fc3556d24d28f88L    # 0.1510445051
        0x3fc348d2bef697c4L    # 0.1506598885
        0x3fc33c3a224da345L    # 0.1502754848
        0x3fc32fa34d8dd78dL    # 0.1498912934
        0x3fc3230e4049411eL    # 0.1495073141
        0x3fc3167af9daf2b6L    # 0.1491235466
        0x3fc309e9799dff19L    # 0.1487399906
        0x3fc2fd59be7f8586L    # 0.1483566456
        0x3fc2f0cbc811927fL    # 0.1479735114
        0x3fc2e43f95af38c4L    # 0.1475905877
        0x3fc2d7b5267c9157L    # 0.1472078741
        0x3fc2cb2c79d4aef9L    # 0.1468253703
        0x3fc2bea58f12a46aL    # 0.146443076
        0x3fc2b2206591846bL    # 0.1460609909
        0x3fc2a59cfc7567feL    # 0.1456791146
        0x3fc2991b531961e4L    # 0.1452974468
        0x3fc28c9b68d884ddL    # 0.1449159872
        0x3fc2801d3d0de3aaL    # 0.1445347355
        0x3fc273a0cedd974cL    # 0.1441536913
        0x3fc267261dd9ac45L    # 0.1437728544
        0x3fc25aad29263b94L    # 0.1433922244
        0x3fc24e35f01e57fcL    # 0.143011801
        0x3fc241c0721d143dL    # 0.1426315839
        0x3fc2354cae468958L    # 0.1422515727
        0x3fc228daa42cc3ceL    # 0.1418717672
        0x3fc21c6a532ad660L    # 0.1414921671
        0x3fc20ffbba64da0eL    # 0.141112772
        0x3fc2038ed935e19aL    # 0.1407335816
        0x3fc1f723aef8ffc5L    # 0.1403545956
        0x3fc1eaba3b40410fL    # 0.1399758138
        0x3fc1de527cf8c4baL    # 0.1395972357
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 61
    const-string/jumbo v0, "/sys/class/backlight/panel0-backlight/brightness"

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    .line 67
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    .line 71
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->initView()V

    .line 69
    return-void
.end method

.method private addOverlayView()V
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    .line 197
    :cond_1
    return-void

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 201
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add overlay view: mOverlayAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v0, :cond_3

    .line 204
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addViewAndUpdateAlpha()V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V

    .line 243
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 228
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    return-void
.end method

.method private caculateOverlayAlpha()F
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 270
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    if-eqz v2, :cond_0

    .line 271
    sget-object v2, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->BRIGHTNESS_TO_ALPHA_1024:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    double-to-float v2, v2

    return v2

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readBrightnessFromFile()I

    move-result v1

    .line 275
    .local v1, "fileBrightness":I
    if-lez v1, :cond_4

    .line 277
    const-string/jumbo v2, "MiuiGxzwOverlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read brightness from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v2, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->BRIGHTNESS_TO_ALPHA_1024:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 280
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v2, :cond_3

    .line 282
    if-le v1, v5, :cond_1

    .line 284
    const v0, 0x3f283127    # 0.657f

    .line 294
    .local v0, "alpha":F
    :goto_0
    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    .line 304
    :goto_1
    const-string/jumbo v2, "MiuiGxzwOverlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "caculate overlay alpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v0

    .line 285
    .end local v0    # "alpha":F
    :cond_1
    if-lez v1, :cond_2

    if-gt v1, v5, :cond_2

    .line 287
    const v0, 0x3f63d70a    # 0.89f

    .line 285
    .restart local v0    # "alpha":F
    goto :goto_0

    .line 289
    .end local v0    # "alpha":F
    :cond_2
    sget-object v2, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->BRIGHTNESS_TO_ALPHA_1024:[D

    aget-wide v2, v2, v1

    double-to-float v0, v2

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 292
    .end local v0    # "alpha":F
    :cond_3
    sget-object v2, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->BRIGHTNESS_TO_ALPHA_1024:[D

    aget-wide v2, v2, v1

    double-to-float v0, v2

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 296
    .end local v0    # "alpha":F
    :cond_4
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v2, :cond_5

    .line 297
    const v0, 0x3f283127    # 0.657f

    .restart local v0    # "alpha":F
    const v2, 0x3f283127    # 0.657f

    .line 298
    iput v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    goto :goto_1

    .line 300
    .end local v0    # "alpha":F
    :cond_5
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    .restart local v0    # "alpha":F
    goto :goto_1
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x9040071

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    const v0, 0x9120195

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mHbmOverlay:Landroid/view/View;

    .line 78
    const/16 v0, 0x1300

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->setSystemUiVisibility(I)V

    .line 81
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 83
    const/16 v3, 0x7e5

    .line 84
    const v4, 0x5011518

    .line 92
    const/4 v5, -0x2

    move v2, v1

    .line 81
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "hbm_overlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    .line 104
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;-><init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    .line 74
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setRoundedCornersOverlayFlag(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private readBrightnessFromFile()I
    .locals 7

    .prologue
    .line 310
    const/4 v2, 0x0

    .line 312
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 315
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 320
    if-eqz v3, :cond_0

    .line 322
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 315
    :cond_0
    :goto_0
    return v5

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v3, :cond_2

    .line 322
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v2, v3

    .line 328
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v5, -0x1

    return v5

    .line 323
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 318
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 320
    if-eqz v2, :cond_3

    .line 322
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 323
    :catch_3
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 319
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 320
    :goto_4
    if-eqz v2, :cond_4

    .line 322
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 319
    :cond_4
    :goto_5
    throw v5

    .line 323
    :catch_4
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 319
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 317
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private removeOverlayView()V
    .locals 4

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "remove overlay view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 224
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    .line 214
    return-void
.end method

.method private updateAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 250
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upldate overlay view alpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_0
    return-void
.end method

.method private updateBrightnessFileWatchState()V
    .locals 3

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->stopWatching()V

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->startWatching()V

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->onEvent(ILjava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->stopWatching()V

    goto :goto_0
.end method

.method private updateViewAddState()V
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 137
    const/16 v0, 0x11

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setScreenEffect(II)V

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    .line 127
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 343
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 344
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateViewAddState()V

    .line 346
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 342
    :cond_0
    return-void
.end method

.method public onCollectStateChange(Z)V
    .locals 0
    .param p1, "collecting"    # Z

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 354
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateViewAddState()V

    .line 352
    return-void
.end method

.method public onIconStateChange(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-nez v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 186
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    goto :goto_0
.end method

.method public onKeyguardAuthen(Z)V
    .locals 0
    .param p1, "keyguardAuthen"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mKeyguardAuthen:Z

    .line 174
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 167
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    .line 160
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mHbmOverlay:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 121
    iput v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 122
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addViewAndUpdateAlpha()V

    .line 124
    const/16 v0, 0x11

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setScreenEffect(II)V

    .line 107
    return-void

    .line 116
    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 152
    return-void
.end method
