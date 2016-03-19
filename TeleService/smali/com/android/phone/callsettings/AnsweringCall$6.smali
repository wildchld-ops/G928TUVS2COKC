.class Lcom/android/phone/callsettings/AnsweringCall$6;
.super Ljava/lang/Object;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AnsweringCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AnsweringCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    # getter for: Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/AnsweringCall;->access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    # getter for: Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/AnsweringCall;->access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control_incomming_calls"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    # getter for: Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/AnsweringCall;->access$100(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall$6;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    # getter for: Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/AnsweringCall;->access$100(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
