.class public Lcom/android/settings/DataUsageSummary;
.super Lcom/android/settings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;,
        Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;,
        Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;,
        Lcom/android/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings/DataUsageSummary$AppItem;,
        Lcom/android/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isATT:Z

.field private static isMTR:Z

.field private static isSPR:Z

.field private static isTMB:Z

.field private static isVZW:Z

.field private static isVolteVTOnCommonIms:Z

.field private static mAttDeviceHealthEnabled:Z

.field private static mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

.field private static mIsIMSInitialized:Z

.field private static mLimitCheck:Z

.field public static mSelectDisplayUnit:I

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private isKnoxmode:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field private mAirplanemodeObserver:Landroid/database/ContentObserver;

.field private mAlertAtWarning:Landroid/widget/Switch;

.field private mAlertAtWarningListener:Landroid/view/View$OnClickListener;

.field private mAlertAtWarningView:Landroid/view/View;

.field private mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

.field private mAlertTotalSentListener:Landroid/view/View$OnClickListener;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDataRestriction:Landroid/view/View;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private final mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

.field private mBinding:Z

.field private mBound:Z

.field private mChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCheckphonebalance:Landroid/view/View;

.field private mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

.field private mConfirmAtBoot:Landroid/widget/Switch;

.field private mConfirmAtBootListener:Landroid/view/View$OnClickListener;

.field private mConfirmAtBootView:Landroid/view/View;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingView:Landroid/view/View;

.field private mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

.field private mDataRoaming_Volte:Landroid/view/View;

.field private mDialog:Landroid/app/DialogFragment;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mDisplayUnitDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentTab:Ljava/lang/String;

