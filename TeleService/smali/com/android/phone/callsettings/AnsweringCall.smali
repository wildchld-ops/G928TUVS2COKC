.class public Lcom/android/phone/callsettings/AnsweringCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private endPowerKeyEndChecked:Z

.field private fromSettingSearch:Z

.field private mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

.field private mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

.field private mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

.field private mFolderKey:Landroid/preference/CheckBoxPreference;

.field private mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

.field private mMeterialFolderKey:Landroid/preference/SwitchPreference;

.field private mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

.field private mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

.field private mVoiceCmdSwitched:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AnsweringCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private changeAirCallAccept(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AnsweringCall;->turnOnAirMotionEngine()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_call_accept"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->broadcastAirCallAcceptChanged(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_call_accept"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AnsweringCall;->broadcastAirCallAcceptChanged(Z)V

    goto :goto_0
.end method

.method private isAllAirMotionDisabled2014(Z)Z
    .locals 8
    .param p1    # Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_wake_up"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v7, "air_motion_scroll"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v7, "air_motion_turn"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    const-string v7, "air_motion_call_accept"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    :goto_0
    or-int v7, v2, v0

    or-int/2addr v7, v1

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_1

    :goto_1
    return v5

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "AnsweringCall"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private turnOnAirMotionEngine()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->isAllAirMotionDisabled2014(Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleVoiceCmd()V
    .locals 21

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "voice_input_control"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_1

    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.VOICE_SETTING_BARGEIN"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/callsettings/AnsweringCall;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v13, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "voice_input_control_incomming_calls"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    const/4 v15, 0x0

    :goto_2
    if-nez v8, :cond_2

    if-nez v13, :cond_2

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a02ce

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "voice_input_control_incomming_calls"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "com.android.phone"

    const-string v19, "ANEN"

    const-string v20, "CTRL"

    invoke-static/range {v17 .. v20}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "voice_input_dialog_show_never_again"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    goto :goto_1

    :cond_5
    const/4 v15, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v17, "layout_inflater"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v17, 0x7f0400be

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v17, 0x7f100060

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const-string v17, "ringtone_mute_gap"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const v17, 0x7f1001f2

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    new-instance v17, Lcom/android/phone/callsettings/AnsweringCall$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AnsweringCall$1;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_8
    :goto_5
    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0a02ca

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0a0090

    new-instance v19, Lcom/android/phone/callsettings/AnsweringCall$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/phone/callsettings/AnsweringCall$3;-><init>(Lcom/android/phone/callsettings/AnsweringCall;Landroid/widget/CheckBox;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0a008e

    new-instance v19, Lcom/android/phone/callsettings/AnsweringCall$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AnsweringCall$2;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v17, Lcom/android/phone/callsettings/AnsweringCall$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AnsweringCall$4;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v17, Lcom/android/phone/callsettings/AnsweringCall$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AnsweringCall$5;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v17, Lcom/android/phone/callsettings/AnsweringCall$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AnsweringCall$6;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_a
    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "com.android.phone"

    const-string v20, "CTRL"

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    const-string v17, "on"

    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v17, "off"

    goto :goto_6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const v7, 0x7f0a02c5

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f070003

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "meterial_anykey_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    const v5, 0x7f0a02c2

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    const-string v4, "meterial_voice_cmd_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    const v5, 0x7f0a02cb

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    const-string v4, "meterial_powerkey_end_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    invoke-virtual {v4, v7}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setTitleDescription(I)V

    const-string v4, "anykey_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    const-string v4, "voice_cmd_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    const-string v4, "powerkey_end_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {v4, v7}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setTitleDescription(I)V

    const-string v4, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    const-string v4, "folder_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    const-string v4, "meterial_folder_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mMeterialFolderKey:Landroid/preference/SwitchPreference;

    const-string v4, "callsettings_answering_accessibility_tapping"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    const-string v4, "gesture_callaccept_setting_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "gesture_callaccept_k_device"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "gesture_callaccept_setting_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    :cond_1
    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    :cond_2
    const-string v4, "voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    :cond_3
    const-string v4, "powerkey_end_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    :cond_4
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    :cond_5
    :goto_0
    const-string v4, "hw_home_key"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "meterial_anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v4, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "meterial_folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    :goto_1
    const-string v4, "barge_in"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const-string v4, "meterial_voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "FROM_ACCESSIBILITY"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v4, "callsettings_answering_accessibility_tapping"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    const-string v4, "callsettings_answering_accessibility_headtracking"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_b
    return-void

    :cond_c
    const-string v4, "meterial_anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    :cond_d
    const-string v4, "meterial_voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    :cond_e
    const-string v4, "meterial_powerkey_end_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    :cond_f
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "meterial_folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mMeterialFolderKey:Landroid/preference/SwitchPreference;

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    const v5, 0x7f0a02dc

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    const v5, 0x7f0a02dd

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setSummary(I)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "answering_accessibility_tapping"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "answering_call_in_external_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_4

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02d7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0090

    new-instance v5, Lcom/android/phone/callsettings/AnsweringCall$8;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AnsweringCall$8;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a008e

    new-instance v5, Lcom/android/phone/callsettings/AnsweringCall$7;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AnsweringCall$7;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "incall_power_button_behavior"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v4, :cond_c

    sget v4, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v4, v9, :cond_c

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "powerkey_end_preference"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v4, v7}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    iput-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "answering_accessibility_tapping"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-lez v3, :cond_10

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    sget-boolean v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v4, :cond_11

    sget v4, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v4, v9, :cond_11

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_11

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "anykey_mode_preference"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    :cond_2
    :goto_2
    sget-boolean v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v4, :cond_15

    sget v4, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v4, v9, :cond_15

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_15

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "voice_cmd_preference"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    :goto_3
    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    :goto_4
    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "feature_hktw"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getVoiceControlCallSettingsSummary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0a02d0

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0a02d1

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_7
    iget-boolean v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is called by SettingSearch"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    sput-boolean v6, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "voice_cmd_preference"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/callsettings/AnsweringCall;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_8
    :goto_5
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "answeringmode_folder_open"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1a

    move v1, v5

    :goto_6
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_9
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mMeterialFolderKey:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mMeterialFolderKey:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_a
    const-string v4, "gesture_callaccept"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_call_accept"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1b

    move v2, v5

    :goto_7
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_b
    return-void

    :cond_c
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v4, :cond_e

    if-ne v0, v8, :cond_d

    iput-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v4, v7}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_d
    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v4, v7}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    if-eqz v4, :cond_0

    if-ne v0, v8, :cond_f

    iput-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iget-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v4, v7}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_f
    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iget-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v4, v7}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_10
    move v4, v6

    goto/16 :goto_1

    :cond_11
    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_13

    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "anykey_mode"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_12

    move v4, v5

    :goto_8
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_12
    move v4, v6

    goto :goto_8

    :cond_13
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "anykey_mode"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_14

    move v4, v5

    :goto_9
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_14
    move v4, v6

    goto :goto_9

    :cond_15
    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    goto/16 :goto_3

    :cond_17
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_18
    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "anykey_mode_preference"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    sget-object v4, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "powerkey_end_preference"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_19
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/callsettings/AnsweringCall;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1a
    move v1, v6

    goto/16 :goto_6

    :cond_1b
    move v2, v6

    goto/16 :goto_7
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========== onSharedPreferenceChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v5, "anykey_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "meterial_anykey_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "anykey_mode"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.phone"

    const-string v7, "ANEN"

    const-string v8, "HOME"

    invoke-static {v5, v6, v7, v8}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v5, "folder_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "meterial_folder_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    move v1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "answeringmode_folder_open"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "com.android.phone"

    const-string v6, "ANEN"

    const-string v7, "ANOP"

    invoke-static {v3, v5, v6, v7}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "powerkey_end_preference"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    :cond_4
    const-string v3, "meterial_powerkey_end_preference"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    :cond_5
    const-string v3, "gesture_callaccept_setting_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AnsweringCall;->changeAirCallAccept(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.phone"

    const-string v6, "WAVE"

    if-eqz v2, :cond_b

    const-string v3, "on"

    :goto_3
    invoke-static {v4, v5, v6, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    move v0, v4

    goto/16 :goto_0

    :cond_8
    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.phone"

    const-string v8, "HOME"

    if-ne v0, v3, :cond_9

    const-string v5, "on"

    :goto_4
    invoke-static {v6, v7, v8, v5}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v5, "off"

    goto :goto_4

    :cond_a
    move v1, v4

    goto/16 :goto_2

    :cond_b
    const-string v3, "off"

    goto :goto_3
.end method

.method public updateVoiceCmdChecked()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_incomming_calls"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v2, v5, :cond_1

    if-ne v0, v5, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "CSET"

    invoke-static {v3, v4, v5}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "barge_in"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    return-void

    :cond_5
    if-ne v0, v5, :cond_2

    const/4 v1, 0x1

    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "CSET"

    invoke-static {v3, v4, v5}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
