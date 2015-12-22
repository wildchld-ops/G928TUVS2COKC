.class Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleAirWakeUpPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_wake_up"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->broadcastAirWakeupChanged(Z)V
    invoke-static {v0, p2}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;Z)V

    :goto_2
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
