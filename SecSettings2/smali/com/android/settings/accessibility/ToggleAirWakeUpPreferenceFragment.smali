.class public Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleAirWakeUpPreferenceFragment.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->broadcastAirWakeupChanged(Z)V

    return-void
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 4

    const-string v1, "ToggleAirWakeUpPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastAirWakeupChanged-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_wake_up"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f04014f

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f1002ea

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method
