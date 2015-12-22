.class Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMax:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1200(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v3

    mul-float/2addr v3, v1

    # setter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v2, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$002(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$800(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v3

    mul-float/2addr v3, v1

    # setter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v2, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$702(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$900(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationUpdate(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$900(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$700(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$700(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v3

    # invokes: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V
    invoke-static {v2, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1300(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$200(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v4

    # invokes: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$300(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;Landroid/view/View;F)V

    cmpl-float v2, v1, v5

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1400(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v2

    sub-float v3, v1, v5

    mul-float/2addr v2, v3

    const v3, 0x3f19999a    # 0.6f

    div-float v0, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1500(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
