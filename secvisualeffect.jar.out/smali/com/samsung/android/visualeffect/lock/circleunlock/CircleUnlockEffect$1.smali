.class Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;
.super Ljava/lang/Object;
.source "CircleUnlockEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMin:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$100(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMin:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$100(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    # setter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$002(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$200(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v2

    # invokes: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$300(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->hasNoOuterCircle:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$400(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$500(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v2

    # setter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F
    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$802(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F

    move-result v1

    # setter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$702(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$900(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationUpdate(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$900(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$700(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$900(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationUpdate(F)V

    goto :goto_0
.end method
