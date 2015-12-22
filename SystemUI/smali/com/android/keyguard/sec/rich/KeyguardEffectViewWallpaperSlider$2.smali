.class Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardEffectViewWallpaperSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->access$100(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    # invokes: Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V

    return-void
.end method
