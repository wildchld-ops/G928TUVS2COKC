.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private isTryMtpUsb30:Z

.field private isVZW:Z

.field private mMtp:Landroid/preference/TwoStatePreference;

.field private mMtpUsb3:Landroid/preference/TwoStatePreference;

.field private mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

.field private mNotSupprtMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

.field private mPtp:Landroid/preference/TwoStatePreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAccessoryMode:Z

.field private mUsbChargingOnly:Landroid/preference/TwoStatePreference;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field mUsbSettingsClickListener:Landroid/view/View$OnClickListener;

.field private final maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mNotSupprtMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isVZW:Z

    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbSettingsClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->onClickMtpUsb3DialogForVZW()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isVZW:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    :cond_1
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;

    sget-object v2, Lcom/android/settings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "usb_charging"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a13d7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0a13d8

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setForceRecycleLayout(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;

    sget-object v2, Lcom/android/settings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "usb_mtp"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a067b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0a067c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setForceRecycleLayout(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;

    sget-object v2, Lcom/android/settings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    const-string v4, "usb_ptp"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a067d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0a067e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setForceRecycleLayout(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;

    sget-object v2, Lcom/android/settings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    const-string v4, "usb_mtp_usb3"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a13d9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0a13da

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsPreference;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setForceRecycleLayout(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    const-string v0, "no_usb_file_transfer"

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isVZW:Z

    if-eqz v0, :cond_3

    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "UsbSettings"

    const-string v1, "createPreferenceHierarchy remove Charging only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-object v8
.end method

.method private onClickMtpUsb3DialogForVZW()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "mtp"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    const-string v2, "mtp"

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v2, "UsbSettings"

    const-string v3, "updateToggles : already airplane mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on_reason_usb3"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "UsbSettings"

    const-string v3, "updateToggles : airplane_mode_on_reason_usb3 is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerBroadCastRec()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v9, 0x0

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isVZW:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateTogglesForVZW(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "UsbSettings"

    const-string v3, "updateToggles takes  CHARGING ONLY Feature"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "askon"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "usb_charging enable"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    const-string v0, "no_usb_file_transfer"

    invoke-virtual {v8, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UsbSettings"

    const-string v1, "USB is locked down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :goto_2
    new-array v7, v2, [Ljava/lang/String;

    const-string v0, "false"

    aput-object v0, v7, v9

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v3, "isUsbMediaPlayerAvailable"

    invoke-static {v0, v1, v3, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    if-eq v6, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "usb_mtp enable"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "usb_ptp enable"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "All usb option disable"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_6

    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    const-string v0, "no_usb_file_transfer"

    invoke-virtual {v8, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "UsbSettings"

    const-string v1, "USB is locked down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_b

    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method private updateTogglesForVZW(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getMessageOfDialog()I
    .locals 3

    const v0, 0x7f0a12a5

    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0a12a6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const v0, 0x7f0a12a7

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v1, 0x7f0d000c

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0d001c

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0d0012

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->registerBroadCastRec()V

    return-void
.end method

.method public showMtpUsb3Dialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0df2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getMessageOfDialog()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a12a4

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbSettings$6;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/UsbSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/UsbSettings$5;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    return-void
.end method

.method public showNotSupportMtpUsb3Dialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0df2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a12a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a07c0

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mNotSupprtMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    return-void
.end method
