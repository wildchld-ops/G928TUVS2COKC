.class Lcom/android/systemui/keyguard/KeyguardViewMediator$14;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reloadLockSound(Lcom/android/keyguard/sec/effect/LockSoundInfo;)V
    .locals 3

    const-string v1, "KeyguardViewMediator"

    const-string v2, "reloadLockSound()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$14$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$14;Lcom/android/keyguard/sec/effect/LockSoundInfo;Landroid/content/Context;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
