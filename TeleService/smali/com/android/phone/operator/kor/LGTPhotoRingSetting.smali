.class public Lcom/android/phone/operator/kor/LGTPhotoRingSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "LGTPhotoRingSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPhotoringRejectAll:Landroid/preference/SwitchPreference;

.field private mPhotoringblockList:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->addPreferencesFromResource(I)V

    const-string v0, "lgu_photoring_block_all_pref"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    const-string v0, "photoring_block_list"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringblockList:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "photoring_reject_all"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringblockList:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "photoring_reject_all"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    if-lez v9, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v5, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringblockList:Landroid/preference/PreferenceScreen;

    if-lez v9, :cond_3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " (On)"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSetting;->mPhotoringblockList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    :try_start_1
    const-string v1, " (Off)"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v1, "LGTPhotoRingSetting"

    const-string v2, "onResume Resources NotFoundExcetion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
