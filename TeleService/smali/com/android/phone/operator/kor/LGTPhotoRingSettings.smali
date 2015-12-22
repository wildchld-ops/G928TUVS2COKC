.class public Lcom/android/phone/operator/kor/LGTPhotoRingSettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "LGTPhotoRingSettings.java"


# instance fields
.field private mUserGuide:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingSettings;->addPreferencesFromResource(I)V

    const-string v0, "photoring_user_guide"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSettings;->mUserGuide:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingSettings;->mUserGuide:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.photoring.PhotoringAgreement"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingSettings;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
