.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private dialog_content:Ljava/lang/String;

.field private final mIcObserver:Landroid/database/ContentObserver;

.field private final mMagnification:Landroid/database/ContentObserver;

.field private mShownDialogId:I

.field private option_flag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I

    new-instance v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mMagnification:Landroid/database/ContentObserver;

    return-void
.end method

.method private SetAirViewMasterValue(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private SetFingerAirViewMasterValue(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_information_preview"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->option_flag:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private isAirViewMasterValue()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isOneHandMasterValue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private setOneHandMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    iget v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_button_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_writing_buddy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->isAirViewMasterValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->SetAirViewMasterValue(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->isOneHandMasterValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->setOneHandMode(I)V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_magnifier"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    const-string v2, "com.samsung.android.universalswitch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->turnOnOffUniversalInput(Landroid/content/Context;Z)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->SetFingerAirViewMasterValue(I)V

    goto/16 :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-ne p1, v4, :cond_0

    iput v4, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a0922

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->dialog_content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a08b9

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$4;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_1
.end method
