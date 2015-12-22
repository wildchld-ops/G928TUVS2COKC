.class Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSpassUnlockThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x45f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
