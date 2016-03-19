.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;
    }
.end annotation


# static fields
.field public static IsAdditionSetting:Z

.field public static mSimId:I


# instance fields
.field private final DBG:Z

.field private TtyValue:Ljava/lang/String;

.field builder:Landroid/app/AlertDialog$Builder;

.field private mApplyOptionSVC:Landroid/preference/PreferenceScreen;

.field private mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

.field private mAutoRedial:Landroid/preference/CheckBoxPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Lcom/android/phone/TtyListPreference;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCLIRSwitch:Landroid/preference/SwitchPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

.field private mCallBarring:Landroid/preference/PreferenceScreen;

.field private mCallForwarding:Landroid/preference/PreferenceScreen;

.field private mCallTypeSelect:Landroid/preference/PreferenceScreen;

.field private mChangeGuideLanguae:Landroid/preference/ListPreference;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFdnSetting:Landroid/preference/PreferenceScreen;

.field private mForeground:Z

.field private mInitIndex:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirplainModeObserverRegister:Z

.field private mMeterialButtonHAC:Landroid/preference/SwitchPreference;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStatus:I

.field private mSubaddress:Landroid/preference/CheckBoxPreference;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallBarring:Landroid/preference/PreferenceScreen;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput-boolean v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->DBG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$18;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$18;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mRegReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$19;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$19;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$20;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$20;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->switchAdditionalCallSettingsButtonsState(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleTTYChange(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TtyListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummary(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummaryForVolte(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->commitPrefixSettingForDCMDialer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private changeTtyButton(I)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a05be

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a05bf

    goto :goto_0
.end method

.method private checkAdditionalCallMenu()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "remove_additional_call_setting"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "button_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    :cond_0
    const-string v2, "button_autoredial_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    :cond_1
    const-string v2, "disable_auto_area_code"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "edittext_areacode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    :cond_2
    const-string v2, "menu_simplification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "button_autoredial_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    :cond_3
    const-string v2, "button_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    :cond_4
    const-string v2, "remove_additional_call_setting"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "meterial_button_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    :cond_5
    :goto_0
    const-string v2, "support_subaddress_settings"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "button_subaddress_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    :cond_6
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    const-string v2, "button_autoredial_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_7
    const-string v2, "gsm_voicecall_barring_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    const-string v2, "button_gsm_voicecall_forwarding"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    const-string v2, "button_voicemail_category_key_duos"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_a
    return-void

    :cond_b
    const-string v2, "meterial_button_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    goto :goto_0
.end method

.method private checkCallBarringMenu()V
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v4, :cond_0

    const-string v3, "remove_call_barring"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cdma_additional_setting_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "voicecall_barring_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    if-eq v1, v4, :cond_2

    const-string v3, "remove_call_barring"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cdma_additional_setting_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "video_call_not_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "common_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "feature_rwc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const-string v3, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v3, "voicecall_barring_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    :cond_5
    const-string v3, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method private checkCallForwardingMenu()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "remove_call_forwarding"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "global_network_cdma_gsm_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "video_call_not_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "common_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "feature_rwc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "feature_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "button_callType_select_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-nez v2, :cond_3

    const-string v3, "video_call_not_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "common_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "feature_rwc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "feature_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "button_gsm_voicecall_forwarding"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkCallerIDMenu()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "hide_caller_id"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "config_op_ui_call_setting_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "button_clir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private checkFdnMenu()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v7, "button_fdn_key"

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x2

    if-eq v1, v7, :cond_0

    const-string v7, "remove_fdn"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "cdma_additional_setting_enable"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "ro.product.model"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "SM-G900I"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "SM-P555"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "SM-T355Y"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isNZCSIM()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-string v7, "NZC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "XNZ"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const-string v7, "SM-G900F"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isNZCSIM()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "NZC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void

    :cond_6
    const-string v7, "feature_multisim_dsda"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v7, v9, :cond_8

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v6

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v5

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fdn setEnabled : SIM_STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    if-nez v5, :cond_1

    :cond_7
    if-eqz v0, :cond_1

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v6

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v5

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    if-eq v7, v9, :cond_a

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fdn setEnabled : getSimState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fdn setEnabled : getFDNavailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private checkSimStatusForDuos()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v0, v2, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimStatus(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSimStatusForDuos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimStatus(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    goto :goto_0
.end method

.method private commitPrefixSettingForDCMDialer(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "network_service_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "prefix_setting_code1"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "prefix_setting_name1"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "prefix_setting_code_index"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "prefix_setting_name_index"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private createDialogTty(I)V
    .locals 9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f0400bf

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f1001f3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->changeTtyButton(I)I

    move-result v7

    new-instance v8, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;

    invoke-direct {v8, p0, v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/widget/CheckBox;Landroid/content/Context;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;

    invoke-direct {v8, p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->shouldShowTtyTips(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummaryForVolte(I)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_tty_mode"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-string v0, "GsmUmtsAdditionalCallOptions"

    const-string v1, "getSharedPreferences "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSimId()I
    .locals 1

    sget v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    return v0
.end method

.method private handleTTYChange(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->createDialogTty(I)V

    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummary(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static neverShowTtyTipsAgain(Landroid/content/Context;)V
    .locals 3

    const-string v0, "GsmUmtsAdditionalCallOptions"

    const-string v1, "neverShowTtyTipsAgain "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "swipe_popup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MultiSIM] GsmUmtsmIsDualSimTurnedOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_4

    const-string v2, "DUAL SIM"

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "Bundle is not null"

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string v2, "CallSettingTab"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    :goto_0
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkSimStatusForDuos()V

    :cond_1
    const-string v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    return-void

    :cond_3
    const-string v2, "Bundle is null"

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    sput v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_0

    :cond_4
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sput v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_0

    :cond_5
    sput v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_0
.end method

.method private registerRegReceiver(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "com.movial.ipphone.IPUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "IMS_REGISTRATION"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mRegReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v3, "GsmUmtsAdditionalCallOptions"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method public static setPickContactsActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "GsmUmtsAdditionalCallOptions"

    const-string v1, "setPickContactsActivityResult"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shouldShowTtyTips(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "GsmUmtsAdditionalCallOptions"

    const-string v1, "shouldShowTtyTips "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "swipe_popup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private switchAdditionalCallSettingsButtonsState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFdnSetting.setEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method private updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    :goto_0
    const-string v0, "area_code_enabled"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v4, v3, :cond_0

    const-string v0, "area_code_sim2_enabled"

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoAreaCodeOnOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/TtyListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferredTtyModeSummaryForVolte(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    const v2, 0x7f0a05c1

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSummaryAutoAreaCode(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSummaryAutoAreaCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const-string v6, "%d"

    aput-object v6, v0, v5

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    const v4, 0x7f0a02f1

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const v5, 0x7f0a02f2

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    invoke-super/range {p0 .. p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onCreateMultiSIM()V

    const v17, 0x7f070020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    const-string v17, "button_clir_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/phone/CLIRListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const-string v17, "button_cw_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const-string v17, "meterial_button_cw_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    sget v17, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    const-string v17, "button_gsm_voicecall_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    const-string v17, "button_callType_select_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    const-string v17, "voicecall_barring_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    const-string v17, "button_fdn_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    :cond_1
    const-string v17, "edittext_areacode_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    const v18, 0x7f04007f

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setDialogLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    const-string v17, "button_autoredial_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    const-string v17, "button_subaddress_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v17, "remove_additional_call_setting"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const-string v17, "hide_caller_id"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "remove_additional_call_setting"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsForeground:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCanShowDialog:Z

    const-string v17, "support_uicc_mobility"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v17

    if-eqz v17, :cond_1b

    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "USIM is LGT SIM"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallForwardingMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallerIDMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkFdnMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallBarringMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkAdditionalCallMenu()V

    const-string v17, "button_hac_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    const-string v17, "meterial_button_hac_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    const-string v17, "button_tty_mode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/phone/TtyListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    const-string v17, "tty_to_default_wired_headset_plugged_out"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string v17, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    const-string v17, "config_op_ui_call_setting_kdi"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_34

    const-string v17, "switch_clir_key_kddi"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    const-string v17, "change_guide_language_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "%d"

    aput-object v18, v6, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "14190"

    aput-object v18, v5, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "14191"

    aput-object v18, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090086

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    invoke-static {v0, v6, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x1

    const/16 v18, 0x1

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    invoke-static {v0, v6, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    aput-object v18, v10, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v17, "apply_option_service_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "%s"

    aput-object v18, v7, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "KDDI"

    aput-object v18, v12, v17

    const v17, 0x7f0a075b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v7, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0006

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_37

    const-string v17, "hac_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_37

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_d

    const-string v17, "tty_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3b

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/TtyListPreference;->init(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/TtyListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    if-eqz v8, :cond_f

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_f
    const-string v17, "cdma_additional_setting_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    :cond_15
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "feature_ctc"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_17

    :cond_16
    if-eqz v15, :cond_17

    const-string v17, "button_voicemail_category_key_duos"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_17

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    new-instance v17, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    :cond_18
    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "Registering for air plane mode listener in on create"

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataEnabledObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    return-void

    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1b
    const-string v17, "disable_outgoing_callbarring_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v17

    if-eqz v17, :cond_21

    sget v17, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v17

    if-eqz v17, :cond_21

    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "USIM is CMCC SIM"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    const-string v17, "remove_additional_call_setting"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_2

    :cond_1c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const-string v17, "GsmUmtsAdditionalCallOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WFC: mCWSwitch, isWfcRegistered: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_1e
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_2

    :cond_1f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    const-string v17, "GsmUmtsAdditionalCallOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WFC: mCWButton, isWfcRegistered: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_21
    if-nez p1, :cond_27

    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "start to init "

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v17, "config_op_ui_call_setting_kdi"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "DO NOT init CLIR value and DO init CW value when KDDI"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_23

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    const-string v17, "GsmUmtsAdditionalCallOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WFC: mCWSwitch, isWfcRegistered: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_23
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    const-string v17, "GsmUmtsAdditionalCallOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WFC: mCWButton, isWfcRegistered: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_25
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_2

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_27
    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "restore stored states"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    const-string v17, "config_op_ui_call_setting_kdi"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2a

    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "Do not init CLIR value when KDDI"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_6
    const-string v17, "remove_additional_call_setting"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_28

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2e

    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_28
    :goto_7
    const-string v17, "config_op_ui_call_setting_kdi"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_29

    const-string v17, "disable_outgoing_callbarring_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_31

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v17

    if-eqz v17, :cond_31

    sget v17, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v17

    if-eqz v17, :cond_31

    :cond_29
    const-string v17, "GsmUmtsAdditionalCallOptions"

    const-string v18, "Do not get CLIR value."

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :cond_2a
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_6

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_6

    :cond_2c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2d

    const-string v17, "GsmUmtsAdditionalCallOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WFC: mCWSwitch, isWfcRegistered: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_7

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_7

    :cond_2e
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_7

    :cond_2f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_30

    const-string v17, "GsmUmtsAdditionalCallOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WFC: mCWButton, isWfcRegistered: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_7

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_7

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    if-eqz v9, :cond_32

    const-string v17, "GsmUmtsAdditionalCallOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreate:  clirArray[0]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v9, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", clirArray[1]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v9, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto/16 :goto_2

    :cond_32
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_2

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    :cond_34
    const-string v17, "removePreference : "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string v17, "switch_clir_key_kddi"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "removePreference  SWITCH_CLIR_KEY_KDDI: "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    :cond_35
    const-string v17, "change_guide_language_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "removePreference  CHANGE_GUIDE_LANGUAGE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    :cond_36
    const-string v17, "apply_option_service_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "removePreference  APPLY_OPTION_SVC: "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    goto/16 :goto_3

    :cond_37
    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_39

    if-eqz v15, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_38
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_4

    :cond_39
    if-eqz v15, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3a
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    goto/16 :goto_4

    :cond_3b
    if-eqz v15, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3c
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    const-string v0, "tty_to_default_wired_headset_plugged_out"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string v0, "GsmUmtsAdditionalCallOptions"

    const-string v1, "Unregister for air plane mode listener in"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsForeground:Z

    if-nez v3, :cond_0

    const-string v3, "GsmUmtsAdditionalCallOptions"

    const-string v4, "requesting discarded"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isRemoving()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v2, Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "com.movial.ipphone.IPPhoneProxy"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRegister"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    check-cast v2, Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v2, p0, v6}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "GsmUmtsAdditionalCallOptions"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v3}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v2, Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v2, p0, v6}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_2

    :cond_3
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v2, Lcom/android/phone/CallWaitingSwitchPreference;

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v2, p0, v6, v3}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_2

    :cond_4
    check-cast v2, Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v2, p0, v6}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_2

    :cond_5
    instance-of v3, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/movial/ipphone/IPPhoneProxy;->getRegister()Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v2, Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v2, p0, v6}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v3}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v2, Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v2, p0, v6}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_2

    :cond_7
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v2, Lcom/android/phone/CallWaitingCheckBoxPreference;

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v2, p0, v6, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_2

    :cond_8
    check-cast v2, Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v2, p0, v6}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "video_call_not_support"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    iput-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mForeground:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->registerRegReceiver(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v5, "HACSetting"

    if-eqz v1, :cond_2

    const-string v4, "ON"

    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v3

    :cond_2
    const-string v4, "OFF"

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button_clir_key put value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "button_clir_key"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_5

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    if-eq v8, v7, :cond_0

    iget-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget v7, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "autoredial_mode_sim2"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    const/4 v7, 0x1

    :goto_4
    return v7

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "autoredial_mode"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x1

    :goto_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hearing_aid"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v8, "HACSetting"

    if-eqz v5, :cond_7

    const-string v7, "ON"

    :goto_6
    invoke-virtual {v0, v8, v7}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    const-string v7, "OFF"

    goto :goto_6

    :cond_8
    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "subaddress_mode"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    :goto_7
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "button_callType_select_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    if-eq p2, v7, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "button_gsm_voicecall_forwarding"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    if-ne p2, v7, :cond_11

    :cond_a
    const-string v7, "volte_chn_callsetting_data_prompt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v7

    if-eqz v7, :cond_14

    sget v7, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_10

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07a7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0090

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$11;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$11;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a008e

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$10;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$10;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "subaddress_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_c
    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    if-ne p2, v7, :cond_d

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v7}, Lcom/android/phone/TtyListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_d
    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-ne p2, v7, :cond_9

    instance-of v7, p2, Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_e

    move-object v7, p2

    check-cast v7, Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    check-cast p2, Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;

    invoke-direct {v8, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    if-lez v6, :cond_f

    const/4 v7, 0x1

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v7, Lcom/android/phone/GsmUmtsAdditionalCallOptions$9;

    invoke-direct {v7, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$9;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_f
    const/4 v7, 0x0

    goto :goto_8

    :cond_10
    const-string v7, "volte_chn_callsetting_apn_prompt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDefaultApnName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDefaultApnName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0090

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$13;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$13;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a008e

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$12;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$12;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "voicecall_barring_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    if-eq p2, v7, :cond_12

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "gsm_voicecall_barring_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    if-ne p2, v7, :cond_14

    :cond_12
    const-string v7, "volte_chn_callsetting_data_prompt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v7

    if-eqz v7, :cond_14

    sget v7, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_13

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07a7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0090

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a008e

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_13
    const-string v7, "volte_chn_callsetting_apn_prompt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDefaultApnName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDefaultApnName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a07aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0090

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$17;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$17;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a008e

    new-instance v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions$16;

    invoke-direct {v9, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$16;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick - mCallTypeSelect SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string v3, "video_call_not_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "common_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "feature_rwc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v3, "CallSettingTab"

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick - mCallForwarding SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CallSettingTab"

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick - mCallBarring SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/CallTypeSelectForBarring;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CallSettingTab"

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick - mFdnSetting SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/FdnSetting;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CallSettingTab"

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mForeground:Z

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "video_call_not_support"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sput-boolean v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    :cond_0
    const-string v9, "onResume()"

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v9

    if-nez v9, :cond_f

    sput v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSimId : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v9, v10, :cond_12

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "area_code_sim2_value"

    invoke-static {v9, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "autoredial_mode_sim2"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_10

    move v9, v10

    :goto_1
    if-eq v12, v9, :cond_2

    iget-object v12, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "autoredial_mode_sim2"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_11

    move v9, v10

    :goto_2
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "hearing_aid"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_3

    iget-object v12, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_15

    move v9, v10

    :goto_4
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_4

    iget-object v12, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_16

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "preferred_tty_mode"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-direct {p0, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummaryForVolte(I)V

    :goto_6
    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v12, :cond_18

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getHasVzwVideoCall()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v12, :cond_18

    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v12, :cond_7

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_18

    :cond_7
    move v1, v10

    :goto_7
    const-string v9, "GsmUmtsAdditionalCallOptions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ttymode enable : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isOnVoLTEVideoCall = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", getHasVzwVideoCall = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getHasVzwVideoCall()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isConferenceCall(fgCall) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isConferenceCall(bgCall) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v9, v1}, Lcom/android/phone/TtyListPreference;->setEnabled(Z)V

    :cond_8
    const-string v9, "cdma_additional_setting_enable"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-direct {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    :cond_9
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_a

    iget-object v12, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "subaddress_mode"

    invoke-static {v9, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_19

    move v9, v10

    :goto_8
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v12, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v9, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->registerRegReceiver(Z)V

    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v12, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v9, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v9}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v9}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v9

    if-nez v9, :cond_1a

    move v9, v10

    :goto_9
    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->switchAdditionalCallSettingsButtonsState(Z)V

    :cond_c
    const-string v9, "disable_outgoing_callbarring_cmcc"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v9

    if-eqz v9, :cond_d

    sget v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "GsmUmtsAdditionalCallOptions"

    const-string v12, "USIM is CMCC SIM. Disable CLIR."

    invoke-static {v9, v12, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v9, v11}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const-string v12, ""

    invoke-virtual {v9, v12}, Lcom/android/phone/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "button_clir_key"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1b

    :goto_a
    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_e
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    return-void

    :cond_f
    sput v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto/16 :goto_0

    :cond_10
    move v9, v11

    goto/16 :goto_1

    :cond_11
    move v9, v11

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "area_code_value"

    invoke-static {v9, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "autoredial_mode"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_13

    move v9, v10

    :goto_b
    if-eq v12, v9, :cond_2

    iget-object v12, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "autoredial_mode"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_14

    move v9, v10

    :goto_c
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_13
    move v9, v11

    goto :goto_b

    :cond_14
    move v9, v11

    goto :goto_c

    :cond_15
    move v9, v11

    goto/16 :goto_4

    :cond_16
    move v9, v11

    goto/16 :goto_5

    :cond_17
    invoke-direct {p0, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummary(I)V

    goto/16 :goto_6

    :cond_18
    move v1, v11

    goto/16 :goto_7

    :cond_19
    move v9, v11

    goto/16 :goto_8

    :cond_1a
    move v9, v11

    goto/16 :goto_9

    :cond_1b
    move v10, v11

    goto :goto_a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStart()V

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    :cond_0
    return-void
.end method
