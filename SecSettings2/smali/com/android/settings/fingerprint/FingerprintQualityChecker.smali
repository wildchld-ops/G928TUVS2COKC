.class public Lcom/android/settings/fingerprint/FingerprintQualityChecker;
.super Ljava/lang/Object;
.source "FingerprintQualityChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLockQuality(Landroid/content/Context;)I
    .locals 5

    const/4 v4, -0x1

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.password_type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v3, "minimum_quality"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-static {v2, v0, p0}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQuality(ILandroid/util/MutableBoolean;Landroid/content/Context;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQuality(ILandroid/util/MutableBoolean;Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method private static upgradeQuality(ILandroid/util/MutableBoolean;Landroid/content/Context;)I
    .locals 2

    const v1, 0x8000

    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForDPM(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForKeyStore(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForEncryption(ILandroid/content/Context;)I

    move-result v0

    if-le v0, p0, :cond_0

    if-eqz p1, :cond_2

    if-gt p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    :cond_0
    move p0, v0

    :goto_1
    return p0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_0

    goto :goto_1
.end method

.method private static upgradeQualityForDPM(ILandroid/content/Context;)I
    .locals 3

    const-string v2, "device_policy"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-ge p0, v1, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method

.method private static upgradeQualityForEncryption(ILandroid/content/Context;)I
    .locals 7

    const/4 v6, 0x0

    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    :cond_0
    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    iget v5, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v4, v5, :cond_2

    :cond_1
    :goto_0
    return p0

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v4, 0x20000

    if-ge p0, v4, :cond_3

    const/high16 p0, 0x50000

    :cond_3
    goto :goto_0
.end method

.method private static upgradeQualityForKeyStore(ILandroid/content/Context;)I
    .locals 4

    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/high16 v3, 0x20000

    if-ge p0, v3, :cond_0

    const/high16 p0, 0x20000

    :cond_0
    return p0
.end method
