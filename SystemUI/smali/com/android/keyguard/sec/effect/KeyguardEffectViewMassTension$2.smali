.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewMassTension.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLineAnim(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 8

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    iget-object v5, v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    iget-object v5, v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    iget-object v5, v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v3, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    iget-object v5, v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v4, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/widget/ImageView;

    move-result-object v5

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setX(F)V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/widget/ImageView;

    move-result-object v5

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setY(F)V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->createBouncerAnimation()Landroid/view/animation/AnimationSet;
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
