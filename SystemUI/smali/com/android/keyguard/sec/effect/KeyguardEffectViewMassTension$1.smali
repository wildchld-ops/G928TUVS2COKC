.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewMassTension.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->createBouncerAnimation()Landroid/view/animation/AnimationSet;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
