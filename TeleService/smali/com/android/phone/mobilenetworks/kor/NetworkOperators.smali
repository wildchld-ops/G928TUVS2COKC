.class public Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.super Landroid/preference/PreferenceActivity;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;
    }
.end annotation


# static fields
.field private static final RAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelect:I

.field private static mStartTimeoutTime:J


# instance fields
.field private cOperatorInfo:Landroid/preference/Preference;

.field dialog:Landroid/app/ProgressDialog;

.field private isFlagResetAll:Z

.field private isHelpMenuSelected:Z

.field private isNetworkList:Z

.field private isSetIMSI:I

.field private isWaitRadioPowerOff:Z

.field private mActionType:I

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoSelect:Landroid/preference/CheckBoxPreference;

.field private mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mCarrierSettings:Landroid/preference/PreferenceCategory;

.field private mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

.field private mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentOperator:Landroid/preference/PreferenceCategory;

.field protected mDataDependencyMet:Z

.field private mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEfRoaming:Ljava/lang/String;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mFailDialog:Landroid/app/AlertDialog;

.field private mGotoHomeAfterselection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIMSISetAuto:Landroid/preference/CheckBoxPreference;

.field private mIMSISetef1:Landroid/preference/CheckBoxPreference;

.field private mIMSISetef2:Landroid/preference/CheckBoxPreference;

.field private mIMSISetef3:Landroid/preference/CheckBoxPreference;

.field private mIMSISetef4:Landroid/preference/CheckBoxPreference;

.field private mIMSISettings:Landroid/preference/PreferenceCategory;

.field protected mIsForeground:Z

.field private mManualSearchBtn:Landroid/preference/Preference;

.field private mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field private mNetworkSelectMsg:Ljava/lang/String;

.field private mNotupdateSelectionState:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

.field private mRefreshMenu:Landroid/view/MenuItem;

.field private mResetAllListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRoamingExplainMsg:Landroid/preference/Preference;

.field private mRoamingLgt:Ljava/lang/String;

.field private mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

.field private mRoamingNetworkMsg:Landroid/preference/PreferenceCategory;

.field private mRoamingSponsor:Ljava/lang/String;

.field private mSearchButton:Landroid/preference/CheckBoxPreference;

.field private mSearchManualButton:Landroid/preference/CheckBoxPreference;

.field private mSearchPLMNDmin:I

.field private mSearchSwitchButton:Landroid/preference/SwitchPreference;

.field private mSetIMSICancelKeyListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mSetIMSICancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSetIMSIListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempPreference:Landroid/preference/Preference;

.field private mTimeToEnableData:Z

.field final pHandler:Landroid/os/Handler;

.field progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

.field private resetAll:Z

.field private sendStopNetworkQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSelect:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$18;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$18;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->RAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingLgt:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingSponsor:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendStopNetworkQuery:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isNetworkList:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isHelpMenuSelected:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFlagResetAll:Z

    iput v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isWaitRadioPowerOff:Z

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$1;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$4;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$4;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$7;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$7;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$9;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$9;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSetIMSIListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSetIMSICancelListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$13;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$13;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSetIMSICancelKeyListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mResetAllListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->pHandler:Landroid/os/Handler;

    return-void
.end method

.method private DoReseAll_AfterRadioPoweroff()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNotiForNoWait()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isWaitRadioPowerOff:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isWaitRadioPowerOff:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFlagResetAll:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectList()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSelect:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    return-void
.end method

