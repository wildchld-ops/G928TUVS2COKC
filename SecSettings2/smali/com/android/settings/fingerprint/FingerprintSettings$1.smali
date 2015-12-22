.class Lcom/android/settings/fingerprint/FingerprintSettings$1;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    if-eqz v1, :cond_0

    move-object v0, p1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
