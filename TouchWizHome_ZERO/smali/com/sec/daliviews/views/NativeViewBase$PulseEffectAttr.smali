.class Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;
.super Ljava/lang/Object;
.source "NativeViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/NativeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PulseEffectAttr"
.end annotation


# instance fields
.field private mAnimationFinish:Z

.field private mFocused:Z

.field private mNoti:Z

.field private mPulseDuration:F

.field private mPulseFadeInDuration:F

.field private mPulseFadeOutDuration:F

.field private mPulseInnerColor:I

.field private mPulseOuterColor:I

.field final synthetic this$0:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/views/NativeViewBase;IIFFFZ)V
    .locals 3

    const v2, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0xb4

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseInnerColor:I

    const/16 v0, -0xce

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseOuterColor:I

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseDuration:F

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeInDuration:F

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeOutDuration:F

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mFocused:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mNoti:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mAnimationFinish:Z

    iput p2, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseInnerColor:I

    iput p3, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseOuterColor:I

    iput p4, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseDuration:F

    iput p5, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeInDuration:F

    iput p6, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeOutDuration:F

    iput-boolean p7, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mNoti:Z

    return-void
.end method


# virtual methods
.method public getAnimatioinFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mAnimationFinish:Z

    return v0
.end method

.method public getFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mFocused:Z

    return v0
.end method

.method public performPulse()V
    .locals 8

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mAnimationFinish:Z

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    iget v1, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseInnerColor:I

    iget v2, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseOuterColor:I

    iget v3, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeInDuration:F

    iget v4, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeOutDuration:F

    iget v5, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseDuration:F

    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mNoti:Z

    # invokes: Lcom/sec/daliviews/views/NativeViewBase;->pulse(IIFFFZZ)V
    invoke-static/range {v0 .. v7}, Lcom/sec/daliviews/views/NativeViewBase;->access$1100(Lcom/sec/daliviews/views/NativeViewBase;IIFFFZZ)V

    return-void
.end method

.method public resetFocus(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->onPulseComplete()V

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    # invokes: Lcom/sec/daliviews/views/NativeViewBase;->clearPulseEffect(J)V
    invoke-static {v0, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->access$1000(Lcom/sec/daliviews/views/NativeViewBase;J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mFocused:Z

    return-void
.end method

.method public setAnimationFinish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mAnimationFinish:Z

    return-void
.end method

.method public setPluseEffectAttr(IIFFF)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseInnerColor:I

    iput p2, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseOuterColor:I

    iput p3, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseDuration:F

    iput p4, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeInDuration:F

    iput p5, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->mPulseFadeOutDuration:F

    return-void
.end method

.method public setPulseSpeedFactor(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    # invokes: Lcom/sec/daliviews/views/NativeViewBase;->setPulseSpeedFactor(F)V
    invoke-static {v0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->access$1200(Lcom/sec/daliviews/views/NativeViewBase;F)V

    return-void
.end method
