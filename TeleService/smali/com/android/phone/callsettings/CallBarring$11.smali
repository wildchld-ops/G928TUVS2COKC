.class Lcom/android/phone/callsettings/CallBarring$11;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;Z)Z

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$500(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$1300(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setCallBarringState(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/CallBarring;->access$1500(Lcom/android/phone/callsettings/CallBarring;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$600(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$11;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$1300(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
