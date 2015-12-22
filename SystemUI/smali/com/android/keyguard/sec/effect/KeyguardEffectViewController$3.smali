.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "onBootCompleted: mBootCompleted = true;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    return-void
.end method
