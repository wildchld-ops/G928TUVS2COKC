.class Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
.super Ljava/lang/Thread;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiftFingerMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->sleep(J)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "LiftFingerMessage : Interrupted"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
