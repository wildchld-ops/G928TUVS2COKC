.class Lcom/android/phone/CallFeaturesSetting$29;
.super Landroid/database/ContentObserver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$29;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$29;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$29;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$29;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->canEnablevolteVideoCall()Z
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$29;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mSwisSwysPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$4400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$29;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mSwisSwysPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$4400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$29;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->isMobileDataOn()Z
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$4500(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void
.end method
