.class public Lcom/android/settings/deviceinfo/legal/SamsungLegalInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SamsungLegalInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f070080

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/legal/SamsungLegalInfo;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TFN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "warranty"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    :cond_0
    const-string v2, "end_user_license_agreement"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/legal/SamsungLegalInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.setupwizard.EULA_NOTITLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
