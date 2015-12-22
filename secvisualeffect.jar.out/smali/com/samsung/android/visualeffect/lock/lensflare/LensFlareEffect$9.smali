.class Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->affordanceAnimationValue:F
    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1302(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->animatedAffordance()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1400(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->affordanceAnimationValue:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1300(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1500(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;

    move-result-object v1

    # invokes: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1600(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect$9;->this$0:Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;->access$1700(Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
