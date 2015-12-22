.class Lcom/android/phone/CallFeaturesSetting$14;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.skt.prod.dialer"

    const-string v4, "com.skt.prod.dialer.activities.main.MainActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SET_TPHONE_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v3, v0}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v3, "support_ollehphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneEnabled(I)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateCallSettingsByCarrier(I)V
    invoke-static {v3, v5}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Lcom/android/phone/CallFeaturesSetting;I)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kt.ollehphone.CHANGE_MODE_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v3, v3, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
