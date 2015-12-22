.class public Lcom/android/keyguard/sec/KeyguardReset;
.super Ljava/lang/Object;
.source "KeyguardReset.java"


# static fields
.field private static final SEC_FACTORY_RESET_WITHOUT_FACTORY_UI:Ljava/lang/String; = "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

.field public static final TAG:Ljava/lang/String; = "KeyguardReset"

.field public static final USER_TYPE_PRIMARY:I = 0x1

.field public static final USER_TYPE_SECONDARY_USER:I = 0x3

.field public static final USER_TYPE_WORK_PROFILE:I = 0x2

.field private static sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 6

    const-string v3, "KeyguardReset"

    const-string v4, "findSDCard ()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KeyguardReset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findSDCard ( storageVolumes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v2, v0

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "KeyguardReset"

    const-string v4, "findSDCard ( null )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/KeyguardReset;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardReset;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;

    return-object v0
.end method

.method private removeSubUser(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "KeyguardReset"

    const-string v3, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public updateProgressDialog(I)V
    .locals 3

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method public wipeOut(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(II)V

    return-void

    :cond_1
    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0
.end method

.method public wipeOut(II)V
    .locals 13

    const-string v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wipeOut() attemptsCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " usertype = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const-string v7, "com.android.email"

    const-string v0, "com.android.email.SecurityPolicy$PolicyAdmin"

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x1

    if-ne p2, v10, :cond_2

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v9

    const-string v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wipeExcludeExternalStorage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardReset;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v8

    sget v10, Lcom/android/keyguard/R$string;->keyguard_progress_erasing_all:I

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/KeyguardReset;->updateProgressDialog(I)V

    if-eqz v8, :cond_0

    if-nez v9, :cond_0

    const-string v10, "KeyguardReset"

    const-string v11, "wipeOut ( send ExternalStorageFormatter.FORMAT_AND_FACTORY_RESET )"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "storage_volume"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "always_reset"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v10, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "KeyguardReset"

    const-string v11, "wipeOut ( send SEC_FACTORY_RESET_WITHOUT_FACTORY_UI )"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v10, "KeyguardReset"

    const-string v11, "wipeOut ( send ACTION_MASTER_CLEAR )"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wipeOut() removeSubUser usertype : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    const/4 v10, 0x2

    if-ne p2, v10, :cond_3

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardReset;->removeSubUser(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardReset;->removeSubUser(I)V

    goto :goto_0
.end method
