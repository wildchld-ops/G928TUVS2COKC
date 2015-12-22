.class Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$7;
.super Ljava/lang/Object;
.source "FingerPrintSelectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$500()Lcom/android/settings/fingerprint/FingerprintSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "FingerPrintSelectionUtils"

    const-string v2, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$500()Lcom/android/settings/fingerprint/FingerprintSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$500()Lcom/android/settings/fingerprint/FingerprintSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_lockscreen_is_smart_lock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteFingerprintOperation(Z)Z
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$1500(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Z)Z

    return-void
.end method
