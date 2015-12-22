.class Lcom/android/phone/KTHDVoiceSetting$1;
.super Ljava/lang/Object;
.source "KTHDVoiceSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTHDVoiceSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTHDVoiceSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/KTHDVoiceSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTHDVoiceSetting$1;->this$0:Lcom/android/phone/KTHDVoiceSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/KTHDVoiceSetting$1;->this$0:Lcom/android/phone/KTHDVoiceSetting;

    iget-object v1, p0, Lcom/android/phone/KTHDVoiceSetting$1;->this$0:Lcom/android/phone/KTHDVoiceSetting;

    invoke-virtual {v1}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/KTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method
