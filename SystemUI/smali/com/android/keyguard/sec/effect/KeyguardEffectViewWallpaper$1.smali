.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewWallpaper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnimationValue:F
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->access$002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;F)F

    const v2, 0x3d4cccc0    # 0.049999952f

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnimationValue:F
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->setScaleY(F)V

    return-void
.end method
