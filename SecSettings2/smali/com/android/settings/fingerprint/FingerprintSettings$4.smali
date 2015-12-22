.class Lcom/android/settings/fingerprint/FingerprintSettings$4;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;->renameFingerPrint(I)V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1200(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameFingerPrint.onDismiss() : isEnrolling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->startidentify()Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1302(Lcom/android/settings/fingerprint/FingerprintSettings;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1200(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    goto :goto_0
.end method

.method public onPositiveClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x1

    const/4 v2, -0x1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->updateFingerList(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1100(Lcom/android/settings/fingerprint/FingerprintSettings;II)V

    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method