.method static synthetic access$2500()J
    .locals 2

    sget-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->DoReseAll_AfterRadioPoweroff()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkSelectMsg()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNoti()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->networkSelectAuto()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getSelectedBandMode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->reboot()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setAutoBandMode(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNotiForNoWait()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperator:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->upateEfRoaming()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNotiForResetAll()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->readyDestory()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setIMSISelection()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    return p1
.end method

.method private checkDataConnectionAutoSelect()V
    .locals 7

    const v6, 0x7f0a0397

    const v5, 0x1040013

    const/4 v4, 0x0

    const-string v1, "NetworkOperators"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check data call...: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0391

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v1, "NetworkOperators"

    const-string v2, "Data is still not disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a018b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic(I)V

    goto :goto_0
.end method

.method private checkDataConnectionSearchButton()V
    .locals 6

    const v5, 0x7f0a0397

    const v4, 0x1040013

    const-string v1, "NetworkOperators"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check data call...: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0391

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v1, "NetworkOperators"

    const-string v2, "Data is still not disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0398

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    const-string v1, "NetworkOperators"

    const-string v2, "Show the Progressbar Preference."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d5

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "NetworkOperators"

    const-string v2, "DIALOG_NETWORK_LIST_LOAD_ALERT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto :goto_1

    :cond_4
    const-string v1, "NetworkOperators"

    const-string v2, "DIALOG_NETWORK_LIST_LOAD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->loadNetworksList()V

    goto/16 :goto_0
.end method

.method private checkDataConnectionSelectList()V
    .locals 6

    const v5, 0x7f0a0397

    const v4, 0x1040013

    const-string v1, "NetworkOperators"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check data call...: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0391

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v1, "NetworkOperators"

    const-string v2, "Data is still not disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a018b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectList()V

    goto :goto_0
.end method

.method private convertOperatorRat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v3, "LTE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "L"

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, p1

    :goto_1
    return-object v1

    :cond_0
    const-string v3, "UMTS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "W"

    goto :goto_0

    :cond_1
    const-string v3, "GERAN"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "G"

    goto :goto_0

    :cond_2
    const-string p1, "?"

    goto :goto_0

    :cond_3
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->RAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    aget-object p1, v2, v3

    const/4 v0, 0x1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_4

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v1, p1

    goto :goto_1
.end method

.method private convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;
    .locals 5

    const-string v2, "X"

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "45005"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "45006"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "Forbidden network"

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v4, "disabled_pref_key"

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v2, "O"

    const-string v4, "Available network"

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Forbidden network"

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v4, "Unknown network"

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f0a0100

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    return-void

    :cond_0
    const v0, 0x7f0a00fe

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "NetworkOperators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network query failed with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0103

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$16;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$16;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_select_network"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_5

    const-string v5, "NetworkOperators"

    const-string v6, "Return to auto"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_8

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a07f2

    new-array v7, v9, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDisableNetwork()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, ""

    const-string v1, ""

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "(O)"

    const-string v6, "(X)"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    const-string v6, "Forbidden network"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " preference.getTitle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v5, "NetworkOperators"

    const-string v6, "Return to manual"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_7
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    if-eqz p1, :cond_9

    instance-of v5, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_9

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0106

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "O"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTempSubStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v5, "O"

    const-string v6, "X"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private displayNetworkSelectionSucceeded(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v3, "NetworkOperators"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully registered on a network. Selected mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a07f3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$17;

    invoke-direct {v4, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$17;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0107

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0104

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkSelectMsg:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    if-eqz v0, :cond_0

    const-string v0, "showDialog___DIALOG_NETWORK_SELECTION"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private getDualImsiString()Ljava/lang/String;
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-array v4, v13, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSponImsi()[Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v9, "ril.simtype"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "[]"

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    if-nez v4, :cond_2

    new-array v4, v13, [Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v4, v7

    const-string v9, ""

    aput-object v9, v4, v8

    const-string v9, ""

    aput-object v9, v4, v12

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    :goto_0
    if-eqz v0, :cond_4

    const-string v5, ""

    const-string v7, "getDualImsiString(), isAirplaneModeOn is true, return"

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    move-object v6, v5

    :goto_1
    return-object v6

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    const-string v9, "3"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v5, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDualImsiString(), SIM Type is not 3, simType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", srtingIMSI = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    move-object v6, v5

    goto :goto_1

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isServiceState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    if-nez v1, :cond_6

    const-string v5, ""

    move-object v6, v5

    goto :goto_1

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "450"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v5, "[Zone1]"

    :cond_7
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDualImsiString(), srtingIMSI = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    move-object v6, v5

    goto :goto_1

    :cond_8
    aget-object v9, v4, v7

    if-eqz v9, :cond_9

    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v2, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v4, v7

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v5, "[Zone2]"

    goto :goto_2

    :cond_9
    aget-object v9, v4, v8

    if-eqz v9, :cond_a

    aget-object v9, v4, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v2, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v8, v4, v8

    invoke-virtual {v8, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v5, "[Zone2]"

    goto :goto_2

    :cond_a
    aget-object v8, v4, v12

    if-eqz v8, :cond_b

    aget-object v8, v4, v12

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v2, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v4, v12

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v5, "[Zone2]"

    goto :goto_2

    :cond_b
    const-string v5, "[]"

    goto :goto_2
.end method

.method private getNetworkSelectMsg()I
    .locals 2

    const v0, 0x7f0a07f4

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0a07f5

    goto :goto_0
.end method

.method private getNetworkSelectTitle()I
    .locals 1

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a07b7

    :goto_0
    return v0

    :cond_0
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a07be

    goto :goto_0

    :cond_1
    const v0, 0x7f0a07f4

    goto :goto_0
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedBandMode()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    const-string v2, ""

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f110004

    long-to-int v7, v0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110005

    long-to-int v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "NetworkOperators"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move-object v2, p1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, ""

    goto :goto_0
.end method

.method private loadNetworksList()V
    .locals 3

    const-string v1, "Load networks list..."

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetworkOperators"

    const-string v2, "Could not delegate query request to the service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NetworkOperators"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private networkSelectAuto()V
    .locals 3

    const-string v1, "NetworkOperators"

    const-string v2, "networkSelectAuto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v13, "Networks list loaded, hide progress panel"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const-string v13, "menu_simplification"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x7d3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V

    :cond_0
    const-string v13, "NetworkOperators"

    const-string v14, "remove NETWORK_SEARCH_TICK"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v13, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v13, v14}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string v13, "menu_simplification"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->searchCompletedNetworkOperator()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    const-string v13, "feature_lgt"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isNetworkList:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isHelpMenuSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->invalidateOptionsMenu()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_a

    const-string v13, "Error while querying available networks"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkQueryFailed(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string v13, "feature_skt"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x7d3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V

    :cond_7
    const-string v13, "NetworkOperators"

    const-string v14, "remove NETWORK_SEARCH_TICK"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/16 v13, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_1

    :cond_a
    if-nez p1, :cond_b

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    goto :goto_2

    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v9}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v9}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->convertOperatorRat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->convertOperatorRat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "filtered: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/OperatorInfo;

    new-instance v2, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/preference/Preference;->setPersistent(Z)V

    const-string v12, ""

    invoke-virtual {v9}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    const-string v13, "feature_ktt"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0804

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "("

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_5
    const v13, 0x7f07002d

    invoke-virtual {v2, v13}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_e
    const-string v13, "feature_lgt"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "G"

    const-string v15, "2G"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "W"

    const-string v14, "3G"

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "L"

    const-string v14, "LTE"

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0804

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "["

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "MCC "

    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "MNC "

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0804

    const/4 v13, 0x5

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v13

    const/16 v17, 0x1

    const-string v18, "["

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v17

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v13

    const/4 v13, 0x3

    const-string v17, "["

    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v13

    const/4 v13, 0x4

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v13

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    const/4 v13, 0x1

    if-ge v10, v13, :cond_5

    const-string v13, "Network list preference is empty!"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkQueryFailed(I)V

    goto/16 :goto_2
.end method

.method private readyDestory()V
    .locals 3

    const-string v1, "readyDestory"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The last known met: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDataDependencyMet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDataDependencyMet:Z

    if-nez v1, :cond_0

    const-string v1, "NetworkOperators"

    const-string v2, "Re-enabling data dependency..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Service not registered"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reboot()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d4

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private removeSpon(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "area_select"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    const-string v3, "ef_sponimsi2"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :pswitch_0
    const-string v3, "ef_sponimsi2"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    const-string v3, "ef_sponimsi3"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    const-string v3, "ef_sponimsi4"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private searchCompletedNetworkOperator()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private selectList()V
    .locals 11

    const/16 v10, 0xc8

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ss.getIsManualSelection()? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ss.getOperatorNumeric() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ss.getRadioTechnology() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ni.getOperatorRat(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "1"

    const-string v6, "ril.IsManualSelection"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    if-eq v5, v8, :cond_1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    const/16 v6, 0xe

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WCDMA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    if-eq v5, v9, :cond_3

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    if-ne v5, v7, :cond_7

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GERAN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    iput-boolean v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "same plmn --> Do nothing"

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded(I)V

    :try_start_0
    const-string v5, "dismissDialog___EVENT_NETWORK_SELECTION_DONE"

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dismissDialog(I)V

    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_5
    const-string v5, "Manul selection and not same plmn --> Do selecting"

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v5, "ril.network_manual_set.rat"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, "mNetworkMap.get(selectedCarrier) is null"

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v6, v5, v0}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    goto :goto_1

    :cond_7
    const-string v5, "Not same plmn --> Do selecting"

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v5, "ril.network_manual_set.rat"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v5, "mNetworkMap.get(selectedCarrier) is null"

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v6, v5, v0}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private selectNetworkAutomatic(I)V
    .locals 5

    const-string v2, "Select network automatically..."

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :goto_1
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NetworkOperators"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...exception in automatic network selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendImsiStatusChangeNoti()V
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v4, "sendImsiStatusChangeNoti!!!"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    throw v4

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private sendImsiStatusChangeNotiForNoWait()V
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v4, "sendImsiStatusChangeNotiForNoWait!!! SEND 0x10"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    throw v4

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private sendImsiStatusChangeNotiForResetAll()V
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v4, "sendImsiStatusChangeNotiForResetAll!!! SEND 0x00"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    throw v4

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private setAutoBandMode(Landroid/os/AsyncResult;)V
    .locals 7

    const/16 v6, 0x3e9

    const-string v3, "NetworkOperators"

    const-string v4, "setAutoBandMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    :cond_0
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    const-string v3, "NetworkOperators"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAutoBandMode :: old_preferred_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new_preferred_mode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v1, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setDefaultFPLMN()V
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "setDefaultFPLMN"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v1, "54F08054F050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setFPLMN"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v4, "NoSuchMethodException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "IllegalArgumentException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v4, "IllegalAccessException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v4, "InvocationTargetException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDefaultLOCI()V
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "setDefaultLOCI"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v1, "FFFFFFFFFFFFFF0000FF01"

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setLOCI"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v4, "NoSuchMethodException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "IllegalArgumentException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v4, "IllegalAccessException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v4, "InvocationTargetException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDefaultPSLOCI()V
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "setDefaultPSLOCI"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v1, "FFFFFFFFFFFFFFFFFFFF0000FF01"

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setPSLOCI"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v4, "NoSuchMethodException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "IllegalArgumentException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v4, "IllegalAccessException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v4, "InvocationTargetException"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setIMSISelection()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-array v3, v7, [B

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFlagResetAll:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setDefaultFPLMN()V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setDefaultPSLOCI()V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setDefaultLOCI()V

    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFlagResetAll:Z

    :cond_0
    iput v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    aput-byte v6, v3, v6

    const-string v4, "00"

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    :try_start_0
    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setRoaming"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    const/16 v4, 0x384

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSetIMSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    if-ne v4, v7, :cond_2

    iput v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    const/16 v4, 0x10

    aput-byte v4, v3, v6

    :try_start_2
    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setRoaming"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_d

    :goto_3
    const-string v4, "10"

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    if-ne v4, v8, :cond_3

    iput v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    const/16 v4, 0x11

    aput-byte v4, v3, v6

    :try_start_3
    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setRoaming"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    const-string v4, "11"

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    if-ne v4, v9, :cond_4

    iput v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    const/16 v4, 0x12

    aput-byte v4, v3, v6

    :try_start_4
    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setRoaming"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    const-string v4, "12"

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    if-ne v4, v10, :cond_5

    iput v10, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    const/16 v4, 0x13

    aput-byte v4, v3, v6

    :try_start_5
    const-class v4, Lcom/android/internal/telephony/IccCard;

    const-string v5, "setRoaming"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    const-string v4, "13"

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v4, "Not support!!!"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v4, "BadTokenException occured"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    goto :goto_6

    :catch_2
    move-exception v4

    goto :goto_6

    :catch_3
    move-exception v4

    goto :goto_6

    :catch_4
    move-exception v4

    goto :goto_6

    :catch_5
    move-exception v4

    goto :goto_5

    :catch_6
    move-exception v4

    goto :goto_5

    :catch_7
    move-exception v4

    goto :goto_5

    :catch_8
    move-exception v4

    goto :goto_5

    :catch_9
    move-exception v4

    goto/16 :goto_4

    :catch_a
    move-exception v4

    goto/16 :goto_4

    :catch_b
    move-exception v4

    goto/16 :goto_4

    :catch_c
    move-exception v4

    goto/16 :goto_4

    :catch_d
    move-exception v4

    goto/16 :goto_3

    :catch_e
    move-exception v4

    goto/16 :goto_3

    :catch_f
    move-exception v4

    goto/16 :goto_3

    :catch_10
    move-exception v4

    goto/16 :goto_3

    :catch_11
    move-exception v4

    goto/16 :goto_0

    :catch_12
    move-exception v4

    goto/16 :goto_0

    :catch_13
    move-exception v4

    goto/16 :goto_0

    :catch_14
    move-exception v4

    goto/16 :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    const-string v1, "setMobileDataEnabled"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDataDependencyMet:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_DEPENDENCY_MET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Met"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private upateEfRoaming()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v9, "gsm.sim.roaming"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    const/4 v6, 0x1

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    :cond_0
    const-string v9, "00"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    :goto_0
    sput v9, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSelect:I

    new-array v7, v14, [Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_4

    if-eq v6, v11, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getSponImsi()[Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    :goto_1
    aget-object v1, v7, v10

    aget-object v2, v7, v11

    aget-object v3, v7, v13

    new-array v8, v14, [Ljava/lang/String;

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imsi = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", efSpon1 = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", efSpon2 = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", efSpon3 = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_5

    aget-object v9, v8, v4

    if-eqz v9, :cond_1

    const-string v9, ""

    aget-object v12, v8, v4

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const-string v9, "remove!!!"

    invoke-static {v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeSpon(I)V

    :cond_2
    aget-object v9, v8, v4

    invoke-direct {p0, v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v9, v11

    goto :goto_0

    :cond_4
    const-string v9, ""

    aput-object v9, v7, v10

    const-string v9, ""

    aput-object v9, v7, v11

    const-string v9, ""

    aput-object v9, v7, v13

    goto :goto_1

    :cond_5
    sget v9, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSelect:I

    if-nez v9, :cond_8

    invoke-virtual {p0, v10}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    :cond_6
    :goto_3
    if-ne v6, v11, :cond_7

    invoke-virtual {p0, v10}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_7
    return-void

    :cond_8
    const-string v9, "10"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0, v11}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    goto :goto_3

    :cond_9
    const-string v9, "11"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    goto :goto_3

    :cond_a
    const-string v9, "12"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    goto :goto_3

    :cond_b
    const-string v9, "13"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    goto :goto_3

    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnKnown case efRoaming = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    const-string v9, "45006"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v11}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    goto :goto_3
.end method

.method private final updateDataState()V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    const-string v1, "Update data state"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "NetworkOperators"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current data state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "NetworkOperators"

    const-string v2, "Current data state: disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    const/16 v2, -0x2711

    if-ne v1, v2, :cond_1

    const-string v1, "NetworkOperators"

    const-string v2, "Searching..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    const/16 v2, -0x2712

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    const/16 v2, -0x2713

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v0, "updateRadioButtons : activated preference is null"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    const-string v0, "updateRadioButtons : setChecked mAutoSelectRadioButton"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    const-string v0, "updateRadioButtons : setChecked mManualSelectRadioButton"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method checkIMSI(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_d
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_f
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_10
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_11
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_12
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_13
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_14
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v5

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v1, v4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    const-class v4, Landroid/telephony/TelephonyManager;

    const-string v5, "getSponImsi"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v3, :cond_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method isLteRoamingOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendStopNetworkQuery:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f070014

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->addPreferencesFromResource(I)V

    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v8, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v8, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const-string v8, "list_networks_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    const-string v8, "gsm.sim.roaming"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "efRoaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isSetEfRoaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const v8, 0x7f0a07fb

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    const-string v8, "switch_button_auto_select_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    const-string v8, "radio_button_auto_select_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const-string v8, "radio_button_manual_select_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const-string v8, "roaming_network_select_list"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    const-string v8, "progressbar_search_network_category"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    const-string v8, "progressbar_search_network_info"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    const-string v8, "radio_button_roaming_select_category_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v9, "NetworkOperators"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SETTING_AUTO_SELECT_NETWORK : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "auto_select_network"

    const/4 v12, 0x1

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_c

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "auto_select_network"

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_d

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v8, p0}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v8, p0}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_select_network"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-direct {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    :cond_3
    :goto_3
    const-string v8, "button_srch_netwrks_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    const-string v8, "button_auto_select_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v8, "button_srch_netwrks_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v8, "button_auto_select_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_4
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "button_srch_networks_manually"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    :goto_5
    const-string v8, "current_operator"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperator:Landroid/preference/PreferenceCategory;

    const-string v8, "roaming_carrier_settings"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkMsg:Landroid/preference/PreferenceCategory;

    const-string v8, "roaming_explain_msg"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingExplainMsg:Landroid/preference/Preference;

    const-string v8, "area_select"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;

    const-string v8, "button_select_imsi_auto_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    const-string v8, "ef_sponimsi1"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    const-string v8, "ef_sponimsi2"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    const-string v8, "ef_sponimsi3"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    const-string v8, "ef_sponimsi4"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    const-string v8, "carrier_select"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCarrierSettings:Landroid/preference/PreferenceCategory;

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_4
    :goto_6
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "current_operator_info_lgt"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->cOperatorInfo:Landroid/preference/Preference;

    :goto_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRegisteredOnNetwork()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Operator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const v8, 0x7f0a07e5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getDualImsiString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->cOperatorInfo:Landroid/preference/Preference;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_8
    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f0a07e6

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_6
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f0a07e7

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_7
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "current_operator"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v8, "button_auto_select_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v8, "button_auto_select_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const-string v8, "button_srch_netwrks_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_9

    const-string v8, "button_srch_netwrks_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    :goto_9
    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1f4

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_e
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-direct {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    goto/16 :goto_3

    :cond_f
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_10
    const-string v8, "button_srch_netwrks_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    const-string v8, "button_auto_select_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_5

    :cond_11
    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_12
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_13
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_14
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_15
    const-string v8, "current_operator_info"

    invoke-virtual {p0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->cOperatorInfo:Landroid/preference/Preference;

    goto/16 :goto_7

    :cond_16
    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->cOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->cOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_17
    const-string v8, "roaming_carrier_settings"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v8, "area_select"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v8, "carrier_select"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v6, 0x1040009

    const v5, 0x1040013

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v3, 0x64

    if-eq p1, v3, :cond_0

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_0

    const/16 v3, 0x12c

    if-eq p1, v3, :cond_0

    const/16 v3, 0x190

    if-eq p1, v3, :cond_0

    const/16 v3, 0x258

    if-eq p1, v3, :cond_0

    const/16 v3, 0x384

    if-ne p1, v3, :cond_4

    :cond_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0a00ff

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    :cond_1
    :goto_2
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0a010c

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0a07ec

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0a07be

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    const/16 v3, 0x4b0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0a07e3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/32 v6, 0x1d4c0

    invoke-direct {p0, v6, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->pHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->start()V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0a07ed

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a07ee

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x2bc

    if-ne p1, v1, :cond_6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a07ef

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x320

    if-ne p1, v1, :cond_7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a07c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a07f0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSetIMSIListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSetIMSICancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSetIMSICancelKeyListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a07e9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a07f1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mResetAllListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x258 -> :sswitch_3
        0x384 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const v8, 0x7f0a07ea

    const v7, 0x7f0200c1

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0a07e9

    invoke-interface {p1, v4, v6, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02008a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x2

    invoke-interface {p1, v4, v3, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x3

    invoke-interface {p1, v4, v3, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v3, 0x7f0a07eb

    invoke-interface {p1, v4, v5, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRefreshMenu:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRefreshMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onDestroy()V
    .locals 3

    const-string v1, "onDestroy"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The last known met: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDataDependencyMet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDataDependencyMet:Z

    if-nez v1, :cond_0

    const-string v1, "NetworkOperators"

    const-string v2, "Re-enabling data dependency..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Service not registered"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    const-string v0, "onKeyDown"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v2, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isHelpMenuSelected:Z

    const-string v2, "com.android.phone.mobilenetworks.kor"

    const-string v3, "com.android.phone.mobilenetworks.kor.RoamingNetworkSelectHelp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "NetworkOperators"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isHelpMenuSelected:Z

    const-string v2, "com.android.phone.mobilenetworks.kor"

    const-string v3, "com.android.phone.mobilenetworks.kor.RoamingNetworkListHelp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "NetworkOperators"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Show network selection dialog"

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string v1, "onPause"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinishing()? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; time to enable data? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    if-eqz v1, :cond_5

    :cond_0
    const-string v1, "NetworkOperators"

    const-string v2, "Re-enabling data dependency..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_5

    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendStopNetworkQuery:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/16 v5, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->checkDisableNetworkSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/16 v6, 0x1f4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v4, "menu_simplification"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "use the switchbutton onPreferenceChange"

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    const/16 v3, 0x2bc

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "select AutoSelectRadioButton"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic(I)V

    goto :goto_0

    :cond_4
    const-string v4, "selected ManualSelectRadioButton"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_5
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->checkDisableNetworkSelection()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v4, v3}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_8
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v4, v3}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSearchBtn:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_11

    const/16 v4, 0x2bc

    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_select_network"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_e

    const-string v4, "NetworkOperators"

    const-string v5, "Return to auto"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_d
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v4, "NetworkOperators"

    const-string v5, "Return to manual"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_10
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_11
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSearchBtn:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network registry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ril.skt.network_regist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->checkDisableNetworkSelection()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_13
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSearchBtn:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v3, "Show network selection dialog"

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkSelectTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkSelectMsg()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_16
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_17
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V

    goto/16 :goto_0

    :cond_18
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_19
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1a
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1b
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionAutoSelect()V

    goto/16 :goto_0

    :cond_1c
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->cOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_1d
    const-string v4, "ril.initPB"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril.initPB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a07e4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    goto/16 :goto_0

    :cond_1e
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    :goto_1
    const/16 v3, 0x320

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto/16 :goto_0

    :cond_1f
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    iput v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    goto :goto_1

    :cond_20
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    iput v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    goto :goto_1

    :cond_21
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetef3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    goto :goto_1

    :cond_22
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkIMSI(I)V

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I

    goto :goto_1

    :cond_23
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingExplainMsg:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSelectList()V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRefreshMenu:Landroid/view/MenuItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "893 isNetworkList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isNetworkList:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isNetworkList:Z

    if-eqz v3, :cond_1

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRefreshMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    :cond_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRefreshMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iput-boolean v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    iput-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    const-string v1, "NetworkOperators"

    const-string v2, "Data connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V

    const-string v1, "dialog.isShowing()"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :cond_3
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->upateEfRoaming()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIMSISetAuto is Checked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISetAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_4
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSktSim()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLgtSim()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isLteRoamingOn()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_7
    :goto_0
    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->cOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isHelpMenuSelected:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    const-string v0, "onUserLeaveHint"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
