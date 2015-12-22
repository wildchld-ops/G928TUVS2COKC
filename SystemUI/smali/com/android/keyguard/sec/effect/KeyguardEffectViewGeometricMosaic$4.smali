.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;
.super Ljava/lang/Object;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "GeometricMosaic sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
