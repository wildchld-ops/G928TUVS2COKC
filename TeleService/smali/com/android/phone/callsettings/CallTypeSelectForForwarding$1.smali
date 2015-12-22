.class Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;
.super Landroid/database/ContentObserver;
.source "CallTypeSelectForForwarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CallTypeSelectForForwarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "CallTypeSelectForForwarding"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value of isAirplaneModeOn() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    # invokes: Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->isAirplaneModeOn()Z
    invoke-static {v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->access$000(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    # getter for: Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->access$100(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    # invokes: Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->isAirplaneModeOn()Z
    invoke-static {v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->access$000(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    # getter for: Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->access$200(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    # invokes: Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->isAirplaneModeOn()Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->access$000(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string v0, "support_psvt_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    # getter for: Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->access$200(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
