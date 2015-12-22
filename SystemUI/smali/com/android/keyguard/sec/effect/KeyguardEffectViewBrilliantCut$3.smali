.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "BrilliantCut sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->access$002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
