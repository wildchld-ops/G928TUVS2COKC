.class public Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;
.super Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;
.source "WaveEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$2;,
        Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;,
        Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;
    }
.end annotation


# instance fields
.field private final DELAY_LIFE:I

.field private final SINE_WAVE_SPEED:F

.field private final TAG:Ljava/lang/String;

.field private animationValue0:F

.field private animationValue1:F

.field private bottomColor:I

.field private centerColor:I

.field private commonColor:I

.field private count:D

.field private currentLife:I

.field private currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

.field private currentPercent:F

.field private currentStatus:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

.field private currentWaveHeightRatio0:F

.field private currentWaveHeightRatio1:F

.field private easingValue:F

.field private elasticDist0:F

.field private elasticDist1:F

.field private elasticValue:F

.field private hasWaveSineEffect:Z

.field private isForTension:Z

.field private isYMoving:Z

.field private opacity:F

.field private sineValue:F

.field private targetPercent:F

.field private targetWaveHeightRatio:F

.field private theOtherSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

.field private thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

.field private topColor:I

.field private wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

.field private wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

.field private waveHeight0:F

.field private waveHeight1:F

.field private waveOpacity0:F

.field private waveOpacity1:F

.field private waveRatio0:F

.field private waveRatio1:F

.field private waveSpeed0:F

.field private waveSpeed1:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V
    .locals 5

    const/16 v1, 0x1e

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;-><init>(Landroid/content/Context;IILcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;)V

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->DELAY_LIFE:I

    const v0, 0x3cf5c28f    # 0.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->SINE_WAVE_SPEED:F

    const-string v0, "VisualEffectWaveViewEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentLife:I

    const v0, -0x9f7a69

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->topColor:I

    const v0, -0x502446

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->centerColor:I

    const v0, -0x1c232a

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->bottomColor:I

    iput v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->sineValue:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->easingValue:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio0:F

    iput v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio1:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticValue:F

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed0:F

    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed1:F

    iput v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity0:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity1:F

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->count:D

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isForTension:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->hasWaveSineEffect:Z

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->BOTH:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->MOVE:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentStatus:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    const-string v0, "VisualEffectWaveViewEffect"

    const-string v1, "WaveEffect constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p9, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->opacity:F

    cmpl-float v0, p9, v4

    if-eqz v0, :cond_0

    mul-float v0, p9, v3

    const v1, 0x3f59999a    # 0.85f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity0:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity0:F

    sub-float v0, p9, v0

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity0:F

    sub-float v1, v4, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity1:F

    :cond_0
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio0:F

    mul-float/2addr v0, p8

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio0:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio1:F

    mul-float/2addr v0, p8

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio1:F

    if-eqz p4, :cond_2

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->topColor:I

    :goto_0
    if-eqz p5, :cond_1

    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->centerColor:I

    :cond_1
    if-eqz p6, :cond_3

    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->bottomColor:I

    :goto_1
    const-string v0, "VisualEffectWaveViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveEffect - top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->topColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", center : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->centerColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->bottomColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectWaveViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveEffect - currentOpaqueType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectWaveViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveEffect - opacity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectWaveViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveEffect - waveWidthRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->initEffect()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setHandler()V

    return-void

    :cond_2
    iput v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->topColor:I

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    goto/16 :goto_0

    :cond_3
    iput v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->bottomColor:I

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->hasWaveSineEffect:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->calcSineWaveStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed0:F

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed1:F

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist0:F

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist0:F

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetWaveHeightRatio:F

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F

    return v0
.end method

