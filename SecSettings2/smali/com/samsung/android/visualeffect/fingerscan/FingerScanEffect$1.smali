.class Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect$1;
.super Ljava/lang/Object;
.source "FingerScanEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect$1;->this$0:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect$1;->this$0:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->access$0(Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect$1;->this$0:Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/fingerscan/FingerScanEffect;->invalidate()V

    return-void
.end method
