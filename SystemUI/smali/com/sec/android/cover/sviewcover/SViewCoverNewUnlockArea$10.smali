.class Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;
.super Ljava/lang/Object;
.source "SViewCoverNewUnlockArea.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAllAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$4000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    mul-float/2addr v2, v0

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F
    invoke-static {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$4200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    mul-float/2addr v2, v0

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F
    invoke-static {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$4102(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationUpdate(F)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$4100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->dragAnimationUpdate(F)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v3

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaAndVisibility(Landroid/view/View;F)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/view/View;F)V

    return-void
.end method
