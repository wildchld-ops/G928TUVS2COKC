.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$2;
.super Landroid/os/Handler;
.source "KeyguardEffectViewZoomPanning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$2;->this$1:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$1802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;Z)Z

    return-void
.end method