.method static synthetic access$1416(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->easingValue:F

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticValue:F

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist1:F

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist1:F

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F

    return v0
.end method

.method static synthetic access$1816(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isAnimatorRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopAnimator()V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentStatus:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isAnimatorRunning:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F

    return p1
.end method

.method static synthetic access$316(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetPercent:F

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isForTension:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isForTension:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F

    return p1
.end method

.method static synthetic access$824(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F

    return p1
.end method

.method static synthetic access$924(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F

    return v0
.end method

.method private calcSineWaveStatus()V
    .locals 4

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$2;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$WaveEffect$SineWaveStatus:[I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentStatus:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->count:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->sineValue:F

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->count:D

    const-wide v2, 0x3f9eb851e0000000L    # 0.029999999329447746

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->count:D

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->sineValue:F

    const v1, 0x3951b717    # 2.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->sineValue:F

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->STAY:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentStatus:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentLife:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentLife:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentLife:I

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentLife:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->MOVE:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentStatus:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    const-wide v0, 0x40095f6bf8042d18L    # 3.171592652919241

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->count:D

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getColorWithOpacity(IF)I
    .locals 5

    const v2, 0xffffff

    and-int v0, p1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const-string v2, "VisualEffectWaveViewEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColorWithOpacity : color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", opacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private initEffect()V
    .locals 10

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed0:F

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x44b40000    # 1440.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed0:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed1:F

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x44b40000    # 1440.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed1:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveHeight0:F

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveHeight1:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->theOtherSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->topColor:I

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->commonColor:I

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$2;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$WaveEffect$OpaqueType:[I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed0:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveHeight0:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeight(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    invoke-virtual {v0, v8}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeightRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed1:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveHeight1:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeight(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    invoke-virtual {v0, v8}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeightRatio(F)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getDefaultPercent()F

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    invoke-virtual {v0, v6}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPercent(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    invoke-virtual {v0, v6}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPercent(F)V

    iput v6, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->theOtherSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->bottomColor:I

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->commonColor:I

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    sget-object v3, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Bothside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio0:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;-><init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->centerColor:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->bottomColor:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setColor(IIZ)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    sget-object v3, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio1:F

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;-><init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->topColor:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setColor(IZ)V

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->opacity:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio0:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;-><init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->commonColor:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setColor(IZ)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    sget-object v3, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Bothside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio1:F

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;-><init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->commonColor:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity0:F

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getColorWithOpacity(IF)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->commonColor:I

    iget v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity1:F

    sub-float v3, v9, v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getColorWithOpacity(IF)I

    move-result v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setColor(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->theOtherSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPaintMode(Landroid/graphics/PorterDuff$Mode;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio0:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;-><init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->commonColor:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity0:F

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getColorWithOpacity(IF)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setColor(IZ)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    iget v4, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveRatio1:F

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;-><init>(IILcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;FZ)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->commonColor:I

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveOpacity1:F

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getColorWithOpacity(IF)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setColor(IZ)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setHandler()V
    .locals 1

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;-><init>(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addTension(F)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetWaveHeightRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "VisualEffectWaveViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTension : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isForTension:Z

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F

    iput p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->easingValue:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticValue:F

    goto :goto_0
.end method

.method public clearEffect()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->clearEffect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F

    iput v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getDefaultPercent()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getDefaultPercent()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetPercent:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearVariables()V

    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->invalidate(IIII)V

    return-void
.end method

.method protected clearVariables()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist0:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist1:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetWaveHeightRatio:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->sineValue:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeightRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F

    iget v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->sineValue:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeightRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->calculatePoints(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->calculatePoints(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$2;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$WaveEffect$OpaqueType:[I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentOpaqueType:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->bottomColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->opacity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->theOtherSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->thisSide:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->drawWave(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->onWindowFocusChanged(Z)V

    const-string v0, "VisualEffectWaveViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isAutoStopOnWindowFocusChanged:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopEffect()V

    :cond_0
    return-void
.end method

.method public setWaveMaxHeightRatio(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->setWaveMaxHeightRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveHeight0:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeight(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveHeight1:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setWaveHeight(F)V

    return-void
.end method

.method public setWaveSineEffect(Z)V
    .locals 3

    const-string v0, "VisualEffectWaveViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWaveSineEffect : hasWaveSineEffect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->hasWaveSineEffect:Z

    return-void
.end method

.method public setWaveSpeedRatio(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->setWaveSpeedRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed0:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    iget v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed1:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    return-void
.end method

.method public startEffect()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->startEffect()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetWaveHeightRatio:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->easingValue:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetPercent:F

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isAnimatorRunning:Z

    if-nez v0, :cond_0

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->count:D

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->startAnimator()V

    return-void
.end method

.method public stopEffect()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;->stopEffect()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetWaveHeightRatio:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->easingValue:F

    const v0, 0x3f5eb852    # 0.87f

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->getDefaultPercent()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetPercent:F

    return-void
.end method