.field private mLifedata_menu:Landroid/view/View;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuBackgroundTraffic:Landroid/view/MenuItem;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPCOSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSavedIDlist:[Ljava/lang/String;

.field private mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mToddlermodeObserver:Landroid/database/ContentObserver;

.field private mTopupphonebalance:Landroid/view/View;

.field private mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

.field private mTotalReceive_icon:Landroid/widget/ImageView;

.field private mTotalReceive_menu:Landroid/view/View;

.field private mTotalSent_icon:Landroid/widget/ImageView;

.field private mTotalSent_menu:Landroid/view/View;

.field private mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

.field private mlifetimeMessenger:Landroid/os/Messenger;

.field private rilHandler:Landroid/os/Handler;

.field private wifiCycleDuration:J

.field private wifiCycleEnd:J

.field private wificyclestart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DataUsageSummary;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isVolteVTOnCommonIms:Z

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->mIsIMSInitialized:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->mLimitCheck:Z

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->isATT:Z

    sput-boolean v1, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    sput v1, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$34;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$34;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/HighlightingFragment;-><init>()V

    iput v3, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    const-wide v0, 0x90321000L

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wifiCycleDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    new-instance v0, Lcom/android/settings/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$1;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$2;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DataUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$3;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPCOSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$4;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/DataUsageSummary$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$5;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$6;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$7;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$12;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    new-instance v0, Lcom/android/settings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$13;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$16;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$17;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$18;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$18;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$19;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$19;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$20;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$20;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$21;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$21;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$22;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$22;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$23;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$23;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$24;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$24;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$25;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$25;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$26;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$26;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$27;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$27;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$28;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$28;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$29;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$29;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$30;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$30;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$31;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$31;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/DataUsageSummary$32;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$32;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/DataUsageSummary$33;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$33;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    new-instance v0, Lcom/android/settings/DataUsageSummary$35;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$35;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/DataUsageSummary$36;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$36;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/DataUsageSummary$37;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$37;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummary;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/DataUsageSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/DataUsageSummary;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DataUsageSummary;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    return v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/DataUsageSummary;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/DataUsageSummary;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->resetTimeData(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/settings/DataUsageSummary;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateView()V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$6100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVolteVTOnCommonIms:Z

    return v0
.end method

.method static synthetic access$6200()Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;
    .locals 1

    sget-object v0, Lcom/android/settings/DataUsageSummary;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->setBackgroundTrafficOn()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->setBackgroundTrafficOff()V

    return-void
.end method

.method static synthetic access$6602(Lcom/android/settings/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/settings/DataUsageSummary;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->getTimeData(II)V

    return-void
.end method

.method static synthetic access$6802(Lcom/android/settings/DataUsageSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/settings/DataUsageSummary;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setSummaryfortimedata([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    return-void
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v1, "mobile"

    goto :goto_0

    :pswitch_2
    const-string v1, "3g"

    goto :goto_0

    :pswitch_3
    const-string v1, "4g"

    goto :goto_0

    :pswitch_4
    const-string v1, "ent1"

    goto :goto_0

    :pswitch_5
    const-string v1, "wifi"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private connectToRilService_lifetime()V
    .locals 4

    const-string v1, "DataUsage"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11

    const v8, 0x10010

    sget-object v9, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    const v10, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x44800000    # 1024.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    long-to-float v1, p1

    const v2, 0x7f0a0f36

    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    div-float/2addr v1, v5

    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    div-float/2addr v1, v5

    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    div-float/2addr v1, v5

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v0, ""

    cmpl-float v4, v1, v9

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    const-string v0, "<"

    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    const-string v3, "0.01"

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0f39

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13

    const/high16 v11, 0x44800000    # 1024.0f

    const v10, 0x3c23d70a    # 0.01f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-float v1, p1

    const v2, 0x7f0a0f37

    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suffix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    div-float/2addr v1, v11

    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    div-float/2addr v1, v11

    :cond_0
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v0, ""

    cmpl-float v4, v1, v9

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    const-string v0, "<"

    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    const-string v3, "0.01"

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0f39

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getActiveSubscriberId(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBackgroundTrafficChecked()Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bg_traffic_service_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBackgroundTrafficEnabled()Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bg_traffic_service_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubTag(I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimeData(II)V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getOemData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .locals 1

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .locals 6

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasReadyEnterpriseNetwork(): sim state for slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSplitBillingEnabled() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasReadyMobileRadio() :is TYPE_MOBILE ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,sim state for slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v2, 0x7f04014d

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f020233

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x2

    const v2, 0x7f04014d

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f020233

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "DataUsage"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isAppDetailMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTimeData(I)V
    .locals 7

    const/16 v6, 0xb

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-nez p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " resetTimeData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setBackgroundTrafficOff()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bg_auto_optimization_setup"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.skt.apra.action.SERVICE_STATE_CHANGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra.IS_SERVICE_ON"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "DataUsage"

    const-string v3, "SERVICE OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBackgroundTrafficOn()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bg_auto_optimization_setup"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.skt.apra.action.SERVICE_STATE_CHANGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra.IS_SERVICE_ON"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "DataUsage"

    const-string v3, "SERVICE ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "MDES"

    const/16 v5, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "MDES"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private static setPreferenceDisable(Landroid/view/View;Z)V
    .locals 3

    const v2, 0x1020016

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x1020018

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2

    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static setPreferenceTitle(ZLandroid/view/View;I)V
    .locals 2

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method private setSummaryfortimedata([B)V
    .locals 14

    const-wide/16 v12, 0x0

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v0

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v6

    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v2

    const/16 v8, 0x18

    invoke-virtual {p0, p1, v11, v8}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v4

    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSummaryfortimedata :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    cmp-long v8, v2, v12

    if-lez v8, :cond_0

    cmp-long v8, v4, v12

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    add-long v10, v2, v4

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateAppDetail()V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v18, 0x0

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v14, :cond_2

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    const v20, 0x7f040079

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const v20, 0x7f100129

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    :goto_1
    return-void

    :cond_1
    const v20, 0x7f040079

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const v20, 0x7f100129

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz v18, :cond_4

    const v20, 0x7f10012a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    move-object/from16 v4, v16

    array-length v12, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    const/4 v13, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/settings/DataUsageSummary$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$14;-><init>(Lcom/android/settings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v20

    if-nez v20, :cond_7

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0c73

    invoke-static/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 13

    const v12, 0x7f0a0f44

    const v11, 0x7f0a0c84

    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_1
    move v3, v7

    :goto_1
    if-nez v1, :cond_2

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_4

    const-string v7, "DataUsage"

    const-string v8, "no tab selected; hiding body"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v3, v8

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v8}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    move v6, v7

    :goto_2
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v10

    if-nez v10, :cond_a

    move v4, v7

    :goto_3
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    if-eqz v4, :cond_b

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v7, "mobile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0c6d

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0c92

    invoke-virtual {p0, v9}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const v9, 0x7f0a1440

    invoke-static {v6, v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v6, v7, v12}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    sget-boolean v7, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v7, :cond_6

    sget-boolean v7, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v7, :cond_c

    :cond_6
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a0f3d

    invoke-static {v6, v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    :goto_5
    sget-boolean v7, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const v9, 0x7f0a0f3a

    invoke-static {v6, v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-static {v10, v11}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v9, v10, v11}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    :cond_9
    move v6, v8

    goto/16 :goto_2

    :cond_a
    move v4, v8

    goto/16 :goto_3

    :cond_b
    move v7, v9

    goto/16 :goto_4

    :cond_c
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a0c61

    invoke-static {v6, v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    goto :goto_5

    :cond_d
    const-string v7, "Slot"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v2, 0x0

    :goto_7
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v7

    if-ge v2, v7, :cond_8

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0c6d

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0c92

    invoke-virtual {p0, v9}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a0c61

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    sget-boolean v7, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_f
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    const-string v7, "3g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0c6e

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v7, v12}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a0c63

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    sget-boolean v7, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_12
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_13
    const-string v7, "4g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0c6f

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v7, v12}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a0c62

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    sget-boolean v7, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_14
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_15
    const-string v7, "ent1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_16
    const-string v7, "wifi"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_17
    const-string v7, "ethernet"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iput-boolean v8, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_18
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown tab: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings/DataUsageSummary$CycleItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide v20, 0x7fffffffffffffffL

    const-wide/high16 v18, -0x8000000000000000L

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v17

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    :cond_2
    const/16 v16, 0x0

    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    if-nez v17, :cond_3

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    :cond_3
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_4

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v8, v6

    const/16 v16, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    :cond_5
    if-nez v16, :cond_9

    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    if-eqz v4, :cond_7

    move-wide/from16 v8, v18

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    const-wide/16 v14, 0x0

    cmp-long v4, v10, v14

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    cmp-long v4, v8, v10

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    invoke-static {v8, v9, v4}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    const-string v4, "Varun"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v8, v6

    goto :goto_1

    :cond_7
    move-wide/from16 v8, v18

    :goto_2
    cmp-long v4, v8, v20

    if-lez v4, :cond_8

    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v8, v6

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/DataUsageSummary$CycleItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_3
    return-void

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_3

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_3
.end method

.method private updateDetailData()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    add-long v24, v20, v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz v10, :cond_7

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    :goto_2
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_8

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->ensureLayoutTransitions()V

    return-void

    :cond_4
    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    :cond_7
    const-wide/16 v24, 0x0

    goto/16 :goto_2

    :cond_8
    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_2

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateMenuTitles()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getBackgroundTrafficChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const v1, 0x7f0a0f52

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0a0c4d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0a0c50

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0a0c52

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const v1, 0x7f0a0f51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0a0c4c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0a0c4f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0a0c51

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private updatePolicy(Z)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toddler_mode_switch"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    const/4 v4, 0x1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    const-string v6, "mobile"

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v7, "Slot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    :cond_5
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    if-nez v6, :cond_9

    const-string v6, "DataUsage"

    const-string v7, "mPolicyEditor is null. stop update policy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :mPolicyEditor ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mTemplate ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :policy ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_3
    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v6, :cond_16

    :cond_a
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    if-eqz v5, :cond_17

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :cond_b
    :goto_6
    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_c
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v6, "DataUsage"

    const-string v7, "updatePolicy(), mDataEnabledView.setVisibility(View.GONE) for CTC model"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_7
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v6, :cond_e

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_1b

    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    if-eqz v6, :cond_f

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    if-eqz v0, :cond_1c

    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    if-eqz v6, :cond_10

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    if-eqz v0, :cond_1d

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    if-eqz v6, :cond_11

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    if-eqz v0, :cond_1e

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v6

    if-nez v6, :cond_1f

    const/4 v3, 0x1

    :goto_c
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    if-eqz v0, :cond_20

    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    invoke-static {v6, v3}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    :cond_12
    if-eqz p1, :cond_6

    invoke-direct {p0, v5}, Lcom/android/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    goto/16 :goto_2

    :cond_13
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v5, :cond_14

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    :goto_e
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v5, :cond_15

    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    :goto_f
    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->mLimitCheck:Z

    goto/16 :goto_3

    :cond_14
    const/4 v6, 0x0

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    goto :goto_f

    :cond_16
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_18
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto/16 :goto_6

    :cond_19
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_1a

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1a
    const/16 v6, 0x8

    goto :goto_10

    :cond_1b
    const/16 v6, 0x8

    goto/16 :goto_8

    :cond_1c
    const/16 v6, 0x8

    goto/16 :goto_9

    :cond_1d
    const/16 v6, 0x8

    goto/16 :goto_a

    :cond_1e
    const/16 v6, 0x8

    goto/16 :goto_b

    :cond_1f
    const/4 v3, 0x0

    goto :goto_c

    :cond_20
    const/16 v6, 0x8

    goto :goto_d
.end method

.method private updateTabs()V
    .locals 15

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->clearAllTabs()V

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "3g"

    const v14, 0x7f0a0c69

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v3, v3, 0x1

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "4g"

    const v14, 0x7f0a0c68

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "ent1"

    const v14, 0x7f0a0c6a

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_1
    iget-boolean v12, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v12, :cond_2

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "wifi"

    const v14, 0x7f0a0c64

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_2
    iget-boolean v12, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v12, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "ethernet"

    const v14, 0x7f0a0c65

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_3
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v12}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v12

    if-nez v12, :cond_8

    move v6, v10

    :goto_1
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v12}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v12

    if-le v12, v10, :cond_9

    move v5, v10

    :goto_2
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v5, :cond_a

    :goto_3
    invoke-virtual {v10, v11}, Landroid/widget/TabWidget;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    :goto_4
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    :cond_4
    :goto_5
    return-void

    :cond_5
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v7

    const-string v12, "DataUsage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateTabs(),phoneCount ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-le v7, v10, :cond_7

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v7, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSimName(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x1020006

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v0, v12, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v0

    float-to-int v9, v12

    invoke-virtual {v8, v11, v11, v9, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "mobile"

    const v14, 0x7f0a0c66

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    :cond_8
    move v6, v11

    goto/16 :goto_1

    :cond_9
    move v5, v11

    goto/16 :goto_2

    :cond_a
    const/16 v11, 0x8

    goto/16 :goto_3

    :cond_b
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    goto/16 :goto_5
.end method

.method private updateView()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bg_traffic_service_state"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuBackgroundTraffic true : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuBackgroundTraffic false : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuBackgroundTraffic else : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method byteToLong([BII)J
    .locals 10

    const-wide/16 v2, 0x0

    array-length v1, p1

    if-ge v1, p3, :cond_0

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    add-int/lit8 v0, p3, -0x1

    :goto_1
    if-lt v0, p2, :cond_1

    const/16 v1, 0x8

    shl-long v6, v2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long v2, v6, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-wide v4, v2

    goto :goto_0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVolte()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "enterprise_policy"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_1
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    :cond_2
    const-string v5, "SPR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "VMU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "BST"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "XAS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    :cond_4
    const-string v5, "TMB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    :cond_5
    const-string v5, "ATT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->isATT:Z

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v5

    if-eqz v5, :cond_7

    sput-boolean v6, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    :cond_7
    sget-boolean v5, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v5, :cond_8

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->connectToRilService_lifetime()V

    :cond_8
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v5, "netstats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "data_usage"

    invoke-virtual {v5, v8, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v5, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v5, v8}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v5}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "DataUsage"

    const-string v8, "No bandwidth control; leaving"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "show_wifi"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "show_ethernet"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v8, "show_wifi"

    iget-boolean v9, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "data_usage_display_unit"

    const/4 v9, 0x2

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3, v10, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.skt.apra.action.SERVICE_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "toddler_mode_switch"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v8, 0x64

    if-lt v5, v8, :cond_d

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    return-void

    :catch_0
    move-exception v1

    const-string v5, "DataUsage"

    const-string v8, "No bandwidth control; leaving"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    :cond_d
    move v5, v7

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f120003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v0, :cond_0

    const v0, 0x7f100608

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 28

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v14

    const v3, 0x7f040084

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    new-instance v3, Lcom/android/settings/net/UidDetailProvider;

    invoke-direct {v3, v14}, Lcom/android/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    const v3, 0x1020012

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const v3, 0x7f100140

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    const v3, 0x1020013

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    const v3, 0x102000a

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v3

    const/high16 v4, 0x2000000

    if-ne v3, v4, :cond_8

    const/16 v25, 0x1

    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const v3, 0x7f040081

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v3, 0x7f0d000c

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0d001c

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0d0017

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v6, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f10013a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f10013b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/high16 v4, 0x7f100000

    const-string v5, "data_usage_enable_mobile"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v14}, Lcom/android/settings/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/view/View;

    const/high16 v4, 0x7f100000

    const-string v5, "data_roaming_enable_mobile"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {v14}, Lcom/android/settings/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    new-instance v3, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/high16 v4, 0x7f100000

    const-string v5, "data_usage_confirm_boot"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/high16 v4, 0x7f100000

    const-string v5, "data_usage_disable_mobile_limit"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v3

    if-nez v3, :cond_b

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    const/high16 v4, 0x7f100000

    const-string v5, "app_data_restriction"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    const v4, 0x7f0a1609

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataUsageNoPopup()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.app.sreminder"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "lifeservice.category.OP"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    if-eqz v13, :cond_e

    const/16 v20, 0x0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ","

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    array-length v0, v3

    move/from16 v20, v0

    :cond_6
    const/16 v22, 0x0

    :try_start_1
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.app.sreminder"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v22

    :goto_6
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v22, :cond_d

    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "com.samsung.android.app.sreminder"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v16

    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    const v4, 0x7f0a1607

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto/16 :goto_4

    :catch_0
    move-exception v15

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_1
    move-exception v15

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    const/4 v4, 0x0

    aget-object v4, v19, v4

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    const/4 v4, 0x1

    aget-object v4, v19, v4

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    const v4, 0x7f0200f2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    const v4, 0x7f0a0c93

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_f
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    const v4, 0x7f0200f2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    const v4, 0x7f0a0c94

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_10
    const v3, 0x7f04014d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    const v4, 0x7f0a0c95

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_11
    const v3, 0x7f04007f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const/high16 v4, 0x7f100000

    const-string v5, "data_usage_cycle"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v4, 0x7f100133

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const v4, 0x7f0a0c49

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {v3, v14}, Lcom/android/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v4, 0x7f100134

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f10012c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const-wide v4, 0x18fff00000L

    const-wide v8, 0x1900000000L

    invoke-virtual {v3, v4, v5, v8, v9}, Lcom/android/settings/widget/ChartDataUsageView;->setMaximumSetableValue(JJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f100135

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v4, 0x7f100060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v4, 0x7f100136

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v4, 0x7f100137

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v4, 0x7f100138

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v4, 0x7f100139

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v4, 0x7f100067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f10013c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f10013e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f10013d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/DataUsageSummary$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/DataUsageSummary$8;-><init>(Lcom/android/settings/DataUsageSummary;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v3, "TMB"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f10013c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0f34

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    const-string v3, "user"

    invoke-virtual {v14, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/UserManager;

    new-instance v3, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v4, v5}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/settings/net/UidDetailProvider;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->mLimitCheck:Z

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "mobile_data_question"

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_14

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    if-eqz v3, :cond_12

    invoke-static {v14}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-object v27

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f10013d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_14
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    :cond_0
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 17

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v14, 0x1

    :goto_2
    if-eqz v14, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_3

    :sswitch_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v8, 0x1

    :goto_4
    if-eqz v8, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->show(Lcom/android/settings/DataUsageSummary;)V

    :goto_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_5

    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "show_wifi"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "SHWI"

    const/16 v5, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "SHWI"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "show_ethernet"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    :sswitch_5
    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "gsm.sim.currentcardstatus"

    const/4 v3, 0x0

    const-string v4, "9"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "gsm.sim.currentcardstatus"

    const/4 v3, 0x1

    const-string v4, "9"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "CDMA"

    invoke-static {v2}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/4 v2, 0x3

    if-ne v15, v2, :cond_8

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettingsTab"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v13, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9

    :cond_9
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0a0c8d

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0a0c8d

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_b

    :sswitch_8
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "SyncState"

    const-string v3, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0f38

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00ce

    sget v4, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v5, Lcom/android/settings/DataUsageSummary$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/DataUsageSummary$11;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_c

    :sswitch_9
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget v2, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:section"

    const-string v3, "data_usage_vzw_spr"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    :try_start_1
    iget v2, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:appid"

    const-string v3, "data_usage"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100601 -> :sswitch_2
        0x7f100602 -> :sswitch_1
        0x7f100603 -> :sswitch_3
        0x7f100604 -> :sswitch_4
        0x7f100605 -> :sswitch_7
        0x7f100606 -> :sswitch_5
        0x7f100607 -> :sswitch_6
        0x7f100608 -> :sswitch_8
        0x7f100609 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/DataUsageSummary;->isATT:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-nez v1, :cond_2

    const-string v9, "DataUsage"

    const-string v10, "onPrepareOptionsMenu : context null "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-string v9, "phone"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    const v9, 0x7f100603

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_c

    const/4 v9, 0x1

    :goto_2
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    const v9, 0x7f100604

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_e

    const/4 v9, 0x1

    :goto_4
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    const v9, 0x7f100602

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v9, :cond_3

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v4, :cond_10

    if-nez v0, :cond_10

    const/4 v9, 0x1

    :goto_6
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v9, 0x7f100601

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getBackgroundTrafficChecked()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getBackgroundTrafficEnabled()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    const-string v9, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPrepareOptionsMenu mMenuBackgroundTraffic : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "bg_traffic_service_state"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_5
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v9, :cond_11

    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_8
    const v9, 0x7f100605

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_8
    if-nez v0, :cond_13

    const/4 v9, 0x1

    :goto_9
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_a
    const v9, 0x7f100606

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v9, 0x7f100607

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v9, 0x7f100609

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0d41

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {v1, v2, v3}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    :goto_b
    iget-boolean v9, p0, Lcom/android/settings/DataUsageSummary;->isKnoxmode:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    const-string v9, "TFN"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    const-string v9, "AIO"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    goto/16 :goto_1

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_d
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_f
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_11
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_12
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_9

    :cond_14
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.samsung.helphub"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isSupportHelpAllNAVender()Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    :cond_16
    sget-boolean v9, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v9, :cond_17

    sget-boolean v9, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v9, :cond_18

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.samsung.helphub"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_18

    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    :cond_18
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b
.end method

.method public onResume()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onResume()V

    const-string v4, "DataUsage"

    const-string v7, "onResume"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "mobile_data"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "enterprise_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v1, v6}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v7

    invoke-static {v4, v7}, Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v7}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v4}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    :cond_2
    :goto_1
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->mIsIMSInitialized:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    sput-object v4, Lcom/android/settings/DataUsageSummary;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    invoke-static {v6, v0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/android/settings/DataUsageSummary;->isVolteVTOnCommonIms:Z

    sput-boolean v5, Lcom/android/settings/DataUsageSummary;->mIsIMSInitialized:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/settings/DataUsageSummary$9;

    invoke-direct {v5, p0}, Lcom/android/settings/DataUsageSummary$9;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v4, Lcom/android/settings/DataUsageSummary$10;

    invoke-direct {v4, p0}, Lcom/android/settings/DataUsageSummary$10;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DataUsageSummary$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isVolte()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isATT:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x800

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v4, v6

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onStop()V

    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    const-string v0, "DataUsage"

    const-string v1, "onStop: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v7, "persist.sys.restrict_background"

    if-eqz p1, :cond_2

    const-string v4, "true"

    :goto_0
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v2, p1

    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_3

    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0106

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    :goto_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    if-eqz p1, :cond_4

    move v4, v5

    :goto_2
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/settings/DataUsageSummary$15;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/DataUsageSummary$15;-><init>(Lcom/android/settings/DataUsageSummary;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    const-string v4, "false"

    goto :goto_0

    :cond_3
    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0745

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2
.end method
