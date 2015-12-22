.class Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->reloadLockSound(Lcom/android/keyguard/sec/effect/LockSoundInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$14;Lcom/android/keyguard/sec/effect/LockSoundInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "KeyguardViewMediator"

    const-string v1, "reloadLockSound() - run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->reloadSoundIdLock(Landroid/content/Context;ILandroid/media/SoundPool;)I

    move-result v1

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6002(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->val$info:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->reloadSoundIdUnlock(Landroid/content/Context;ILandroid/media/SoundPool;)I

    move-result v1

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6102(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    return-void
.end method
