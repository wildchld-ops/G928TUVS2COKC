.class public Lcom/android/phone/CallFeaturesSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;,
        Lcom/android/phone/CallFeaturesSetting$CallFeaturesSettingPhoneStateListener;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static mAddVoicemailFromDialer:Z

.field private static mIsDuos:Z

.field private static mSimSlot:I

.field private static stillFromSearch:I


# instance fields
.field private FAIL_OPTION_STRING:[I

.field private fromSettingSearch:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAnswerEndCall:Landroid/preference/PreferenceScreen;

.field private mAnswerMemoKey:Landroid/preference/Preference;

.field private mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoAnswer:Landroid/preference/SwitchPreference;

.field private mAutomaticaccept:Landroid/preference/CheckBoxPreference;

.field private mBoolCheckBroadcast:Z

.field private mButtonAdditionalSettings:Landroid/preference/Preference;

.field private mButtonAutoRetry:Landroid/preference/SwitchPreference;

.field private mButtonDDTM:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonIpCall:Landroid/preference/Preference;

.field private mButtonPopupWindow:Landroid/preference/PreferenceScreen;

.field private mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCMCCFailOption:I

.field private mCallFailOption:Landroid/preference/CheckBoxPreference;

.field private mCallForwarding:Landroid/preference/PreferenceScreen;

.field mCallHandler:Landroid/os/Handler;

.field private mCallTypePreference:Landroid/preference/ListPreference;

.field private mCallerID:Landroid/preference/CheckBoxPreference;

.field private mCallerInfoCard:Landroid/preference/CheckBoxPreference;

.field private mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactWithPhone:Landroid/preference/SwitchPreference;

.field private mCountryCodePref:Landroid/preference/EditTextPreference;

.field private mCountryPref:Landroid/preference/CheckBoxPreference;

.field private mCurrentDialogId:I

.field private mCurrentyCountry:Landroid/preference/PreferenceScreen;

.field private mDDTMHandler:Landroid/os/Handler;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDeletePrefixSwitch:Landroid/preference/SwitchPreference;

.field private mDropdownDTMF:Lcom/android/phone/DropDownPreference;

.field private mESurfingDialUp:Landroid/preference/CheckBoxPreference;

.field private mESurfingDialUpHelp:Landroid/preference/PreferenceScreen;

.field private mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

.field private mEntrySettings:Landroid/preference/PreferenceScreen;

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

.field private mFailoption_cmcc:Landroid/preference/PreferenceScreen;

.field private mFolderReceive:Landroid/preference/ListPreference;

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

.field private mHeaderSettings:Landroid/preference/PreferenceScreen;

.field private mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private final mImsUtHandler:Landroid/os/Handler;

.field private mImsUtdialog:Landroid/app/ProgressDialog;

.field private mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

.field private mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

.field private mIsDualSimTurnedOn:Z

.field private mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

.field private mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

.field private mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

.field private mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

.field private mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

.field private mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

.field private mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

.field private mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

.field private mNaturalSound:Landroid/preference/CheckBoxPreference;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field private mOldVmNumber:Ljava/lang/String;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mOneLineGreetingPreference:Landroid/preference/ListPreference;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneAppMode:Landroid/preference/ListPreference;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/CallFeaturesSetting$CallFeaturesSettingPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

.field private mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

.field private mPresetImage:Landroid/preference/PreferenceScreen;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mProximitySensor:Landroid/preference/CheckBoxPreference;

.field private mRcsCallSettings:Landroid/preference/PreferenceScreen;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mSKTHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mSecondScreenCall:Landroid/preference/CheckBoxPreference;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mShowMeForVideo:Landroid/preference/CheckBoxPreference;

.field private mSimStatus:I

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mSlot1IsOn:Z

.field private mSlot2IsOn:Z

.field private mSpamCall:Landroid/preference/PreferenceScreen;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSwipeCallMessage:Landroid/preference/SwitchPreference;

.field private mSwisSwysPreference:Landroid/preference/PreferenceScreen;

.field private mSyncCallSettings:Landroid/preference/PreferenceScreen;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

.field private mVideocallMode:Landroid/preference/CheckBoxPreference;

.field private mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

.field private mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

.field private mVisualCallSettings:Landroid/preference/PreferenceScreen;

.field private mVisualVoicemailSettings:Landroid/preference/PreferenceScreen;

.field private mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

.field private mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

.field private mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailDuos:Landroid/preference/PreferenceScreen;

.field private mVoicemailNotificationSound:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field protected mVoicemailSettings:Landroid/preference/PreferenceScreen;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

.field private mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

.field private mWifiCall:Landroid/preference/CheckBoxPreference;

.field private mWifiCallCategory:Landroid/preference/PreferenceGroup;

.field private mWifiCallPreference:Landroid/preference/PreferenceScreen;

.field private mWifiCallSwitchPreference:Landroid/preference/Preference;

.field private proximityChecked:Z

.field private wifiCallState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/phone/CallFeaturesSetting;->mIsDuos:Z

    sput-boolean v2, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    sput v2, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    sput v2, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->FAIL_OPTION_STRING:[I

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mBoolCheckBroadcast:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->wifiCallState:I

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSlot1IsOn:Z

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSlot2IsOn:Z

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListeners:Ljava/util/Map;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$16;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$16;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$17;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$17;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$18;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$18;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$29;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallFeaturesSetting$29;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$30;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$30;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$31;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$31;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$32;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$32;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$39;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$39;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/CallFeaturesSetting$43;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$43;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x7f0a03fa
        0x7f0a03f9
        0x7f0a03f8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CallFeaturesSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updateCallSettingsByCarrier(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$200()[I
    .locals 1

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/CallFeaturesSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesSetting;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/phone/CallFeaturesSetting;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCMCCFailOption:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/CallFeaturesSetting;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCMCCFailOption:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateFailOptionCmccSummary()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/phone/CallFeaturesSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAdvanceCallingOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/phone/CallFeaturesSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isSafeToTurnOnVolteVideoCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updatePersonalizeSoundNoiseReductionAndIncoimgPopup(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/phone/CallFeaturesSetting;ILandroid/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallFeaturesSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSwisSwysPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isMobileDataOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getDDTMData()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/phone/CallFeaturesSetting;)Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVolteEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateNaturalSound()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/phone/CallFeaturesSetting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->goAdditionalCallOptions()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isWFCRegistered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/phone/CallFeaturesSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updatePersonalizeSoundNoiseReduction(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateWiFiCallPreference()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->canEnablevolteVideoCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallForwarding:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/phone/CallFeaturesSetting;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->startImsUtMobileConnection()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/phone/CallFeaturesSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->putAutoAnswerSetting(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateAutoAnswer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallFeaturesSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->onVoLTEVideoCallEnablePreferenceTreeClick(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    return p1
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const-string v3, "CallFeaturesSetting"

    const-string v4, "appInstalledOrNot"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v0, 0x1

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try block:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value returned :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch block :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private canEnablevolteVideoCall()Z
    .locals 4

    const/4 v2, 0x0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v1, :cond_0

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isMobileDataOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAdvanceCallingOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isSafeToTurnOnVolteVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "canEnablevolteVideoCall returning : false"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private confirmSelectionDialog(Z)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aValue: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a067b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a068f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$45;

    invoke-direct {v3, p0}, Lcom/android/phone/CallFeaturesSetting$45;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$46;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/CallFeaturesSetting$46;-><init>(Lcom/android/phone/CallFeaturesSetting;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private containsSubId(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private createSipCallSettings()V
    .locals 4

    const-string v1, "disable_sip_call_setting"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipUtil;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSipCallSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disable_sip_call_setting"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipManager:Landroid/net/sip/SipManager;

    new-instance v1, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting settings for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getDDTMData()V
    .locals 9

    const/16 v8, 0x16

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x4

    const/16 v5, 0x51

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const/4 v4, 0x1

    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDDTMData exception occured during operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v2, v1

    goto :goto_0
.end method

.method public static getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getVoiceCallTypeValue(Landroid/content/ContentResolver;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    const-string v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v4, "voicecall_type"

    invoke-static {p0, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private goAdditionalCallOptions()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10

    const/16 v8, 0x25a

    const/4 v9, 0x0

    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleForwardingSettingsReadResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    const-string v6, "CallFeaturesSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: userObj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_2

    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring fwd reading result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_3

    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error discovered for fwd read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    array-length v5, v0

    if-nez v5, :cond_4

    const-string v5, "handleGetCFMessage: Error getting CF state, unexpected value."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    aget-object v3, v0, v4

    :cond_5
    if-nez v3, :cond_9

    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating default info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    sget-object v5, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    const/4 v1, 0x0

    :cond_6
    if-eqz v1, :cond_d

    const-string v5, "CallFeaturesSetting"

    const-string v6, "Done receiving fwd info"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    iget-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_7

    const-string v5, ""

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    :cond_b
    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    const-string v5, "CallFeaturesSetting"

    const-string v6, "Not done receiving fwd info"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "handleSetVMMessage: set VM request complete"

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, ""

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "change VM success!"

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMAndFwdSetSuccess(I)V

    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change fowarding setting. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    :cond_3
    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change voicemail. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleTTYChange(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

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

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

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
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVMAndFwdSetSuccess(). current voicemail provider key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    move-object v4, v2

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initDropdownDTMF()V
    .locals 10

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v7}, Lcom/android/phone/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    aget-object v8, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    new-instance v8, Lcom/android/phone/CallFeaturesSetting$44;

    invoke-direct {v8, p0}, Lcom/android/phone/CallFeaturesSetting$44;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v7, v8}, Lcom/android/phone/DropDownPreference;->setCallback(Lcom/android/phone/DropDownPreference$Callback;)V

    :cond_1
    return-void
.end method

.method private initVoiceMailProviders()V
    .locals 23

    const-string v19, "initVoiceMailProviders()"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "vm_numbers"

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "ACTION_ADD_VOICEMAIL"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found ACTION_ADD_VOICEMAIL. providerToIgnore="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const v19, 0x1040004

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v11

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, ""

    new-instance v21, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v11, v2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, 0x1

    const/4 v7, 0x0

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_4

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring key: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    add-int/lit8 v10, v10, -0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const v19, 0x7f0a00fc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Loading key: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Store loaded VoiceMailProvider. key: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", intent: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v14}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    new-array v5, v10, [Ljava/lang/String;

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v5, v19

    const/16 v19, 0x0

    const-string v20, ""

    aput-object v20, v18, v19

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v5, v6

    aput-object v9, v18, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Set up the first mPreviousVMProviderKey: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CallFeaturesSetting"

    const-string v2, "mServiceMessenger is null. Do nothing."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isAdvanceCallingOn()Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMobileDataOn()Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private isMobileImsUtConnected()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    :goto_0
    return v4

    :cond_0
    const/16 v5, 0x1b

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    :cond_1
    :goto_1
    const-string v4, "CallFeaturesSetting"

    const-string v5, "isMobileImsUtConnected false"

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private isSafeToTurnOnVolteVideoCall()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :goto_0
    const-string v5, "ril.ims.ltevoicesupport"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_1

    if-ne v0, v3, :cond_1

    :goto_1
    return v3

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isWFCRegistered()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.oem.smartwifisupport.vowifi_pref_registration_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isWifiCallingPackageLoaded(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.tmowfc.wfcpref/com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .locals 12

    const/4 v5, 0x0

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_0
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_1
    new-instance v5, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 9

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maybeSaveSettingsForVoicemailProvider: Not saving setting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " since they have not changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saving settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x0

    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v2, v5, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    if-ne v5, v3, :cond_2

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-interface {p0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "button_voicemail_notification_vibrate_when_key"

    const-string v5, "never"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "always"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v3

    :cond_0
    const-string v5, "button_voicemail_notification_vibrate_key_sim2"

    invoke-interface {p0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "button_voicemail_notification_vibrate_when_key_sim2"

    const-string v5, "never"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "always"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "button_voicemail_notification_vibrate_key_sim2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "button_meterial_voicemail_notification_vibrate_key"

    invoke-interface {p0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v4, "button_voicemail_notification_vibrate_when_key"

    const-string v5, "never"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "always"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "button_meterial_voicemail_notification_vibrate_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    const-string v5, "button_voicemail_notification_vibrate_key"

    invoke-interface {p0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v4, "button_voicemail_notification_vibrate_when_key"

    const-string v5, "never"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "always"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private noVolteCallActive()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCreateMultiSIM()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSlot1IsOn:Z

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSlot2IsOn:Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v3, :cond_4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MultiSIM] onCreate :: mIsDualSimTurnedOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MultiSIM] onCreate :: mSimSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    sget v1, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sput v3, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    if-nez v1, :cond_1

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sput v3, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    :goto_1
    sget v1, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAddVoicemailFromDialer : true. mSimSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    :cond_3
    return-void

    :cond_4
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sput v3, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    goto/16 :goto_0

    :cond_5
    sput v4, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    if-ne v1, v3, :cond_7

    sput v3, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    goto :goto_1

    :cond_7
    sput v4, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    goto :goto_1
.end method

.method private onPopupIncomingCallPreferenceTreeClick()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "popup_incoming_call"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gsm_popup_incoming_call"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "popup_incoming_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gsm_popup_incoming_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private onProximitySensorPreferenceTreeClick()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0090

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$11;

    invoke-direct {v3, p0}, Lcom/android/phone/CallFeaturesSetting$11;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008e

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$10;

    invoke-direct {v3, p0}, Lcom/android/phone/CallFeaturesSetting$10;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$9;

    invoke-direct {v2, p0}, Lcom/android/phone/CallFeaturesSetting$9;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "proximity_sensor"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "proximity_sensor"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private onRevertDone()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flipping provider key back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    :cond_0
    return-void
.end method

.method private onVoLTEVideoCallEnablePreferenceTreeClick(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volteVTSettingShowNeverAgain"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x320

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallDisable()V

    goto :goto_0
.end method

.method private phoneIsCdma()Z
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_3

    move v1, v3

    :cond_0
    :goto_0
    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v4

    if-eq v4, v3, :cond_1

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return v1

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v6, :cond_5

    move v1, v3

    :goto_1
    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "CallFeaturesSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone.getActivePhoneType() failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private putAutoAnswerSetting(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "automatic_answering_enable_sharedpref"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerRegReceiver(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WFC registerRegReceiver(), register = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mBoolCheckBroadcast:Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v3, "CallFeaturesSetting"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mBoolCheckBroadcast:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mBoolCheckBroadcast:Z

    goto :goto_1
.end method

.method private removePhoneStateListeners()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeSoundEQMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_soundsetting_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 6

    const/16 v4, 0x2bc

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    :cond_0
    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newFwdNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " settings"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const-string v1, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    iput v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    const-string v1, "Reading current forwarding settings"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    const/4 v0, 0x0

    const/4 v9, 0x0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/CallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    goto :goto_1

    :cond_2
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    :goto_2
    return-void

    :cond_3
    const-string v0, "Not touching fwd #"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private setBeforePhoneMode(I)V
    .locals 1

    const-string v0, "default_phone_mode"

    invoke-static {v0, p1}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method private setDDTMData(B)V
    .locals 10

    const/16 v9, 0x17

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x5

    const/16 v6, 0x51

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallFeaturesSetting;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getDDTMData()V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v2

    const/4 v4, 0x1

    const-string v6, "CallFeaturesSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDDTMData exception occured during operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private setESurfingDialUp(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setYIDialling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yi_dialling"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mESurfingDialUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yi_dialling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setImsUtDialogFinishTimer()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private setNaturalSound(Z)V
    .locals 3

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNaturalSound value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setNoiseReduction(Z)V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtilsCommon;->noiseReductionBroadcast(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setVMNumberWithCarrier()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private setVolteEnabled()Z
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetVolteEnabled Enter with flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetVolteEnabled Exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "SetVolteEnabled mImsInterfaceGeneral is NULL"

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDataEnableDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a040d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a040a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$42;

    invoke-direct {v3, p0}, Lcom/android/phone/CallFeaturesSetting$42;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$41;

    invoke-direct {v3, p0}, Lcom/android/phone/CallFeaturesSetting$41;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$40;

    invoke-direct {v2, p0}, Lcom/android/phone/CallFeaturesSetting$40;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private startImsUtMobileConnection()I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x3

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "enableIMSUT"

    invoke-virtual {v1, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0473

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->goAdditionalCallOptions()V

    const-string v3, "CallFeaturesSetting"

    const-string v4, "startUsingNetworkFeature fail new"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connection exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->goAdditionalCallOptions()V

    goto :goto_1

    :pswitch_1
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0a00e7

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0a00ea

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setImsUtDialogFinishTimer()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    const/4 v12, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Needs to rollback. mVMChangeCompletedSuccessfully="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFwdChangesRequireRollback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" becomes null, which is unexpected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMChangeCompletedSuccessfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFwdChangesRequireRollback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v9, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_2
    if-eqz v9, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    const-string v0, "CallFeaturesSetting"

    const-string v1, "Requested to rollback Fwd changes."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v8, :cond_6

    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    const/4 v7, 0x0

    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_6

    aget-object v6, v8, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    if-eqz v10, :cond_3

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v1, v12

    goto :goto_1

    :cond_5
    const-string v0, "No need to revert"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    :cond_6
    return-void
.end method

.method private toggleVolteSetting()V
    .locals 0

    return-void
.end method

.method private updateAutoAnswer()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "updateAutoAnswer"

    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_answering_enable_sharedpref"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoAnsweringInit : isOn - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateCallForwardingEnablePreference()V
    .locals 0

    return-void
.end method

.method private updateCallSettingsByCarrier(I)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "CallFeaturesSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCallSettingsByCarrier :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-lez p1, :cond_6

    move v2, v6

    :goto_0
    const-string v8, "button_call_rejection_key"

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v2, :cond_7

    move v8, v6

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_8

    move v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_9

    move v8, v6

    :goto_3
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_a

    move v8, v6

    :goto_4
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    const-string v8, "call_overlay_popup_preference"

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v2, :cond_b

    move v8, v6

    :goto_5
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v8, :cond_c

    move v1, v6

    :goto_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v3

    const-string v8, "CallFeaturesSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Phone isCalling : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isRoaming :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    if-eqz v8, :cond_5

    const-string v8, "support_safetycare"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_4
    :goto_7
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :cond_6
    move v2, v7

    goto/16 :goto_0

    :cond_7
    move v8, v7

    goto/16 :goto_1

    :cond_8
    move v8, v7

    goto/16 :goto_2

    :cond_9
    move v8, v7

    goto/16 :goto_3

    :cond_a
    move v8, v7

    goto :goto_4

    :cond_b
    move v8, v7

    goto :goto_5

    :cond_c
    move v1, v7

    goto :goto_6

    :cond_d
    const-string v8, "support_tphone"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    if-nez v1, :cond_e

    :goto_8
    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_7

    :cond_e
    move v6, v7

    goto :goto_8

    :cond_f
    const-string v8, "support_ollehphone"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    if-nez v1, :cond_10

    if-nez v3, :cond_10

    :goto_9
    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_7

    :cond_10
    move v6, v7

    goto :goto_9
.end method

.method private updateCurrentCountrysummary()V
    .locals 0

    return-void
.end method

.method private updateEtcPreference()V
    .locals 26

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->updateInCallOverlayPopup()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "dtmf_tone_type"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "dtmf_tone_type"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    move-object/from16 v22, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/phone/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "answeringmode_folder_open"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "call_auto_retry"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v4, :cond_2c

    const/16 v22, 0x1

    :goto_0
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_2d

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2d

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_2d

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "button_hac_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSwisSwysPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSwisSwysPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->isMobileDataOn()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "preferred_tty_mode"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallFeaturesSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_32

    const-string v22, "feature_multisim"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_30

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_30

    const-string v22, "menu_simplification"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const-string v23, "button_meterial_voicemail_notification_vibrate_key_sim2"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->lookupRingtoneName()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "own_video_receivedcall"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_37

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_38

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_38

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_38

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "failoption_preference"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "emotional_eye_contact"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_3a

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "country_code"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getDDTMData()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->updateFailOptionCmccSummary()V

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->registerRegReceiver(Z)V

    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v22

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v8, 0x0

    const-string v22, "feature_lgt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    const-string v22, "feature_ktt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3b

    :cond_f
    const/4 v12, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESettingEnabled()Z

    move-result v12

    :cond_10
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isVolteSupported = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move v8, v12

    const-string v22, "feature_ktt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v22

    if-nez v22, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "voicecall_type"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_11
    const/4 v8, 0x1

    :cond_12
    :goto_6
    const-string v22, "feature_skt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_13

    const-string v22, "feature_jpn"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_13
    const-string v22, "feature_ktt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    :cond_14
    const/4 v8, 0x0

    :cond_15
    const-string v22, "feature_lgt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_16

    const-string v22, "feature_skt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_16

    const-string v22, "feature_kor_open"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_17

    :cond_16
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v22

    if-eqz v22, :cond_17

    const/4 v8, 0x0

    :cond_17
    const-string v22, "feature_dcm"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "feature_sbm"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_19

    :cond_18
    const/4 v8, 0x1

    :cond_19
    if-eqz v8, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_1a
    :goto_7
    const-string v22, "ims_call_message"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const-string v22, "feature_skt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1b
    :goto_8
    const-string v22, "support_oneline_greeting"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "oneline_greeting"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "KT oneline_greeting : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mOneLineGreetingPreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mOneLineGreetingPreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1c
    const-string v22, "hd_voice_network_prefer"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1d

    const-string v22, "menu_simplification"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "kt_hd_voice_abnormal_case"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "HD_VOICE_NETWORK_PREFER : abnormal = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d

    const-string v22, "support_uicc_mobility"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v22

    if-eqz v22, :cond_44

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1d
    :goto_a
    const-string v22, "feature_ktt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v22, "button_kt_additional_service"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_48

    const/4 v11, 0x1

    :goto_b
    const-string v22, "CallFeaturesSetting"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "kt_add_svc isCalling :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_1e

    if-nez v11, :cond_49

    const/16 v22, 0x1

    :goto_c
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1e
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v22

    if-eqz v22, :cond_21

    const-string v22, "vzw_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_21

    const-string v22, "att_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_21

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isIdleSecIms()Z

    move-result v22

    if-nez v22, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_d
    const-string v22, "tmo_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1f

    const-string v22, "mpcs_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1f

    const-string v22, "canada_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_20

    :cond_1f
    const-string v22, "check VoLTE call to enable/disable additional setting"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v22

    if-nez v22, :cond_4b

    const/16 v22, 0x1

    :goto_e
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_20
    const-string v22, "feature_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4c

    const/4 v11, 0x1

    :goto_f
    const-string v22, "CallFeaturesSetting"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "additionalSettings isCalling :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-nez v11, :cond_4d

    const/16 v22, 0x1

    :goto_10
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_21
    const-string v22, "support_mobilecarrier"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_23

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneEnabled()Z

    move-result v22

    if-eqz v22, :cond_4e

    const/4 v15, 0x1

    :goto_11
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Phone app mode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/CallFeaturesSetting;->setBeforePhoneMode(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/CallFeaturesSetting;->updateCallSettingsByCarrier(I)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_24

    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_4f

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4f

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_4f

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "toggle_internationalcall"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_24
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_25

    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_51

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_51

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_51

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "voicecall_protection_preference"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_25
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_26

    const-string v22, "menu_simplification"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_26

    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_53

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_53

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_53

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "meterial_voicecall_protection_preference"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_26
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_27

    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_55

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_55

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_55

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "volte_noti_preference"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_27
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_29

    const-string v22, "support_safetycare"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_28

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v22

    if-eqz v22, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_28
    :goto_16
    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_58

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_58

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_58

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "caller_info_card_preference_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_29
    :goto_17
    const-string v22, "menu_simplification"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2b

    const-string v22, "support_safetycare"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2a

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v22

    if-eqz v22, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2a
    :goto_18
    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_5a

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5a

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_5a

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "material_caller_info_card_preference_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_2b
    :goto_19
    return-void

    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "hearing_aid"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v10, :cond_2e

    const/16 v22, 0x1

    :goto_1a
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2e
    const/16 v22, 0x0

    goto :goto_1a

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v23, "button_voicemail_notification_vibrate_key_sim2"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_30
    const-string v22, "menu_simplification"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const-string v23, "button_meterial_voicemail_notification_vibrate_key"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v23, "button_voicemail_notification_vibrate_key"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_32
    sget-boolean v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v22, :cond_34

    sget v22, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_34

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v22, :cond_34

    sget-object v22, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v23, "button_voicemail_notification_vibrate_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_34

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v22, "button_voicemail_notification_vibrate_key"

    sget-boolean v23, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v23, "button_voicemail_notification_vibrate_key"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_33
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    goto/16 :goto_2

    :cond_34
    const-string v22, "remove_voicemail_category"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "feature_multisim_dsda_cdma_gsm"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "feature_multisim"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "menu_usa_mess"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-nez v22, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    :cond_35
    const-string v22, "menu_simplification"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const-string v23, "button_meterial_voicemail_notification_vibrate_key"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v23, "button_voicemail_notification_vibrate_key"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_37
    const/16 v22, 0x0

    goto/16 :goto_3

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "usecall_fail_option"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_39

    const/16 v22, 0x1

    :goto_1b
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_39
    const/16 v22, 0x0

    goto :goto_1b

    :cond_3a
    const/16 v22, 0x0

    goto/16 :goto_5

    :cond_3b
    const-string v22, "feature_skt"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3e

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v22

    if-eqz v22, :cond_3c

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESettingEnabled()Z

    move-result v21

    :cond_3c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "volteServiceStatus = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const-string v22, "support_uicc_mobility"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v22

    if-eqz v22, :cond_3d

    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_3d
    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_3e
    const-string v22, "tmo_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3f

    const-string v22, "mpcs_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_41

    :cond_3f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v22

    if-nez v22, :cond_40

    const/4 v8, 0x1

    :goto_1c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "enableVolteMenu = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_40
    const/4 v8, 0x0

    goto :goto_1c

    :cond_41
    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_44
    const/16 v22, 0x1

    goto/16 :goto_9

    :cond_45
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTestSIM()Z

    move-result v22

    if-eqz v22, :cond_46

    const-string v22, "Test USIM is inserted : Skip checking abnormal state"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    if-lez v3, :cond_47

    const/16 v22, 0x0

    :goto_1d
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_47
    const/16 v22, 0x1

    goto :goto_1d

    :cond_48
    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_49
    const/16 v22, 0x0

    goto/16 :goto_c

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_d

    :cond_4b
    const/16 v22, 0x0

    goto/16 :goto_e

    :cond_4c
    const/4 v11, 0x0

    goto/16 :goto_f

    :cond_4d
    const/16 v22, 0x0

    goto/16 :goto_10

    :cond_4e
    const/4 v15, 0x0

    goto/16 :goto_11

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "internationalcall_settings"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_50

    const/16 v22, 0x0

    :goto_1e
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_12

    :cond_50
    const/16 v22, 0x1

    goto :goto_1e

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "enable_call_protect_when_calling"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_52

    const/16 v22, 0x0

    :goto_1f
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_13

    :cond_52
    const/16 v22, 0x1

    goto :goto_1f

    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "enable_call_protect_when_calling"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_54

    const/16 v22, 0x0

    :goto_20
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_14

    :cond_54
    const/16 v22, 0x1

    goto :goto_20

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "volte_noti_settings"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_56

    const/16 v22, 0x0

    :goto_21
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_15

    :cond_56
    const/16 v22, 0x1

    goto :goto_21

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_16

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_17

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_18

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_19
.end method

.method private updateExtraRingerPreference()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v4, "extra_ringtone_preference"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "extra_ringer"

    const-string v1, "extra_ringer_default_on"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-lez v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private updateFailOptionCmccSummary()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usecall_fail_option"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->FAIL_OPTION_STRING:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateImsVideoCallPreference()V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    if-eq v0, v6, :cond_6

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "meterial_auto_divert_to_voice_call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_0
    :goto_0
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_11

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    if-eq v0, v6, :cond_11

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "meterial_video_call_quality_info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_2
    :goto_1
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_16

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    if-eq v0, v6, :cond_16

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "meterial_video_call_speaker"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "videocall_settings"

    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v2

    :goto_3
    if-ne v0, v2, :cond_9

    move v0, v1

    :goto_4
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    if-eq v0, v6, :cond_c

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "auto_divert_to_voice_call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "videocall_settings"

    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v0, v2

    :goto_6
    if-ne v0, v2, :cond_f

    move v0, v1

    :goto_7
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_6

    :cond_f
    move v0, v2

    goto :goto_7

    :cond_10
    move v0, v2

    goto :goto_8

    :cond_11
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "videocallmessage_settings"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_12
    move v0, v2

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_14

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    if-eq v0, v6, :cond_14

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "video_call_quality_info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    goto/16 :goto_1

    :cond_14
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "videocallmessage_settings"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_15
    move v0, v2

    goto :goto_a

    :cond_16
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videocall_speaker"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17

    :goto_b
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_17
    move v1, v2

    goto :goto_b

    :cond_18
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_19

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    if-eq v0, v6, :cond_19

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "video_call_speaker"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    goto/16 :goto_2

    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videocall_speaker"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1a

    :goto_c
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_1a
    move v1, v2

    goto :goto_c
.end method

.method private updateInCallOverlayPopup()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string v6, "call_overlay_popup_preference"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v6, :cond_2

    move v1, v4

    :goto_0
    const-string v6, "CallFeaturesSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInCallOverlayPopup : isCalling"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private updateInternationalCallServicePreference()V
    .locals 8

    const/4 v7, -0x1

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eq v1, v7, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_value"

    const-string v7, "002"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0a0613

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v4, :cond_4

    const v5, 0x7f0a0611

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v5, "%d"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-lez v4, :cond_2

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f0a0614

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IntCallServicePreference;->checkKeypadonResume()V

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v5, v3}, Lcom/android/phone/callsettings/IntCallServicePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method private updateNaturalSound()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "button_natural_sound_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isWFCRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    const-string v1, "support_safetycare"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_natural_sound"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v4, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateNoiseReduction()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "button_noise_reduction_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isWFCRegistered()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    const-string v1, "support_safetycare"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_noise_reduction"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v3, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateOnlyContactWithPhone()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "updateOnlyContactWithPhone"

    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "only_contact_with_phone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOnlyContactWithPhone : contactWithPhone - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updatePersonalizeSoundNoiseReduction(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePersonalizeSoundNoiseReductionAndIncoimgPopup(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "popup_incoming_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private updatePopupIncomingCallPreference()V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "call_popup_preference"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "popup_incoming_call"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "CallFeaturesSetting"

    const-string v3, "updatePopupIncomingCallPreference : Enable SUPPORT_INCOMINGCALL_POPUP"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "popup_incoming_call"

    const-string v0, "default_incomingcall_popup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "popup_incoming_call"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    const-string v0, "CallFeaturesSetting"

    const-string v2, "updatePopupIncomingCallPreference : popup_incoming_call is true"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const-string v0, "CallFeaturesSetting"

    const-string v1, "updatePopupIncomingCallPreference : popup_incoming_call is false"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updatePowerkeyPreference()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateProximitySensorPreference()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "proximity_sensor_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->mCheckValue:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    goto :goto_1
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 11

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    const v0, 0x10404cd

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_7

    const v0, 0x10404cb

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0065

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method private updateSecondScreenPreference()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "second_screen_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "updateSecondScreenPreference : second_screen_call is true"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "updateSecondScreenPreference : second_screen_call is false"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateSpamcall()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "updateSpamcall"

    invoke-static {v1, v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSpamCall:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spam_call_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpamCall : spamCallEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSpamCall:Landroid/preference/PreferenceScreen;

    if-ne v0, v4, :cond_1

    const v1, 0x7f0a0771

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0a0772

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateSwipeCallMessage()V
    .locals 4

    const/4 v1, 0x1

    const-string v2, "updateSwipeCallMessage"

    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "swipe_to_call_message"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swipeCall : swipe - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0a00fb

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    const-string v3, "feature_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\".."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVisualCallSettings()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "visual_call_center_callerid_info"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CallFeaturesSetting"

    const-string v2, "set updateVisualCallSettings"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visual_call_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualCallSettings:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualCallSettings:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a0799

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualCallSettings:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a079a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateVoLTEVideoCallEnablePreference()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->canEnablevolteVideoCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setShouldDisableView(Z)V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallMenuShow()Z

    move-result v0

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVoLTEVideoCallEnable checked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVoLTEVideoCallEnable enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "video_call_setting_category_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setShouldDisableView(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateWiFiCallPreference()V
    .locals 7

    const v6, 0x7f0a0239

    const v5, 0x7f0a0238

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "support_wfc_dt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "support_wfc_dt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CallFeaturesSetting"

    const-string v1, "updateWiFiCallPreference"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    const-string v0, "volte_settings_in_mobile_networks_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoLTE is enable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mEnabledWiFiCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->mEnabledWiFiCall:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mEnabledWiFiCall:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_call_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->wifiCallState:I

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallFeaturesSetting;->wifiCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->wifiCallState:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    const-string v0, "volte_settings_in_mobile_networks_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoLTE is enable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mEnabledWiFiCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->mEnabledWiFiCall:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mEnabledWiFiCall:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_call_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->wifiCallState:I

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallFeaturesSetting;->wifiCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->wifiCallState:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkingSoundSettingPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->setNoiseReduction(Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->setNaturalSound(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public handleWiFiCall()V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_call_enable"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_0

    move v6, v9

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wfc_dialog_show_never_again"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v7, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v10, 0x7f0400c2

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v10, 0x7f100060

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/phone/CallFeaturesSetting$33;

    invoke-direct {v10, p0}, Lcom/android/phone/CallFeaturesSetting$33;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a023a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a0090

    new-instance v11, Lcom/android/phone/CallFeaturesSetting$35;

    invoke-direct {v11, p0, v0}, Lcom/android/phone/CallFeaturesSetting$35;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a008e

    new-instance v11, Lcom/android/phone/CallFeaturesSetting$34;

    invoke-direct {v11, p0}, Lcom/android/phone/CallFeaturesSetting$34;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    new-instance v9, Lcom/android/phone/CallFeaturesSetting$36;

    invoke-direct {v9, p0}, Lcom/android/phone/CallFeaturesSetting$36;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v9, Lcom/android/phone/CallFeaturesSetting$37;

    invoke-direct {v9, p0}, Lcom/android/phone/CallFeaturesSetting$37;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_1
    return-void

    :cond_0
    move v6, v10

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "wifi_call_enable"

    invoke-static {v9, v11, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v9, "CallFeaturesSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleWiFiCall = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v8, Landroid/content/Intent;

    const-string v9, "action_wifi_call_enable_broadcast"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "wifi_call_enable"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateWiFiCallPreference()V

    goto :goto_1
.end method

.method protected initGeneralSetting(Z)V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    if-nez p1, :cond_3

    const-string v17, "button_videocall_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const-string v17, "button_voicemail_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string v17, "button_soundsetting_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->removeAll()V

    if-eqz v9, :cond_0

    invoke-virtual {v14, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v14, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v14, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v17, "network_service_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v14, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v17, "button_clir_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallerID:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerID:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerID:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v17, "restrict_international_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_57

    const-string v17, "extended_restrict_international_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_57

    const-string v17, "toggle_internationalcall"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    :goto_1
    const-string v17, "extended_restrict_international_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "intcallsetting_pref"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v17, "international_call_service"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_58

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_58

    const-string v17, "intcallservice_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/phone/callsettings/IntCallServicePreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    :goto_2
    const-string v17, "block_data_during_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5a

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_59

    const-string v17, "meterial_voicecall_protection_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    const-string v17, "voicecall_protection_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    :goto_3
    const-string v17, "call_block_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "button_call_rejection_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const-string v17, "call_block_list_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "button_call_rejection_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const v18, 0x7f0a029c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    :cond_9
    const-string v17, "call_related_popup_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonPopupWindow:Landroid/preference/PreferenceScreen;

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5b

    const-string v17, "dropdown_button_dtmf_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/phone/DropDownPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    :goto_4
    const-string v17, "button_auto_retry_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    const-string v17, "button_hac_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    const-string v17, "button_tty_mode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    const-string v17, "toggle_country_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    const-string v17, "country_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    const-string v17, "button_ddtm_mode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    const-string v17, "proximity_sensor_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    const-string v17, "volte_videocall_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    const-string v17, "call_popup_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5c

    const-string v17, "material_caller_info_card_preference_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    :goto_5
    const-string v17, "powerkey_end_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/phone/callsettings/PowerKeyEndPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const-string v17, "assisted_dialing_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    const-string v17, "call_deleteprefix_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mDeletePrefixSwitch:Landroid/preference/SwitchPreference;

    const-string v17, "button_receive_call_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    const-string v17, "call_answer_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAnswerEndCall:Landroid/preference/PreferenceScreen;

    const-string v17, "button_automatic_answer_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a02ef

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    const-string v17, "CallFeaturesSetting"

    const-string v18, "set mVisualCallSettings before"

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "visual_call_callsetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVisualCallSettings:Landroid/preference/PreferenceScreen;

    const-string v17, "visual_call_center_callerid_info"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v17

    if-nez v17, :cond_5d

    const-string v17, "CallFeaturesSetting"

    const-string v18, "set mVisualCallSettings"

    invoke-static/range {v17 .. v18}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->updateVisualCallSettings()V

    :cond_c
    :goto_6
    const-string v17, "support_proximity sensor menu"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "assisted_dialing_current_country_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    const-string v17, "powerkey_end_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonPopupWindow:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    const-string v17, "support_safetycare"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v17

    if-eqz v17, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonPopupWindow:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_e
    :goto_7
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoWiFi()Z

    move-result v17

    if-eqz v17, :cond_5f

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->initWiFiCallSetting(Z)V

    :goto_8
    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_60

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->initPhoneSetting(Z)V

    const-string v17, "call_related_popup_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonPopupWindow:Landroid/preference/PreferenceScreen;

    :cond_f
    const-string v17, "call_alert_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_10

    const-string v17, "remove_call_alerts_setting"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    const-string v17, "callsettings_accessory"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    const-string v17, "caller_info_card_preference_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    const-string v17, "material_caller_info_card_preference_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_13

    const-string v17, "show_caller_info_setting"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    const-string v17, "button_dtmf_settings"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_14

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a02e9

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "answeringmode_auto_time"

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_15
    const-string v17, "menu_usa_mess"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "button_automatic_answer_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_16

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    :cond_16
    const-string v17, "support_folder_single_lcd"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    const-string v17, "button_phonesettings_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "button_callsettings_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "button_swipe_callmessage_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    :cond_17
    const-string v17, "call_answer_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAnswerEndCall:Landroid/preference/PreferenceScreen;

    :cond_18
    const-string v17, "button_automatic_answer_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    :cond_19
    :goto_9
    const-string v17, "config_op_ui_call_setting_kdi"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_67

    const-string v17, "button_sync_call_settings_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSyncCallSettings:Landroid/preference/PreferenceScreen;

    :cond_1a
    :goto_a
    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0007

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_1b

    const-string v17, "dtmf_type_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_69

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->initDropdownDTMF()V

    :cond_1c
    :goto_b
    const-string v17, "support_folder_single_lcd"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0008

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_1e

    const-string v17, "auto_retry_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6e

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1f
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    const-string v17, "vt_cmcc_operator_fallback"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_22
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    const-string v17, "vt_cmcc_operator_fallback"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    :cond_23
    const-string v17, "button_respond_via_sms_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_24

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_24
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v17

    if-eqz v17, :cond_28

    const-string v17, "call_related_popup_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_25

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_25
    const-string v17, "second_screen_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_26

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_26
    const-string v17, "call_popup_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_27

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_27
    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_70

    const-string v17, "material_caller_info_card_preference_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    :goto_f
    if-eqz v10, :cond_28

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_28
    const-string v17, "default_incomingcall_popup"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_29

    const-string v17, "call_related_popup_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_29

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_29
    const-string v17, "reject_call_with_message_icon_mode"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_71

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_71

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v17

    if-nez v17, :cond_71

    :goto_10
    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2a

    const-string v17, "reject_call_with_message_icon_mode"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2c

    :cond_2a
    const-string v17, "ctc_vip_mode"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2b

    const-string v17, "call_block_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2c

    :cond_2b
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v17

    if-eqz v17, :cond_2d

    :cond_2c
    const-string v17, "reject_message_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_2d

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    const-string v17, "feature_multisim_dsda"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2e

    const-string v17, "ctc_dual_mode_single_phone_byqc"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_72

    :cond_2e
    const-string v17, "button_cdma_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "button_gsm_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "button_fdn_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "button_misc_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2f
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_30

    const-string v17, "international_dialing_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_30
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_31

    const-string v17, "international_dialing_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_31
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    :cond_32
    const-string v17, "ip_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_33

    const-string v17, "button_ipcall_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_33
    const-string v17, "button_deleteprefix_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_34

    const-string v17, "button_deleteprefix_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_34
    const-string v17, "phone_number_locator"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_35

    const-string v17, "numberregion_list_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_35
    const-string v17, "button_esurfing_dialup_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_36

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_36
    const-string v17, "feature_ctc"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7d

    const/4 v13, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->phoneIsCdma()Z

    move-result v17

    if-nez v17, :cond_37

    const/4 v13, 0x1

    :cond_37
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_39

    const-string v17, "feature_ctc"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_39

    const-string v17, "button_voicemail_category_key_duos"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_38

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_38
    sget-boolean v17, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-nez v17, :cond_39

    const-string v17, "not mAddVoicemailFromDialer remove  voicemail_category"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const-string v17, "button_voicemail_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_39
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_7c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    move/from16 v17, v0

    if-nez v17, :cond_7c

    const-string v17, "display cdma additional setting"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const-string v17, "button_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3a

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3a
    const-string v17, "button_voicemail_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3b

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3b
    :goto_14
    const-string v17, "button_cdma_voicecall_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3c

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3c
    const-string v17, "button_misc_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3d

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3d
    const-string v17, "us_cdma_voicecall_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3e

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3e
    const-string v17, "ctc_vip_mode"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3f

    const-string v17, "button_call_rejection_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3f

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3f
    :goto_15
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8a

    sget-boolean v17, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-eqz v17, :cond_89

    const-string v17, "button_voicemail_category_key_duos"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    :goto_16
    if-eqz v10, :cond_40

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_40
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_41

    const-string v17, "button_voicemail_category_key_duos"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_41

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_41
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v17

    if-eqz v17, :cond_42

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8b

    :cond_42
    const-string v17, "volte_noti_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_43

    const-string v17, "volte_noti_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_43
    :goto_17
    const-string v17, "feature_ktt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_44

    const-string v17, "button_kt_additional_service"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_44

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_44
    const-string v17, "assisted_dialing_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    const-string v17, "tablet_device"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8f

    const-string v17, "global_network_cdma_gsm_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8e

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->updateCurrentCountrysummary()V

    :goto_18
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v17

    if-nez v17, :cond_45

    const-string v17, "feature_sbm"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_47

    :cond_45
    const-string v17, "volte_settings_in_mobile_networks"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_47

    const-string v17, "volte_settings_in_mobile_networks_common"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_46

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v17

    if-nez v17, :cond_47

    :cond_46
    const-string v17, "remove_volte_outgoing_calltype_menu"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_93

    :cond_47
    const-string v17, "voicecall_type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_48

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_48
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    :cond_49
    :goto_19
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v17

    if-eqz v17, :cond_a6

    const-string v17, "feature_skt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a6

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a6

    const-string v17, "voicecall_type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_4a

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4a
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    const-string v17, "skt_hd_voice_setting_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSKTHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    const-string v17, "support_uicc_mobility"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v17

    if-nez v17, :cond_4c

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v17

    if-nez v17, :cond_4c

    :cond_4b
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_4d

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSKTHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSKTHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4d
    :goto_1a
    const-string v17, "hd_voice_network_prefer"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a8

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4e

    const-string v17, "support_folder_single_lcd"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a8

    :cond_4e
    const-string v17, "kt_hd_voice_setting_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    :goto_1b
    const-string v17, "support_spam_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_aa

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v17

    if-nez v17, :cond_aa

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v17

    if-nez v17, :cond_aa

    const-string v17, "spam_call_setting"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSpamCall:Landroid/preference/PreferenceScreen;

    :goto_1c
    const-string v17, "com.samsung.android.swis"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtilsCommon;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ac

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ac

    const-string v17, "support_swis"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ac

    const-string v17, "swis_swys_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSwisSwysPreference:Landroid/preference/PreferenceScreen;

    :goto_1d
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_50

    const-string v17, "feature_ctc"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4f

    const-string v17, "button_voicemail_key_duos"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoicemailDuos:Landroid/preference/PreferenceScreen;

    :cond_4f
    const-string v17, "button_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    const-string v17, "call_ipcall_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonIpCall:Landroid/preference/Preference;

    :cond_50
    const-string v17, "feature_skt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ae

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_ae

    const-string v17, "volte_instant_lettering_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    :goto_1e
    const-string v17, "support_oneline_greeting"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b0

    const-string v17, "kt_oneline_greeting"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mOneLineGreetingPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mOneLineGreetingPreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1f
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v17

    if-eqz v17, :cond_51

    const-string v17, "button_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    :cond_51
    const-string v17, "vzw_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b2

    const/16 v17, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    :cond_52
    :goto_20
    const-string v17, "phone_app_mode_pref"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v17, "phone_app_mode_pref_kt"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const-string v17, "support_mobilecarrier"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b4

    const-string v17, "support_tphone"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b3

    const-string v17, "phone_app_mode_pref"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    if-eqz v11, :cond_53

    invoke-virtual {v14, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_53
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v17, "support_safetycare"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_54

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v17

    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_54
    :goto_22
    const-string v17, "ims_support_multimedia_caller_id"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b7

    const-string v17, "photoring_setting_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_55

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_55
    :goto_23
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v17

    if-eqz v17, :cond_56

    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_56

    const-string v17, "call_related_popup_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_56

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonPopupWindow:Landroid/preference/PreferenceScreen;

    :cond_56
    const-string v17, "button_call_plus_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mRcsCallSettings:Landroid/preference/PreferenceScreen;

    const-string v17, "com.vodafone.callplushybrid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "CallFeaturesSetting"

    const-string v18, "Removing RCS Call Settings"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v17, "button_rcssettings_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "button_call_plus_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_57
    const-string v17, "toggle_internationalcall"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_58
    const-string v17, "intcallservice_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    goto/16 :goto_2

    :cond_59
    const-string v17, "voicecall_protection_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    const-string v17, "meterial_voicecall_protection_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    goto/16 :goto_3

    :cond_5a
    const-string v17, "voicecall_protection_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v17, "meterial_voicecall_protection_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    goto/16 :goto_3

    :cond_5b
    const-string v17, "button_dtmf_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_4

    :cond_5c
    const-string v17, "caller_info_card_preference_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_5

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVisualCallSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVisualCallSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonPopupWindow:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_5f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->initWiFiCallSetting(Z)V

    goto/16 :goto_8

    :cond_60
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->initPhoneSetting(Z)V

    const-string v17, "button_callsettings_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_61

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_61
    const-string v17, "button_automatic_answer_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_62

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    :cond_62
    const-string v17, "material_caller_info_card_preference_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_63

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_63
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v17

    if-nez v17, :cond_64

    const-string v17, "tablet_l_osup"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_65

    :cond_64
    const-string v17, "caller_info_card_preference_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_65

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_65
    const-string v17, "dropdown_button_dtmf_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_66

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_66
    const-string v17, "callsettings_ringtones_keytones_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_67
    const-string v17, "button_roaming_kddi_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_68

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_68
    const-string v17, "button_sync_call_settings_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    goto/16 :goto_b

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0007

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_6b

    const-string v17, "dtmf_type_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6c

    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_b

    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_b

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    goto/16 :goto_c

    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    goto/16 :goto_d

    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_e

    :cond_70
    const-string v17, "caller_info_card_preference_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    goto/16 :goto_f

    :cond_71
    const-string v17, "reject_message_preference_icon"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0003

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_2f

    const-string v17, "button_cdma_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_73

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_73
    const-string v17, "button_gsm_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_74

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_77

    const-string v17, "button_fdn_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_75

    invoke-virtual {v14, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_76

    const-string v17, "voice_privacy_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_76

    const v17, 0x7f070017

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    :cond_76
    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v17

    if-eqz v17, :cond_2f

    const-string v17, "button_misc_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_11

    :cond_77
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_79

    const-string v17, "global_network_cdma_gsm_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_78

    const-string v17, "button_misc_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_78
    const-string v17, "button_fdn_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v14, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_11

    :cond_79
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected phone type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_12

    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    goto/16 :goto_13

    :cond_7c
    const-string v17, "display gsm additional setting or two sim additional setting"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const-string v17, "button_cdma_additional_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3b

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_14

    :cond_7d
    const-string v17, "chn_cdma_setting_on_all_rat"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_85

    const-string v17, "CDMA"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPropertySimSixmode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    move/from16 v17, v0

    if-nez v17, :cond_83

    const-string v17, "button_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_7e

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7e
    const-string v17, "button_misc_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_7f

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7f
    const-string v17, "button_voicemail_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_80

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_80
    :goto_24
    const-string v17, "button_cdma_voicecall_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_81

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_82

    const-string v17, "us_cdma_call_fowarding"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3f

    :cond_82
    const-string v17, "us_cdma_voicecall_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_3f

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    :cond_83
    const-string v17, "button_cdma_additional_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_84

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_84
    const-string v17, "button_misc_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_80

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_24

    :cond_85
    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_88

    const-string v17, "button_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_86

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_86
    const-string v17, "call_popup_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_87

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_87
    const-string v17, "disable_auto_area_code"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_80

    const-string v17, "button_cdma_additional_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_80

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_24

    :cond_88
    const-string v17, "button_cdma_additional_more_expand_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_80

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_24

    :cond_89
    const-string v17, "button_voicemail_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    goto/16 :goto_16

    :cond_8a
    const-string v17, "button_voicemail_category_key_duos"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    goto/16 :goto_16

    :cond_8b
    const-string v17, "volte_noti_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    const-string v17, "support_uicc_mobility"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8d

    const-string v17, "feature_skt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v17

    if-eqz v17, :cond_8c

    const/16 v17, 0x1

    :goto_25
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_17

    :cond_8c
    const/16 v17, 0x0

    goto :goto_25

    :cond_8d
    const-string v17, "feature_skt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_43

    const-string v17, "volte_noti_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_17

    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    goto/16 :goto_18

    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_92
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    goto/16 :goto_18

    :cond_93
    const-string v17, "hd_voice_network_prefer"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_96

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_94

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v17

    if-nez v17, :cond_96

    :cond_94
    const-string v17, "voicecall_type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_95

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_95
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    goto/16 :goto_19

    :cond_96
    const-string v17, "voicecall_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_49

    const-string v17, "feature_skt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_97

    const-string v17, "feature_kor_open"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9b

    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0599

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0599

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a059a

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(I)V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0x7f0a059b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    const/16 v17, 0x1

    const v18, 0x7f0a059c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_98
    :goto_26
    const-string v17, "single_lte"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a1

    const-string v17, "support_uicc_mobility"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_99

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v17

    if-nez v17, :cond_a1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v17

    if-eqz v17, :cond_99

    const-string v17, "menu_simplification"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a1

    :cond_99
    const-string v17, "voicecall_type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_9a

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9a
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    goto/16 :goto_19

    :cond_9b
    const-string v17, "feature_ktt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0591

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0591

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0x7f0a0593

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    const/16 v17, 0x1

    const v18, 0x7f0a0595

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    :cond_9c
    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0588

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0588

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0x7f0a059d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    const/16 v17, 0x1

    const v18, 0x7f0a059e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    :cond_9d
    const-string v17, "feature_dcm"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9e

    const-string v17, "feature_sbm"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9f

    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a05c3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a05c3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a05c4

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_26

    :cond_9f
    const-string v17, "tmo_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a0

    const-string v17, "mpcs_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_98

    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0589

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0589

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0x7f0a058b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    const/16 v17, 0x1

    const v18, 0x7f0a058d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    :cond_a1
    const-string v17, "feature_kor_open"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a3

    const-string v17, "support_uicc_mobility"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v17

    if-eqz v17, :cond_a3

    const-string v17, "voicecall_type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_a2

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a2
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    goto/16 :goto_19

    :cond_a3
    const-string v17, "vzw_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a4

    const-string v17, "common_volte_hktw"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a5

    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    goto/16 :goto_19

    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_19

    :cond_a6
    const-string v17, "skt_hd_voice_setting_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_a7

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a7
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSKTHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1a

    :cond_a8
    const-string v17, "kt_hd_voice_setting_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_a9

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a9
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mHDVoiceNetworkPreference:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1b

    :cond_aa
    const-string v17, "spam_call_setting"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_ab

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_ab
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSpamCall:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1c

    :cond_ac
    const-string v17, "swis_swys_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_ad

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_ad
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSwisSwysPreference:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1d

    :cond_ae
    const-string v17, "volte_instant_lettering_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_af

    const-string v17, "volte_instant_lettering_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_af
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1e

    :cond_b0
    const-string v17, "kt_oneline_greeting"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_b1

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mOneLineGreetingPreference:Landroid/preference/ListPreference;

    goto/16 :goto_1f

    :cond_b2
    const-string v17, "video_call_setting_category_key"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    if-eqz v16, :cond_52

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_20

    :cond_b3
    const-string v17, "support_ollehphone"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_53

    const-string v17, "phone_app_mode_pref_kt"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    if-eqz v12, :cond_53

    invoke-virtual {v14, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_21

    :cond_b4
    if-eqz v12, :cond_b5

    invoke-virtual {v14, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b5
    if-eqz v11, :cond_b6

    invoke-virtual {v14, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b6
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    goto/16 :goto_22

    :cond_b7
    const-string v17, "photoring_setting_preference"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_55

    const-string v17, "feature_ktt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_55

    const v17, 0x7f0a06e4

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_23
.end method

.method protected initInCallOverlayPopup(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "call_overlay_popup_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected initPhoneSetting(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_phonesettings_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-nez p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    const-string v2, "button_swipe_callmessage_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    const-string v2, "button_only_contactwithphone_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    const v3, 0x7f0a00c3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    const-string v2, "support_only_contact_with_phone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method protected initSoundSetting(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_soundsetting_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-nez p1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "callsettings_ringtones_keytones_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "show_callsettings_ringtones_keytones_preference"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v2, v0

    const-string v3, "button_ringtone_keytone_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/InCallSoundEQListPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    const-string v3, "button_natural_sound_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    const-string v3, "button_noise_reduction_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v3, "extra_ringtone_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    :cond_3
    const-string v3, "extra_ringer"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->removeSoundEQMenu()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_1
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    const-string v3, "noise_suppression"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "default_noise_reduction"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_noise_reduction"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    :goto_2
    const-string v3, "showing_extra_vol_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method protected initVideoSetting(Z)V
    .locals 10

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "button_videocall_category_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "video_call_not_support"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    move-object v4, v1

    const-string v5, "video_call_not_support"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ui_for_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ui_for_chn"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ui_for_hktw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_4
    const-string v5, "preset_image"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPresetImage:Landroid/preference/PreferenceScreen;

    const-string v5, "showme_preference"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    const-string v5, "failoption_preference"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    const-string v5, "emotionalEyeContact_preference"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    const-string v5, "auto_divert_to_voice_call"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    const-string v5, "meterial_auto_divert_to_voice_call"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    const-string v5, "vt_call_fail_fallback"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v5, "emotionalEyeContact_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v5, "support_safetycare"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPresetImage:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPresetImage:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_6
    :goto_1
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    :cond_7
    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "ui_for_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "kor_cs_vt_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_8
    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    :cond_b
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    :cond_c
    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "video_call_content_box"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    :goto_3
    const-string v5, "rearrange_preset_image_setting"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPresetImage:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPresetImage:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0a025a

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_e
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "showme_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    const-string v5, "vt_cmcc_operator_fallback"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "showme_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    const-string v5, "failoption_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    :goto_4
    const-string v5, "toggle_videocall_mode"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_12

    const-string v5, "kor_cs_vt_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "videocall_mode"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_26

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_12
    :goto_6
    const-string v5, "ui_for_chn"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "ui_for_hktw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_13
    const-string v5, "showme_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    const-string v5, "failoption_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    const-string v5, "video_call_quality_info"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    const-string v5, "video_call_speaker"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    const-string v5, "meterial_video_call_quality_info"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    const-string v5, "meterial_video_call_speaker"

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    const-string v5, "ui_for_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string v5, "showme_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_16
    const-string v5, "failoption_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    const-string v5, "emotionalEyeContact_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_18
    const-string v5, "toggle_videocall_mode"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_19
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1a
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1c
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1d
    :goto_7
    const-string v5, "block_speaker_menu"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_1f
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPresetImage:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPresetImage:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_20
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_21
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_22
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    const-string v5, "enable_video_call_content_menu"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "video_call_content_box"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_24
    const-string v5, "failoption_list_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_25
    const-string v5, "automaticaccept_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_26
    move v5, v7

    goto/16 :goto_5

    :cond_27
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "button_videocall_category_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_29
    const-string v5, "preset_image"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2a
    const-string v5, "showme_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2b
    const-string v5, "failoption_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2c
    const-string v5, "emotionalEyeContact_preference"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    const-string v5, "toggle_videocall_mode"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2e
    const-string v5, "auto_divert_to_voice_call"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2f
    const-string v5, "video_call_content_box"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_30
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_31
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    :cond_32
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_33
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_34
    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_35

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_35
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_36
    :goto_8
    const-string v5, "block_speaker_menu"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_37
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_38
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8

    :cond_39
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3a
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_3b
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3c
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3d
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3e
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method protected initVoicemailSetting(Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_vvm_setting_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v3, "visual_voicemail_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    if-nez p1, :cond_2

    const-string v3, "button_voicemail_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "button_voicemail_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    const-string v3, "button_voicemail_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f0a01ee

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    :cond_4
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimStatus(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :cond_5
    const-string v3, "button_voicemail_provider_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "button_voicemail_setting_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0a0232

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTitleDescription(I)V

    const-string v3, "feature_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_6
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-nez v3, :cond_23

    sget v3, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    if-nez v3, :cond_15

    const-string v3, "feature_multisim_dsda_gsm_gsm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mIsDuos:Z

    if-eqz v3, :cond_e

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const-string v3, "button_voicemail_notification_ringtone_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "button_voicemail_notification_ringtone_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    goto/16 :goto_0

    :cond_c
    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_e
    const-string v3, "button_voicemail_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_f

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_f

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    if-eqz v1, :cond_10

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    if-eqz v1, :cond_11

    const-string v3, "button_voicemail_notification_ringtone_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_11

    const-string v3, "button_voicemail_notification_ringtone_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v1, :cond_12

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_12

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    if-eqz v1, :cond_b

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_13
    if-eqz v1, :cond_14

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_14

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    if-eqz v1, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_15
    const-string v3, "button_voicemail_notification_ringtone_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    sget-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mIsDuos:Z

    if-eqz v3, :cond_1c

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_16
    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_17

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_18

    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_18
    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_19

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_19
    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_1a
    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b
    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_1c
    const-string v3, "button_voicemail_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1d

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1d

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    if-eqz v1, :cond_1e

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1e

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    if-eqz v1, :cond_1f

    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1f

    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1f
    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v1, :cond_20

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_20

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_20
    if-eqz v1, :cond_b

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_21
    if-eqz v1, :cond_22

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_22

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_22
    if-eqz v1, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_23
    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    const-string v3, "button_voicemail_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_24

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_24

    const-string v3, "button_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_24
    if-eqz v1, :cond_25

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_25

    const-string v3, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_25
    if-eqz v1, :cond_26

    const-string v3, "button_voicemail_notification_ringtone_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_26

    const-string v3, "button_voicemail_notification_ringtone_key_sim2"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_26
    if-eqz v1, :cond_b

    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_27

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_27
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoicemailNotificationVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_28
    const-string v3, "menu_usa_mess"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_29

    const-string v3, "button_voicemail_notification_ringtone_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_29
    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_2a
    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method protected initVoipSetting(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSipCallSettings()V

    :cond_0
    return-void
.end method

.method protected initWiFiCallSetting(Z)V
    .locals 9

    const/4 v6, 0x0

    const v8, 0x7f0a0239

    const v7, 0x7f0a0238

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "CallFeaturesSetting"

    const-string v5, "initWiFiCallSetting"

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "button_wifi_calling_category_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    const-string v2, "AUT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0a0236

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    const-string v5, "button_wifi_calling"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    const-string v5, "button_wifi_call_preference"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_call_enable"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "support_wfc_dt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CallFeaturesSetting"

    const-string v4, "initWiFiCallSetting - PhoneFeature.Function.SUPPORT_WIFI_CALL"

    invoke-static {v2, v4, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    const-string v2, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initWiFiCallSetting - mWifiCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    const-string v2, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initWiFiCallSetting - mWifiCallPreference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    if-ne v1, v3, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-string v2, "CallFeaturesSetting"

    const-string v5, "initWiFiCallSetting - !PhoneFeature.Function.SUPPORT_WIFI_CALL"

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    const-string v2, "CallFeaturesSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initWiFiCallSetting !- mWifiCallPreference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_6
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    const-string v2, "CallFeaturesSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initWiFiCallSetting !- mWifiCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    if-ne v1, v3, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method protected initializeSettings()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "visual_voicemail"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateVisualVoicemailEnabled()V

    :cond_0
    const-string v2, "initializeSettings from CallFeaturesSetting"

    invoke-static {v2, v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initGeneralSetting(Z)V

    const-string v2, "menu_simplification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initSoundSetting(Z)V

    :goto_0
    const-string v2, "remove_voicemail_category"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVideoSetting(Z)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "internet_call_settings_visibility"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVoipSetting(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initInCallOverlayPopup(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initSoundSetting(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_ADD_VOICEMAIL Intent is thrown. current VM data size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-le v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    :cond_0
    :goto_0
    const-string v3, "feature_multisim_dsda"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    const v3, 0x102002c

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/android/phone/CallFeaturesSetting$28;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CallFeaturesSetting$28;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    const-string v3, "support_split_settings"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    const/4 v8, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMProviderSettingsForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    const/4 v14, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    const-string v1, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_0
    :goto_0
    if-eqz v8, :cond_8

    const-string v1, "Failure in return from voicemail provider"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-eqz v12, :cond_7

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p3, :cond_3

    const-string v1, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Provider requested signout"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-eqz v12, :cond_4

    const-string v1, "Going back to previous provider on signout"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relaunching activity and ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    const-string v1, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    const-string v1, "Not switching back the provider since this is not forced config"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iput-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: vm provider cfg result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v9, :cond_9

    const-string v1, "has"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forwarding number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    :cond_9
    const-string v1, " does not have"

    goto :goto_2

    :cond_a
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_b

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_e
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    if-eqz v7, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_10

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v1

    :cond_11
    invoke-super/range {p0 .. p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 v1, 0x1f6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const-string v0, "Neutral button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "Negative button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    :pswitch_2
    const-string v0, "Positive button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v8, "Creating activity"

    invoke-static {v8, v13}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/phone/CallFeaturesSetting;->isSearching:Z

    if-eqz v8, :cond_9

    sget v8, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    :cond_0
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "feature_att"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "feature_tmo"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_1
    const-string v8, "noise_suppression"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "com.oem.smartwifisupport.WFC_STATE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string v8, "volte_cmcc_data_enable_popup"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v3, v10, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "showvoicemail"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    sput-boolean v12, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onCreateMultiSIM()V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "is_voicemail_duos"

    invoke-virtual {v8, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    sput-boolean v13, Lcom/android/phone/CallFeaturesSetting;->mIsDuos:Z

    const-string v8, "DUOS"

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const v8, 0x7f070046

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getTabCount()I

    move-result v8

    if-lez v8, :cond_b

    const-string v8, "Get SIM ID from tab index"

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v8

    if-nez v8, :cond_a

    sput v12, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v12}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "voicemail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    :cond_6
    :goto_2
    invoke-virtual {p0, v13}, Lcom/android/phone/CallFeaturesSetting;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mEntrySettings:Landroid/preference/PreferenceScreen;

    new-instance v8, Lcom/android/phone/CallFeaturesSetting$27;

    invoke-direct {v8, p0}, Lcom/android/phone/CallFeaturesSetting$27;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "button_ans_memo_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mAnswerMemoKey:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mAnswerMemoKey:Landroid/preference/Preference;

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mAnswerMemoKey:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    :cond_8
    return-void

    :cond_9
    sput v12, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    goto/16 :goto_0

    :cond_a
    sput v13, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1

    :cond_b
    const-string v8, "Get SIM ID from bundle"

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "feature_ctc"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    sget v8, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v8, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    sget v8, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_1

    :cond_c
    const-string v8, "CallSettingTab"

    invoke-virtual {v1, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_d

    sput v12, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v12}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_1

    :cond_d
    sput v13, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_1

    :cond_e
    sput-boolean v12, Lcom/android/phone/CallFeaturesSetting;->mIsDuos:Z

    const-string v8, "ltn_auto_csp"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    const v8, 0x7f070006

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    :cond_f
    const v8, 0x7f070007

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "wifi_calling_holder_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "button_gsm_voicecall_forwarding"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mCallForwarding:Landroid/preference/PreferenceScreen;

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f070048

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "button_wifi_calling_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_10

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    :goto_4
    if-eqz v6, :cond_12

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "wfc_settings_holder_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->isWifiCallingPackageLoaded(Landroid/content/Context;)Z

    move-result v8

    if-ne v8, v13, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f070047

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "wfc_settings_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setOrder(I)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    const-class v9, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setParentClassName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_13
    :goto_5
    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.GET_CONTENT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v9, "vnd.android.cursor.item/phone"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "vt_cmcc_operator_fallback"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "failoption_list_preference"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    const-string v8, "automaticaccept_preference"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->initializeSettings()V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mHeaderSettings:Landroid/preference/PreferenceScreen;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    iput v8, p0, Lcom/android/phone/CallFeaturesSetting;->mSimStatus:I

    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    sget v8, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    if-ne v8, v13, :cond_16

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/CallFeaturesSetting;->mSimStatus:I

    :cond_16
    iget v8, p0, Lcom/android/phone/CallFeaturesSetting;->mSimStatus:I

    if-eqz v8, :cond_17

    iget v8, p0, Lcom/android/phone/CallFeaturesSetting;->mSimStatus:I

    if-ne v8, v13, :cond_18

    :cond_17
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_19

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_19

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "from_settings"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_6
    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string v8, "CallFeaturesSetting"

    const-string v9, "Can\'t inflate R.xml.wifi_calling_settings?!?!"

    invoke-static {v8, v9, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_1
    move-exception v2

    const-string v8, "CallFeaturesSetting"

    const-string v9, "cannot add WfcSwitchPreference"

    invoke-static {v8, v9, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_19
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_6

    :cond_1a
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "button_ans_memo_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "button_ans_memo_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 20

    const/16 v16, 0x1f4

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x190

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x1f5

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x1f6

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x258

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0a00e8

    sparse-switch p1, :sswitch_data_0

    const v13, 0x7f0a00ed

    const v16, 0x7f0a00ef

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setCancelable(Z)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :goto_1
    return-object v7

    :sswitch_0
    const v13, 0x7f0a00f6

    const v14, 0x7f0a00b2

    const v16, 0x7f0a00ef

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v16

    sget v17, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/PhoneGlobals;->refreshMwiIndicator(I)V

    goto :goto_0

    :sswitch_1
    const v13, 0x7f0a00fa

    const v14, 0x7f0a00b2

    const v16, 0x7f0a00ef

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_2
    const v13, 0x7f0a00f7

    const v16, 0x7f0a00ef

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_3
    const v13, 0x7f0a00f8

    const v16, 0x7f0a00ef

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_4
    const v13, 0x7f0a00f9

    const v16, 0x7f0a022d

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v16, 0x7f0a022e

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_1
    const/16 v16, 0x259

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    const/16 v16, 0x25a

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    const/16 v16, 0x25b

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    :cond_2
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v16, 0x7f0a00e7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setCancelable(Z)V

    const/16 v16, 0x259

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    const v16, 0x7f0a00ea

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const/16 v16, 0x25b

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    const v16, 0x7f0a00eb

    goto :goto_2

    :cond_4
    const v16, 0x7f0a00e9

    goto :goto_2

    :cond_5
    const/16 v16, 0x15e

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0628

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0629

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a062a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x7f0a062b

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0a0090

    new-instance v18, Lcom/android/phone/CallFeaturesSetting$19;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting$19;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0x12c

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "usecall_fail_option"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCMCCFailOption:I

    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x7f0a0250

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const/high16 v17, 0x1040000

    new-instance v18, Lcom/android/phone/CallFeaturesSetting$21;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting$21;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f090085

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCMCCFailOption:I

    move/from16 v18, v0

    new-instance v19, Lcom/android/phone/CallFeaturesSetting$20;

    invoke-direct/range {v19 .. v20}, Lcom/android/phone/CallFeaturesSetting$20;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual/range {v16 .. v19}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    move-object v7, v10

    goto/16 :goto_1

    :cond_7
    const/16 v16, 0x320

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v16, 0x7f0400c0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v16, 0x1020001

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Checkable;

    const v16, 0x7f1001f4

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v16

    if-eqz v16, :cond_8

    const v16, 0x7f0a05b8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v16, 0x7f0a0090

    new-instance v17, Lcom/android/phone/CallFeaturesSetting$22;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallFeaturesSetting$22;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/Checkable;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_1

    :cond_8
    const v16, 0x7f0a05b9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    const/16 v16, 0x321

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v16, 0x7f0400c0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v16, 0x1020001

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Checkable;

    const v16, 0x7f1001f4

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0a0704

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f0a0590

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v16, 0x7f0a058f

    new-instance v17, Lcom/android/phone/CallFeaturesSetting$23;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallFeaturesSetting$23;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/Checkable;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v16, 0x7f0a0631

    new-instance v17, Lcom/android/phone/CallFeaturesSetting$24;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallFeaturesSetting$24;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/Checkable;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x322

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    const-string v16, "showing DIALOG_ADVANCE_CALLING_TURN_ON "

    invoke-static/range {v16 .. v16}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v16, 0x7f0400c0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v16, 0x1020001

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Checkable;

    const v16, 0x7f1001f4

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0a0705

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f0a058e

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v16, 0x7f0a058f

    new-instance v17, Lcom/android/phone/CallFeaturesSetting$25;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallFeaturesSetting$25;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/Checkable;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v16, 0x7f0a0631

    new-instance v17, Lcom/android/phone/CallFeaturesSetting$26;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallFeaturesSetting$26;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/Checkable;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-ne v0, v2, :cond_0

    sput-boolean v3, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    const-string v0, "onDestroy reset mAddVoicemailFromDialer"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->isSearching:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    sget v0, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    if-nez v0, :cond_2

    sput-boolean v3, Lcom/android/phone/CallFeaturesSetting;->isSearching:Z

    const-string v0, "Exit from Call settings that was created by Setting search..."

    invoke-static {v0, v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/android/phone/CallFeaturesSetting;->stillFromSearch:I

    if-gez v0, :cond_1

    const-string v0, "Must not be here..."

    invoke-static {v0, v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    const-string v2, "updating default for voicemail dialog"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "updating default for call forwarding dialogs"

    invoke-static {v1, v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00b3

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

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
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->registerRegReceiver(Z)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "pause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onPause()V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    :cond_2
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->removePhoneStateListeners()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 32

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onPreferenceChange(). preferenece: \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", value: \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->noVolteCallActive()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->isMobileDataOn()Z

    move-result v28

    if-nez v28, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "mobiledataDialogShowNeverAgain"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_0

    const/16 v28, 0x321

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    :cond_0
    const/16 v28, 0x0

    :goto_0
    return v28

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->isAdvanceCallingOn()Z

    move-result v28

    if-nez v28, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "advanceCallingDialogShowNeverAgain"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_2

    const/16 v28, 0x322

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    :cond_2
    const/16 v28, 0x0

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->isSafeToTurnOnVolteVideoCall()Z

    move-result v28

    if-eqz v28, :cond_4

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->onVoLTEVideoCallEnablePreferenceTreeClick(Z)V

    const/16 v28, 0x1

    goto :goto_0

    :cond_4
    const/16 v28, 0x0

    goto :goto_0

    :cond_5
    if-nez v9, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->noVolteCallActive()Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->onVoLTEVideoCallEnablePreferenceTreeClick(Z)V

    const/16 v28, 0x1

    goto :goto_0

    :cond_6
    const/16 v28, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMaterialCallerInfoCard:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/Boolean;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_8

    const/16 v28, 0x1

    :goto_1
    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/SystemDBInterface;->setCallerInfoCardMode(I)V

    const/16 v28, 0x1

    goto :goto_0

    :cond_8
    const/16 v28, 0x0

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "call_auto_retry"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_a

    const/16 v28, 0x1

    :goto_2
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v28, 0x0

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "dtmf_tone_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    :goto_3
    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFolderReceive:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_e

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "answeringmode_folder_open"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_11

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "swipe_to_call_message"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_f

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, "com.android.phone"

    const-string v31, "SWIP"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_10

    const-string v28, "on"

    :goto_5
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_f
    const/16 v28, 0x0

    goto :goto_4

    :cond_10
    const-string v28, "off"

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mContactWithPhone:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_14

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "only_contact_with_phone"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_12

    const/16 v28, 0x1

    :goto_6
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, "com.android.phone"

    const-string v31, "OCPN"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_13

    const-string v28, "on"

    :goto_7
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_12
    const/16 v28, 0x0

    goto :goto_6

    :cond_13
    const-string v28, "off"

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1a

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "automatic_answering_enable_sharedpref"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v28, 0x1

    :goto_8
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, "com.android.phone"

    const-string v31, "AUAN"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_18

    const-string v28, "on"

    :goto_9
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v28, "automatic_answering_machine"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v28, "automatic_answering_enable_sharedpref"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "automatic_answering_enable_sharedpref"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-nez v28, :cond_19

    const/4 v13, 0x0

    :goto_a
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isChecked: \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "value: \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "callsettings_answer_memo"

    const/16 v30, 0x2

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ansMemo: \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-eqz v13, :cond_16

    if-eqz v4, :cond_15

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v4, v0, :cond_16

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->checkPhoneVibrateOrSilentMode()Z

    move-result v28

    if-eqz v28, :cond_16

    :cond_15
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->confirmSelectionDialog(Z)V

    :cond_16
    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_18
    const-string v28, "off"

    goto/16 :goto_9

    :cond_19
    const/4 v13, 0x1

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->handleTTYChange(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1e

    move-object/from16 v18, p2

    check-cast v18, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Voicemail Provider changes from \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\" to \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\"."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const-string v28, "No change is made toward VM provider setting."

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v19

    if-nez v19, :cond_1d

    const-string v28, "Saved preferences not found - invoking config"

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_1d
    const-string v28, "Saved preferences found - switching to them"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_20

    const-string v28, "CallFeaturesSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Previous Country Code Value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "country_code"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "country_code"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v28, "CallFeaturesSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "New Country Code Value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "country_code"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_22

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_21

    const-string v28, "CallFeaturesSetting"

    const-string v29, "Checked US/Canada"

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "CallFeaturesSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Previous Country Code Value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "country_code"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    move-object/from16 v28, v0

    const-string v29, "011"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "country_code"

    const-string v30, "011"

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v28, "CallFeaturesSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "New Country Code Value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "country_code"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_21
    const-string v28, "CallFeaturesSetting"

    const-string v29, "Unchecked US/Canada"

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mDeletePrefixSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mOneLineGreetingPreference:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_23

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "oneline_greeting"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "One Line Greeting Value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVoiceCallProtection:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_25

    const-string v28, "menu_simplification"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    new-instance v12, Landroid/content/Intent;

    const-string v28, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "enable_call_protect_when_calling"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v28, "on off"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_b
    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionValue()V

    invoke-virtual {v5, v12}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    const-string v28, "Send broadcast - call protection status changed"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "enable_call_protect_when_calling"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v28, "on off"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhoneAppMode:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_2c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v23

    sget-object v28, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_26

    const-string v28, "can not change mode during incall state"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const v29, 0x7f0a0391

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    const/16 v28, 0x0

    goto/16 :goto_0

    :cond_26
    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneEnabled()Z

    move-result v28

    if-eqz v28, :cond_28

    const/16 v20, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setBeforePhoneMode(I)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "value = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", phoneMode = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-lez v27, :cond_2a

    if-nez v20, :cond_2a

    const v28, 0x7f0a060b

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const/16 v17, 0x0

    const-string v28, "support_tphone"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    const v28, 0x7f0a060c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v24

    const v28, 0x7f0a060e

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v24, v29, v30

    const/16 v30, 0x1

    aput-object v25, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :cond_27
    :goto_d
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const v29, 0x7f0a0090

    new-instance v30, Lcom/android/phone/CallFeaturesSetting$14;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting$14;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual/range {v28 .. v30}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const v29, 0x7f0a008e

    new-instance v30, Lcom/android/phone/CallFeaturesSetting$13;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting$13;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual/range {v28 .. v30}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    new-instance v29, Lcom/android/phone/CallFeaturesSetting$12;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting$12;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    :cond_28
    const/16 v20, 0x0

    goto/16 :goto_c

    :cond_29
    const-string v28, "support_ollehphone"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_27

    const v28, 0x7f0a060d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v24

    const v28, 0x7f0a060f

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v24, v29, v30

    const/16 v30, 0x1

    aput-object v25, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_d

    :cond_2a
    if-nez v27, :cond_c

    const-string v28, "support_tphone"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2b

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneEnabled(I)V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateCallSettingsByCarrier(I)V

    new-instance v12, Landroid/content/Intent;

    const-string v28, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_2b
    const-string v28, "support_ollehphone"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneEnabled(I)V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateCallSettingsByCarrier(I)V

    new-instance v12, Landroid/content/Intent;

    const-string v28, "com.kt.ollehphone.CHANGE_MODE_SETTING"

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_2e

    const-string v28, "menu_simplification"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v28

    if-eqz v28, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "videocall_settings"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_e
    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "videocall_settings"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_30

    const-string v28, "menu_simplification"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v28

    if-eqz v28, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "videocallmessage_settings"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_f
    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "videocallmessage_settings"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_32

    const-string v28, "menu_simplification"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v28

    if-eqz v28, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "videocall_speaker"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_10
    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "videocall_speaker"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_32
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_c

    move-object/from16 v28, p2

    check-cast v28, Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "voicecall_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v28, "feature_skt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3b

    if-nez v27, :cond_3b

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v28

    if-eqz v28, :cond_33

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESettingEnabled()Z

    move-result v14

    :cond_33
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isVolteServiceOn = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    if-nez v14, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "voicecall_type"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v28, "ims_call_message"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_34

    const-string v28, "feature_skt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const v29, 0x7f0a05a1

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    const/16 v28, 0x0

    goto/16 :goto_0

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const v29, 0x7f0a059f

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    :cond_36
    :goto_11
    const-string v28, "feature_skt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_37

    const-string v28, "feature_jpn"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    aget-object v29, v10, v27

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_37
    const-string v28, "ims_call_message"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_38

    const-string v28, "feature_skt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    if-nez v27, :cond_40

    const/16 v28, 0x1

    :goto_12
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_38
    const-string v28, "interworking_hd_voice_by_intent"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "voicecall_type"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    new-instance v12, Landroid/content/Intent;

    const-string v28, "android.intent.action.HD_VOICE_CHANGED"

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v29, "enable"

    if-nez v26, :cond_41

    const/16 v28, 0x1

    :goto_13
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    sget-object v29, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v12, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-nez v26, :cond_42

    const/16 v28, 0x1

    :goto_14
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_39
    :goto_15
    const-string v28, "tmo_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3a

    const-string v28, "mpcs_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    :cond_3a
    const/16 v28, 0x7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v16, :cond_c

    const-string v28, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_43

    const-string v28, "CallFeaturesSetting"

    const-string v29, "manual register for IMS"

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setAllServicesEnabled(I)V

    goto/16 :goto_3

    :cond_3b
    :try_start_1
    const-string v28, "feature_ktt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e

    if-nez v27, :cond_3e

    const-string v28, "support_uicc_mobility"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3e

    const/4 v15, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v28

    if-eqz v28, :cond_3c

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESettingEnabled()Z

    move-result v15

    :cond_3c
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isVolteSupported = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    if-nez v15, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "voicecall_type"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/16 v28, 0x0

    goto/16 :goto_0

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const v29, 0x7f0a05a0

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_11

    :catch_0
    move-exception v7

    const-string v28, "CallFeaturesSetting"

    const-string v29, "could not persist voice call type setting"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :cond_3e
    :try_start_2
    const-string v28, "feature_dcm"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3f

    const-string v28, "feature_sbm"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_36

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setEnabled(Z)V

    new-instance v28, Landroid/os/Handler;

    invoke-direct/range {v28 .. v28}, Landroid/os/Handler;-><init>()V

    new-instance v29, Lcom/android/phone/CallFeaturesSetting$15;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting$15;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    const-wide/16 v30, 0x3e8

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_11

    :cond_40
    const/16 v28, 0x0

    goto/16 :goto_12

    :cond_41
    const/16 v28, 0x0

    goto/16 :goto_13

    :cond_42
    const/16 v28, 0x0

    goto/16 :goto_14

    :cond_43
    const-string v28, "1"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    const-string v28, "CallFeaturesSetting"

    const-string v29, "manual deregister for IMS"

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setAllServicesDisabled(I)V

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 23

    invoke-virtual/range {p0 .. p2}, Lcom/android/phone/CallFeaturesSetting;->checkingSoundSettingPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    :goto_0
    return v20

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v20, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "hearing_aid"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v21, v0

    const-string v22, "HACSetting"

    if-eqz v9, :cond_6

    const-string v20, "ON"

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    const-string v20, "OFF"

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_10

    const-string v20, "onPreferenceTreeClick: Voicemail Settings Preference is clicked."

    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v20

    if-eqz v20, :cond_a

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onPreferenceTreeClick: Invoking cfg intent "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    sget-boolean v20, Lcom/android/phone/CallFeaturesSetting;->mIsDuos:Z

    if-eqz v20, :cond_9

    const-string v20, "click mVoicemailSettings duos"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v20, "onPreferenceTreeClick: No Intent is available. Use default behavior defined in xml."

    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    const-string v20, "feature_multisim_dsda"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_b
    move-object/from16 v20, p2

    check-cast v20, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const-string v20, "menu_simplification"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    if-eqz v3, :cond_c

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v20, 0x7f04001a

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v20

    const v21, 0x7f100068

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v20, 0x7f0a0231

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v20

    const v21, 0x7f100065

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    new-instance v20, Lcom/android/phone/CallFeaturesSetting$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/phone/CallFeaturesSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v20, "call_overlay_popup_preference"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    move-object/from16 v0, p2

    if-ne v0, v5, :cond_d

    move-object/from16 v20, p2

    check-cast v20, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_40

    const/4 v13, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "call_overlay_popup_preference"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    invoke-super/range {p0 .. p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v20

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_f

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_f
    const v20, 0x102002c

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    new-instance v21, Lcom/android/phone/CallFeaturesSetting$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/app/Dialog;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerID:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerID:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "button_clir_key"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "button_clir_key"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "own_video_receivedcall"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "own_video_receivedcall"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "usecall_fail_option"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_7
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "usecall_fail_option"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mRcsCallSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    const-string v20, "CallFeaturesSetting"

    const-string v21, "rcs call plus preferenced clicked "

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v20, "com.vodafone.callplushybrid"

    const-string v21, "com.vodafone.callplushybrid.settings.CallPlusSettingsActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v20, "CallFeaturesSetting"

    const-string v21, "call plus activity started"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "emotional_eye_contact"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_8
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "emotional_eye_contact"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_1a

    const/4 v6, 0x1

    :goto_9
    int-to-byte v0, v6

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setDDTMData(B)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v6, 0x0

    goto :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->onProximitySensorPreferenceTreeClick()V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTEVideoCallEnable:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1d

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->onPopupIncomingCallPreferenceTreeClick()V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_1f

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/SystemDBInterface;->setCallerInfoCardMode(I)V

    :goto_a
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_1f
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/SystemDBInterface;->setCallerInfoCardMode(I)V

    goto :goto_a

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    :cond_21
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "extra_ringer"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_b
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "extra_ringer"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_26

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    new-instance v12, Landroid/content/Intent;

    const-string v20, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enable_call_protect_when_calling"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v20, "on off"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_c
    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionValue()V

    invoke-virtual {v4, v12}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    const-string v20, "Send broadcast - call protection status changed"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enable_call_protect_when_calling"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v20, "on off"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_c

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "internationalcall_settings"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_d
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "internationalcall_settings"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocall_settings"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_e
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocall_settings"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocall_mode"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_f
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocall_mode"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocallmessage_settings"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_10
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocallmessage_settings"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocall_speaker"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_11
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocall_speaker"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_11

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_31

    const/16 v20, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "automatic_accept"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_12
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "automatic_accept"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "volte_noti_settings"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_13
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "volte_noti_settings"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_13

    :cond_35
    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIpCall:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_37

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_36

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v20

    if-nez v20, :cond_36

    const-string v20, "CallSettingTab"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_14
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.callsettings.IpCall"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_15
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_36
    const-string v20, "CallSettingTab"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14

    :catch_1
    move-exception v8

    const-string v20, "CallFeaturesSetting"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startActivity() failed: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mESurfingDialUp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mESurfingDialUp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setESurfingDialUp(Z)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mESurfingDialUpHelp:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_39

    const/16 v20, 0x15e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3a

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSecondScreenCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3c

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_3b

    const/4 v15, 0x1

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "second_screen_call"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_3b
    const/4 v15, 0x0

    goto :goto_16

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mWifiCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->handleWiFiCall()V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSyncCallSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3e

    new-instance v12, Landroid/content/Intent;

    const-string v20, "com.kddi.agent.action.SETTING"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3f

    const-string v20, "volte_cmcc_data_enable_popup"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    sget v20, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->isMobileImsUtConnected()Z

    move-result v14

    const-string v20, "CallFeaturesSetting"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "icctype:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Data:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_c

    if-nez v14, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->showDataEnableDialog()V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVisualCallSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    const-string v20, "visual_call_center_callerid_info"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "CallFeaturesSetting"

    const-string v21, "start visual call apk "

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.VisualCallSettingActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_17
    const-string v20, "CallFeaturesSetting"

    const-string v21, "start visual call apk  ok"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_17

    :cond_40
    const/4 v13, 0x0

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v4

    if-le v4, v2, :cond_0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    const-string v4, "CallFeaturesSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MultiSIM] onPreferenceTreeClick :: mIsDualSimTurnedOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    if-eqz v4, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/phone/callsettings/CallSettingsTabFragment;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "TabTitleString"

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAdditionalSettings:Landroid/preference/Preference;

    if-ne p2, v4, :cond_1

    const-string v3, "CallFeaturesSetting"

    const-string v4, "[DUOS] : Additional settings"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallSettingMenu"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailDuos:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_2

    const-string v3, "CallFeaturesSetting"

    const-string v4, "[DUOS] : Voicemail"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallSettingMenu"

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonIpCall:Landroid/preference/Preference;

    if-ne p2, v4, :cond_3

    const-string v3, "CallFeaturesSetting"

    const-string v4, "[DUOS] : CHN IP Call"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallSettingMenu"

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public onPrepareDialog(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    return-void
.end method

.method public onResume()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v8, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "mobile_data"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v7, v10}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :goto_0
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v7

    if-le v7, v8, :cond_1

    iget-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->mSlot1IsOn:Z

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v10

    if-ne v7, v10, :cond_0

    iget-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->mSlot2IsOn:Z

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v10

    if-eq v7, v10, :cond_1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.phone"

    const-string v10, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    sget-boolean v7, Lcom/android/phone/CallFeaturesSetting;->mIsDuos:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getTabCount()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v7

    sput v7, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResume() mSimSlot : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v10, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v7}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onResume()V

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_7

    :try_start_0
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v10, "resume"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isWFCRegistered()Z

    move-result v7

    if-nez v7, :cond_b

    move v7, v8

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->updatePersonalizeSoundNoiseReduction(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "sip_settings_category_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_14

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-ne v4, v7, :cond_c

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v11, 0x20

    invoke-virtual {v7, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0

    :cond_b
    move v7, v9

    goto :goto_2

    :cond_c
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWifiCallCategory:Landroid/preference/PreferenceGroup;

    if-eq v4, v7, :cond_9

    if-eq v4, v6, :cond_9

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateNaturalSound()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateProximitySensorPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoLTEVideoCallEnablePreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateSecondScreenPreference()V

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateCallForwardingEnablePreference()V

    :cond_e
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updatePopupIncomingCallPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updatePowerkeyPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateSwipeCallMessage()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateOnlyContactWithPhone()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateAutoAnswer()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateEtcPreference()V

    const-string v7, "assisted_dialing_enable"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateCurrentCountrysummary()V

    :cond_f
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateInternationalCallServicePreference()V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateMyCallSoundPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateExtraRingerPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateImsVideoCallPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateWiFiCallPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateSpamcall()V

    const-string v7, "visual_call_center_callerid_info"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVisualCallSettings()V

    :cond_10
    const-string v7, "tmo_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "mpcs_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->toggleVolteSetting()V

    :cond_12
    iget-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    if-eqz v7, :cond_13

    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v7, :cond_13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " is called by SettingSearch"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    sput-boolean v9, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenu:Z

    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesSetting;->fromSettingSearch:Z

    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "proximity_sensor_preference"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_13
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v7}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v7}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v7

    if-nez v7, :cond_25

    :goto_6
    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->updatePersonalizeSoundNoiseReductionAndIncoimgPopup(Z)V

    :cond_14
    return-void

    :cond_15
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "call_popup_preference"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mPopupIncomingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_16
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "button_noise_reduction_key"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_17
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "button_natural_sound_key"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_18
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "extra_ringtone_preference"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_19
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "failoption_preference"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_1a
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "toggle_internationalcall"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_1b
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "voicecall_protection_preference"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_1c
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "volte_noti_preference"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mVoLTENotiPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_1d
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "auto_divert_to_voice_call"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallAutoDivertPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_1e
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "meterial_auto_divert_to_voice_call"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v7, "menu_simplification"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallAutoDivertPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_1f
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "video_call_quality_info"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallQualityInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_20
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "meterial_video_call_quality_info"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    const-string v7, "menu_simplification"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallQualityInfoPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_21
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "video_call_speaker"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_22
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "meterial_video_call_speaker"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    const-string v7, "menu_simplification"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mMeterialVideocallSpeakerPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_23
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "button_hac_key"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_24
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v10, "caller_info_card_preference_key"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerInfoCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v7, v10}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_25
    move v8, v9

    goto/16 :goto_6

    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResult() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "startSubActivity: starting requested subactivity"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResult() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMyCallSoundPreference()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isPossibleEnableMySoundWithoutToast()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v2}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isWFCRegistered()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    const-string v2, "support_safetycare"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_1
    const-string v2, "support_safetycare"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isWFCRegistered()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_9
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_b
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2
.end method

.method public updatePhoneStateListeners()V
    .locals 8

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/android/phone/CallFeaturesSetting;->containsSubId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$CallFeaturesSettingPhoneStateListener;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallFeaturesSetting$CallFeaturesSettingPhoneStateListener;-><init>(Lcom/android/phone/CallFeaturesSetting;I)V

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected updateVoiceNumberField()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceNumberField(). mSubMenuVoicemailSettings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->isVoicemailNumberDefault(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "*86"

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActionBar().getTabCount() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getTabCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSimSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    sput v2, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    :cond_3
    :goto_3
    sget v2, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    const-string v2, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVoiceNumberField. mSimSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOldVmNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mIsDualSimTurnedOn:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->mAddVoicemailFromDialer:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sput v4, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v2

    if-ne v2, v4, :cond_6

    sput v4, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    goto :goto_3

    :cond_6
    sput v5, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const v2, 0x7f0a0233

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method
