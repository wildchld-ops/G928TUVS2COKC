.class public Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LegalInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isPackageLoaded(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v3, "LegalInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is Installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "LegalInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not Installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f070053

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v8, "terms"

    invoke-static {v1, v5, v8, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v8, "license"

    invoke-static {v1, v5, v8, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v8, "copyright"

    invoke-static {v1, v5, v8, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v8, "webview_license"

    invoke-static {v1, v5, v8, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string v8, "samsung_legal"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "samsung_eula_agree"

    invoke-static {v8, v9, v7, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v2, :cond_7

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    const-string v7, "samsung_legal"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-class v7, Lcom/android/settings/deviceinfo/legal/SamsungLegalInfo;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v7, "com.samsung.safetyinformation"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string v7, "safetyinfomation"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "XAR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "privacy_alert"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    new-instance v4, Ljava/io/File;

    const-string v7, "/system/lib/drm/libdivxplugin.so"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "divx_license_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/legal/LegalInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    return-void

    :cond_7
    move v2, v7

    goto :goto_0

    :cond_8
    const-string v7, "VZW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.setupwizard.EULA_NOTITLE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method
