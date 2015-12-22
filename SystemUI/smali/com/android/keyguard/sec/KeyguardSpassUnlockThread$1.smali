.class Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v2, "Invalid Event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
