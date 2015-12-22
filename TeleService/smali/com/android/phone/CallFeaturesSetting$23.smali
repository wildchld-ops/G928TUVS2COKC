.class Lcom/android/phone/CallFeaturesSetting$23;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field final synthetic val$dialogCheckbox:Landroid/widget/Checkable;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/Checkable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$23;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$3500(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobiledataDialogShowNeverAgain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/CallFeaturesSetting;->access$3600(Lcom/android/phone/CallFeaturesSetting;Z)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->isAdvanceCallingOn()Z
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$3700(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v1, 0x322

    # invokes: Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V
    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->access$3800(Lcom/android/phone/CallFeaturesSetting;I)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->isSafeToTurnOnVolteVideoCall()Z
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$3900(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->onVoLTEVideoCallEnablePreferenceTreeClick(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;Z)V

    goto :goto_0
.end method
