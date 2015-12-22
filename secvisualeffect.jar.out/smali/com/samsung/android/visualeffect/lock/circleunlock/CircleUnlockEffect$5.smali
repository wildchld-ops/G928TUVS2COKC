.class Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1800(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$700(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1500(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$1600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;->this$0:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->access$700(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    div-float v0, v1, v2

    goto :goto_0
.end method
