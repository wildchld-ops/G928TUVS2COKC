.class Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockSearchIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    const-class v0, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private isGuestUser()Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v0, 0x0

    const-string v5, "com.fmm.dm"

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "com.samsung.fmm"

    invoke-static {p1, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    const-string v6, "com.samsung.android.fmm"

    invoke-static {p1, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    or-int v0, v5, v6

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "unlock_effect_with_preview"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_1
    const-string v5, "swipe_lock_settings"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "show_information"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->getLockscreenVersion()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "a8lte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v5, "lock_screen_menu_notifications"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.sm"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "anti_malware"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string v5, "find_my_mobile"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v2, :cond_9

    if-nez v0, :cond_9

    const-string v5, "find_my_mobile"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "knox_active_protection"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "finger_scanner"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "find_my_mobile"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "unlock_set_or_change"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "other_security_settings"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "finger_scanner"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    const-string v5, "app_ops_settings"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnablePrivacyDataGuard"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "pdg_settings"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "lock_screen_menu_notifications"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "unlock_set_or_change"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "show_information"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "secured_lock_settigns"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "toggle_install_applications"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "find_my_mobile"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object v3

    :cond_f
    const-string v5, "secured_lock_settigns"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    const-string v5, "swipe_lock_settings"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    const-string v5, "unlock_effect_with_preview"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    const-string v5, "secured_lock_settigns"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "anti_malware"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    const-string v5, "VZW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "SPR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "BST"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "VMU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "XAS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    const-string v5, "knox_active_protection"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_16
    const-string v5, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "v00"

    const-string v6, "ro.config.knox"

    const-string v7, "v00"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "0"

    const-string v6, "persist.sys.kap.date"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "knox_active_protection"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    const-string v5, "knox_active_protection"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_18
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->isGuestUser()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "finger_scanner"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
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

    const v8, 0x7f0a126b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v6, "show_information"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0a13f6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_3

    const v6, 0x7f0a13fb

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v6, "toggle_install_applications"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0a077f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x7f0a158e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v2, 0x0

    const-string v6, "com.fmm.dm"

    invoke-static {p1, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "com.samsung.fmm"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v6, v7

    const-string v7, "com.samsung.android.fmm"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    or-int v2, v6, v7

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v6, "find_my_mobile"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0a11fd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v6, "secured_lock_settigns"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0a13fc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v5

    :cond_3
    const v6, 0x7f0a13fa

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f0a13f9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->getLockscreenVersion()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_6

    const v6, 0x7f0a13f7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const v6, 0x7f0a13f8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const v6, 0x7f0a0780

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
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

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/provider/SearchIndexableResource;

    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v6, 0x7f070087

    iput v6, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v6, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->initDirectMenuInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "com.fmm.dm"

    invoke-static {p1, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "com.samsung.fmm"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v6, v7

    const-string v7, "com.samsung.android.fmm"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    or-int v2, v6, v7

    const-string v6, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_0

    const-string v0, "com.android.settings.fmm.FindMyMobileSettings"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a11fd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->initDirectMenuInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a109b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->initDirectMenuInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method
