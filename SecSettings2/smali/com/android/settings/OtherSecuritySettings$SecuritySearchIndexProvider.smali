.class Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OtherSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OtherSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "DCM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "KDI"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v4, :cond_4

    :cond_2
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "new_security_update_service"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "GOOGLE_POLICY"

    const-string v5, "selinux.policy_version"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "new_security_update_service"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "smartcard_credential_category"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "usage_access"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0

    :cond_a
    const-string v4, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    iget-boolean v4, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_10

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-nez v4, :cond_0

    :cond_10
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a01b3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iget-boolean v6, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v6

    if-eqz v6, :cond_3

    const v3, 0x7f0a01af

    :goto_0
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    invoke-direct {v1, p1}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0ef8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v6, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string v6, "com.android.settings"

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v6, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v6, :cond_2

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v6, "security_policy_updates"

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0a11f1

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v6, "USA"

    const-string v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const v6, 0x7f0a11f2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_1
    iput-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v4

    :cond_3
    const v3, 0x7f0a01ad

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_5

    const v6, 0x7f0a11f3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const v6, 0x7f0a11f4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/provider/SearchIndexableResource;

    invoke-direct {v8, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-boolean v10, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "shopdemo"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    const v5, 0x7f070092

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "security.mdpp"

    const-string v11, "None"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "device_policy"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    const-string v10, "Enabled"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_0
    const v5, 0x7f07008a

    :goto_0
    new-instance v8, Landroid/provider/SearchIndexableResource;

    invoke-direct {v8, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iput v5, v8, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const-class v10, Lcom/android/settings/OtherSecuritySettings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v8, Landroid/provider/SearchIndexableResource;

    invoke-direct {v8, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v10, Lcom/android/settings/OtherSecuritySettings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v10, 0x7f07008c

    iput v10, v8, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v7, 0x0

    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    const-class v10, Lcom/android/settings/OtherSecuritySettings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v10, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a05c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a05c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, p1, v4, v1, v2}, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->initDirectMenuInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v6

    :cond_5
    const v5, 0x7f070089

    goto :goto_0

    :cond_6
    const v5, 0x7f070092

    goto :goto_0

    :cond_7
    const-string v10, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    iget-boolean v10, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v10, :cond_a

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-nez v10, :cond_2

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_1
.end method
