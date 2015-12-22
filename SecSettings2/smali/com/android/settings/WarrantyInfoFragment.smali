.class public Lcom/android/settings/WarrantyInfoFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WarrantyInfoFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0700b6

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/WarrantyInfoFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string v1, "general_terms"

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    const-string v1, "warranty_exceptions"

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Option"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "product_warranty"

    invoke-virtual {p0, v1}, Lcom/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Option"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
