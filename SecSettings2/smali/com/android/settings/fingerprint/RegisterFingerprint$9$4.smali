.class Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "RegisterTouchFingerprint"

    const-string v4, "isShopDemo is true, showLDUDialog()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showLDUDialog()V
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z
    invoke-static {v3, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3802(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "fingerIndex"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previousStage"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ownName"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "for_ode"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->putKnoxPasswordPolicy(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4300(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V

    :cond_2
    :goto_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v3, "fingerprint_setup_wizard"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/high16 v4, 0x10a0000

    const v5, 0x10a0001

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "isFromKnox"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "fingerIndex"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previousStage"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ownName"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "enrollResult"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fingerprint_fingerIndex"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v5, v5, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getPreferenceForSetupWizard()Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setPreferenceForSetupWizard(Z)V
    invoke-static {v3, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4600(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)V

    :cond_5
    const-string v3, "ChooseLockGeneric"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "applicationFingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->enableFingerprintLock()V
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4700(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0
.end method
