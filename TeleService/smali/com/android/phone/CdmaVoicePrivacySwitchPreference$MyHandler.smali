.class Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaVoicePrivacySwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaVoicePrivacySwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaVoicePrivacySwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaVoicePrivacySwitchPreference;Lcom/android/phone/CdmaVoicePrivacySwitchPreference$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/CdmaVoicePrivacySwitchPreference;
    .param p2    # Lcom/android/phone/CdmaVoicePrivacySwitchPreference$1;

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacySwitchPreference;)V

    return-void
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    iget-object v4, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private handleSetVPResponse(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

    iget-object v1, v1, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->handleGetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->handleSetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
