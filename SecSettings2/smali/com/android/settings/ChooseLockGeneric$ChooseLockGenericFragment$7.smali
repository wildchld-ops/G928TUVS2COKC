.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showDatabaseFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "ChooseLockGenericFragment"

    const-string v4, "showDatabaseFailureDialog"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setKeepEnrollSession(Z)V

    const-string v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fingerIndex"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previousStage"

    const-string v4, "ChooseLockGeneric"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setKeepEnrollSession(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v4, 0x7f0a10a2

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    goto :goto_0
.end method
