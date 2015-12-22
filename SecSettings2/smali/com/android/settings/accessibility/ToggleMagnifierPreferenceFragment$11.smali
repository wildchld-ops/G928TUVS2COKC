.class Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showFingerMagnifierDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assistant_menu"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.app.assistantmenu"

    const-string v6, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    :cond_1
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_writing_buddy"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->isAirViewMasterValue()Z
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$800(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->SetAirViewMasterValue(I)V
    invoke-static {v4, v7}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$900(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)V

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_magnifier"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getServiceTaskName(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v5, v5, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v1, v5, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_6
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V
    invoke-static {v4, v8}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->SetFingerAirViewMasterValue(I)V
    invoke-static {v4, v7}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$700(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)V

    goto/16 :goto_0
.end method
