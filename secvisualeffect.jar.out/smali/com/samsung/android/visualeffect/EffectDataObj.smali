.class public Lcom/samsung/android/visualeffect/EffectDataObj;
.super Ljava/lang/Object;
.source "EffectDataObj.java"


# instance fields
.field public circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

.field public colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

.field public indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

.field public lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

.field public rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

.field public sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

.field public waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEffect(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/data/CircleData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectDataObj;->rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
