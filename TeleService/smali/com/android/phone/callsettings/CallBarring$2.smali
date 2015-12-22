.class Lcom/android/phone/callsettings/CallBarring$2;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mIsVoLTE:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$000(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CallBarring"

    const-string v1, "Skip the password check."

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setCallBarring(I)V
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/CallBarring;->access$700(Lcom/android/phone/callsettings/CallBarring;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$100(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v2, 0x7f0a031d

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->access$200(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;Z)Z

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$500(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$600(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
