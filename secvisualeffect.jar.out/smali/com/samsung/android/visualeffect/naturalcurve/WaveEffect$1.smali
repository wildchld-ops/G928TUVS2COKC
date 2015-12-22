.class Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;
.super Landroid/os/Handler;
.source "WaveEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x41200000    # 10.0f

    const v5, 0x38d1b717    # 1.0E-4f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->hasWaveSineEffect:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$000(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # invokes: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->calcSineWaveStatus()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$100(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetPercent:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetPercent:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    # setter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$302(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # setter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z
    invoke-static {v0, v4}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$202(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPercent(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$600(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setPercent(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isForTension:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$700(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    # -= operator for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$824(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$900(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    div-float/2addr v1, v6

    # -= operator for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$924(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$900(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$902(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    move-result v1

    # setter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$802(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # setter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isForTension:Z
    invoke-static {v0, v4}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$702(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;Z)Z

    const-string v0, "VisualEffectWaveViewEffect"

    const-string v1, "stopTention"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave0:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed0:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1000(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->wave1:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$600(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->waveSpeed1:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1100(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$900(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;->setSpeed(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetWaveHeightRatio:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue0:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->easingValue:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist0:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticValue:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1600(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    # setter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist0:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1202(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist0:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    # += operator for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1416(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetWaveHeightRatio:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->animationValue1:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$900(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->easingValue:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist1:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1700(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticValue:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1600(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    # setter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist1:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1702(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->elasticDist1:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1700(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    # += operator for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1816(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isAnimatorRunning:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1900(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isYMoving:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio0:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentWaveHeightRatio1:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$1800(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # invokes: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopAnimator()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$2000(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearVariables()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentStatus:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$2100(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->MOVE:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectWidth:I
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$2200(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->effectHeight:I
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$2300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->invalidate(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->isAnimatorRunning:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$2400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$2500(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->targetPercent:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$400(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$1;->this$0:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    # getter for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$300(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    # += operator for: Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->currentPercent:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->access$316(Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;F)F

    goto/16 :goto_0
.end method
