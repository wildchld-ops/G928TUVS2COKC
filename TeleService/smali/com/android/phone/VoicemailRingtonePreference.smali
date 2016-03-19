.class public Lcom/android/phone/VoicemailRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "VoicemailRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "from"

    const-string v2, "call_setting"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-ne v1, v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    const/16 v2, 0x10

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    return-void
.end method
