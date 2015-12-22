.class final Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    const/4 v5, 0x0

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "universal_lock_switch_state"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "unlock_set_biometric_weak"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v1, :cond_1

    const-string v3, "unlock_set_smart"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_2

    const-string v3, "unlock_set_universal"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "unlock_set_cac_pin"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "unlock_set_fingerprint"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "unlock_set_enterprise_identity"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "KEY_SELECTED_TWO_FACTOR_TYPE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "KEY_USING_TWO_FACTOR"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "unlock_set_two_factor"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
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

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f07008f

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings"

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
