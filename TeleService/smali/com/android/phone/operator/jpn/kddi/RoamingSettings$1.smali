.class Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;
.super Landroid/database/ContentObserver;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/kddi/RoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v1, "airplain_mode_jpn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$200(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$200(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$200(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->access$200(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
