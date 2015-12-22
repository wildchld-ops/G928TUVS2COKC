.class public Lcom/android/phone/NetworkNotificationUI;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;,
        Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SHIP_BUILD:Z

.field private static final VDBG:Z

.field private static isOTAstarted:Z

.field private static mAutoTimesetDialog:Landroid/app/AlertDialog;

.field private static mCarrierLockWarningDialog:Landroid/app/AlertDialog;

.field protected static mCheckBox:Landroid/widget/CheckBox;

.field private static mIsRegistRejectEnabled:Z


# instance fields
.field private AttacReject_121315:Z

.field private AttacReject_161722:Z

.field private AttacReject_ByPass:Z

.field private final LTE_THROUGHPUT_RESULT:Ljava/lang/String;

.field PrevLteRejectCause:I

.field PrevRtsIdleValue:I

.field private final THROUGHPUT_FILEPATH:Ljava/lang/String;

.field currRejectMcc:Ljava/lang/String;

.field currRejectMnc:Ljava/lang/String;

.field private hasAttacReject:Z

.field private isRoamingDataset:Z

.field private loggingStopByRadioPwrOff:Z

.field private m3gwarningPopup:Z

.field private mAirplaneMode:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertDialogDataKey:Landroid/app/AlertDialog;

.field private mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mAutoUpdate:Landroid/view/View;

.field private mBackGroundData:Landroid/view/View;

.field private mBackGroundMsgView:Landroid/widget/TextView;

.field private mCarrierLockWarningListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mCheckableClicked:Landroid/view/View$OnClickListener;

.field private mCheckingMobilityWarring:Z

.field private final mContext:Landroid/content/Context;

.field private mDataConnectSelectDialog:Landroid/app/AlertDialog;

.field private mDataConnectSelectListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataRoamingUseSwtich:Landroid/widget/Switch;

.field private mDataSelectionByDataKeyListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDataState:I

.field private mDataUsage:Landroid/view/View;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mNetworkRegNotiDialog:Landroid/app/AlertDialog;

.field private mNetworkRegNotiListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

.field private mNoservicePopupSelectionNagativeButton:Z

.field private mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

.field private mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNotifyRTSDialog:Landroid/app/AlertDialog;

.field private mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrevDataState:I

.field private mRoamDataWarnigListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSaveLock:Ljava/lang/Object;

.field private mSixModeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private networkRejectCauseCS:I

.field private networkRejectCauseIdle:I

.field private networkRejectCausePS:I

.field private networkStatusValue:I

.field public newSS:Landroid/telephony/ServiceState;

.field private phone:Lcom/android/internal/telephony/Phone;

.field prevRejectMcc:Ljava/lang/String;

.field prevRejectMnc:Ljava/lang/String;

.field rejectedPlmn:Ljava/lang/String;

.field private final roamingCurrentOperator:I

.field private final roamingNetScanNotiId:I

.field private roamingRegFailNoti:Z

.field private final roamingRegFailNotiId:I

.field private final roamingRtsNotiId:I

.field rtsCsValue:I

.field rtsIdleValue:I

.field rtsPsValue:I

.field rtsStatusValue:I

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/phone/NetworkNotificationUI;->VDBG:Z

    const-string v0, "true"

    const-string v3, "ro.product_ship"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z

    sput-object v5, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    sput-object v5, Lcom/android/phone/NetworkNotificationUI;->mCarrierLockWarningDialog:Landroid/app/AlertDialog;

    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    sput-boolean v2, Lcom/android/phone/NetworkNotificationUI;->isOTAstarted:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    const-string v1, "com.android.action.LTE_THROUGHPUT_RESULT"

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->LTE_THROUGHPUT_RESULT:Ljava/lang/String;

    const-string v1, "data/log/ThroughPutResultLog.txt"

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->THROUGHPUT_FILEPATH:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mSaveLock:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mCheckingMobilityWarring:Z

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->PrevRtsIdleValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->PrevLteRejectCause:I

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->loggingStopByRadioPwrOff:Z

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$1;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    iput-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->phone:Lcom/android/internal/telephony/Phone;

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->networkStatusValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->networkRejectCauseIdle:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->networkRejectCauseCS:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->networkRejectCausePS:I

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->hasAttacReject:Z

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->AttacReject_121315:Z

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->AttacReject_ByPass:Z

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->AttacReject_161722:Z

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$1;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$2;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mSixModeIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$3;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$3;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$4;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$4;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$7;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$7;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$8;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$8;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mRoamDataWarnigListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$9;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$9;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$10;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$10;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mCheckableClicked:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$15;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$15;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mCarrierLockWarningListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$18;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$18;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataSelectionByDataKeyListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$20;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$20;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$22;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$22;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$23;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$23;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$26;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$26;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    const v1, 0xd903

    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNotiId:I

    const v1, 0xd904

    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->roamingCurrentOperator:I

    const v1, 0xd905

    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRtsNotiId:I

    const v1, 0xd906

    iput v1, p0, Lcom/android/phone/NetworkNotificationUI;->roamingNetScanNotiId:I

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    new-instance v1, Lcom/android/phone/NetworkNotificationUI$30;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$30;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v1, "change_network_mode_with_ctc_card_for_six_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mSixModeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const-string v1, "prompt_to_data_roaming"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_1
    :goto_0
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.action.NSRI_TOAST_CMD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.action.LTE_THROUGHPUT_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "prompt_to_data_roaming"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.server.status.regist_reject"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.status.regist_reject_disable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.DATA_NETWORK_KEY_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "android.intent.action.MANUAL_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LTE_REJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATA_AUTH_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATA_CONNECT_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.status.dataselect_enable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LGT_REBOOT_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LTE_REJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final LGTRebootPopup()V
    .locals 7

    const v6, 0x7f0a0566

    const-string v4, "NetworkNotificationUI"

    const-string v5, "LGTRebootPopup()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0069

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/phone/NetworkNotificationUI$6;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkNotificationUI$6;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0567

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0565

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private final NotifyNetworkRegistering()V
    .locals 9

    const v5, 0x7f0a0540

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v6, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "NetworkNotificationUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NotifyNetworkRegistering rtsIdleValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v6, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v5, 0x7f0a053f

    :goto_1
    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    const v5, 0x7f0a0546

    goto :goto_1

    :sswitch_2
    const v5, 0x7f0a0547

    goto :goto_1

    :sswitch_3
    const v5, 0x7f0a0540

    goto :goto_1

    :sswitch_4
    const v5, 0x7f0a0543

    goto :goto_1

    :sswitch_5
    const v5, 0x7f0a0541

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0069

    invoke-direct {v2, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$21;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$21;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0383

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0090

    invoke-virtual {v6, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xfe -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkNotificationUI;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/NetworkNotificationUI;Landroid/net/NetworkPolicyManager;)Landroid/net/NetworkPolicyManager;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/phone/NetworkNotificationUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->LGTRebootPopup()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/NetworkNotificationUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->saveLteThroughtputResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->displayCtcSimInSlot1WarningToast()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->displayCtcSimInSlot2WarningToast()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/NetworkNotificationUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->enableDataConnection(Z)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/NetworkNotificationUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataUsage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoUpdate:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/phone/NetworkNotificationUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->setRoamingButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundMsgView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/phone/NetworkNotificationUI;->mCarrierLockWarningDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->addRoamingRegFailNotification()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showNetworkRegNotiPopUp()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->NotifyNetworkRegistering()V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkNotificationUI;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showDataSelectionPopUp()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->getDataSelectionEnableSet()Z

    move-result v0

    return v0
.end method

.method private addRoamingRegFailNotification()V
    .locals 13

    const v12, 0x108008a

    const v11, 0xd903

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    sget-boolean v6, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NetworkNotificationUI"

    const-string v7, "addRoamingRegFailNotification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v10, :cond_1

    iget-boolean v6, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    if-eqz v6, :cond_3

    :cond_1
    sget-boolean v6, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "NetworkNotificationUI"

    const-string v7, "addRoamingRegFailNotification Sim Absent.. Skip Notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v3, Landroid/app/Notification;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v12, v9, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.mobilenetworks.kor.NetworkOperators"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0383

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0633

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_4
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "1"

    const-string v7, "ril.IsManualSelection"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingNetScanningNotification()V

    iput-boolean v10, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0557

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0a055b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.mobilenetworks.kor.NetworkOperators"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-boolean v6, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "NetworkNotificationUI"

    const-string v7, "addRoamingRegFailNotification_LGT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
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

.method private final displayCtcSimInSlot1WarningToast()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "NetworkNotificationUI"

    const-string v3, "displayCtcSimInSlot1WarningToast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0787

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final displayCtcSimInSlot2WarningToast()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "NetworkNotificationUI"

    const-string v3, "displayCtcSimInSlot2WarningToast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0788

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private dissmissRTSPopup()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkNotificationUI"

    const-string v1, "dissmissRTSPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkNotificationUI"

    const-string v1, "mNotifyRTSDialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRTSNotification()V

    :cond_3
    return-void
.end method

.method private enableDataConnection(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getDataSelectionEnableSet()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataSelectionPopupIsSet()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_question"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFactoryMode()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NetworkNotificationUI"

    const-string v3, "User Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v1, "OFF"

    const-string v2, "NetworkNotificationUI"

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "NetworkNotificationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFactoryMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isDefaultImei()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "357858010034783"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "000000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "004400152020002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "100000000000116"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final isLGTSIM()Z
    .locals 4

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.simtype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOtaRegistering()Z
    .locals 7

    const/4 v4, 0x0

    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v6, "UsimDownload"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "Download"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    const-string v5, " - isOTADownload= true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v5, "true"

    const-string v6, "ril.domesticOtaStart"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, " - domesticOtaStart= true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v5, "KtfNumberReg"

    const-string v6, "ril.domesticOta"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, " - domesticOta= KtfNumberReg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v5, "RefreshReset"

    const-string v6, "ril.domesticOta"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, " - domesticOta= RefreshReset"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "19"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, " - SKT simType= 19"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "18"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, " - LGT simType= 18"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "NetworkNotificationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOtaRegistering is false due to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_6
    return v4
.end method

.method private final isRoamingArea()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    const-string v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v6, "oversea"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const-string v6, "domestic"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const-string v6, "ril.rejectedPlmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "NetworkNotificationUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rejected PLMN = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "450"

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isLGTSIM()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isSKTSIM()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "NetworkNotificationUI"

    const-string v5, "isRoamingArea NullPointerException : "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isRtsPopupAllowed()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRegistRejectEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDefaultImei:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isDefaultImei()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOtaRegistering:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isDefaultImei()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->getFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isSKTSIM()Z
    .locals 5

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NetworkNotificationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril is skt simOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ril.simtype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "45005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final notify3gWarning()V
    .locals 5

    const-string v1, ""

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0069

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v3, "NetworkNotificationUI"

    const-string v4, "notify3gWarning Toast Display"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0459

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0457

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0453

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final notifyRoaming()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a03ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private refleshRTSValue()Z
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "ril.skt.network_regist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Idle"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    :cond_0
    sget-boolean v6, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "NetworkNotificationUI"

    const-string v8, "ril is empty or error"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v6, v7

    :goto_0
    return v6

    :cond_2
    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RTSValues="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v8, ";"

    const/4 v9, 0x4

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v4, v7

    const-string v8, "Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v4, v6

    const-string v8, "Idle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const-string v8, "CS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    aget-object v7, v4, v7

    const-string v8, "PS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    aget-object v7, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    goto :goto_0
.end method

.method private removeRTSNotification()V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkNotificationUI"

    const-string v2, "removeRTSNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0xd905

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private removeRoamingNetScanningNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0xd906

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private saveLteThroughtputResult(Ljava/lang/String;)V
    .locals 13

    new-instance v5, Ljava/io/File;

    const-string v9, "data/log/ThroughPutResultLog.txt"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy.MM.dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v3, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v9, "delete"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v4, :cond_0

    const-string v9, "NetworkNotificationUI"

    const-string v10, "mThroughPut_LogFile.delete"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI;->mSaveLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const-string v9, "data/log/ThroughPutResultLog.txt"

    const/4 v11, 0x1

    invoke-direct {v8, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    const-string v9, "\n"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v11, "chmod 644 data/log/ThroughPutResultLog.txt"

    invoke-virtual {v9, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v8

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v2

    :try_start_6
    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Write FileNotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto/16 :goto_0

    :catch_3
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close NullPointerException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto/16 :goto_0

    :catch_4
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close NullPointerException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_6
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_7
    move-exception v2

    :try_start_8
    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Write IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_0

    :catch_8
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_9
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close NullPointerException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_a
    move-exception v2

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    :goto_2
    throw v9

    :catch_b
    move-exception v2

    const-string v10, "NetworkNotificationUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "close IOException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_c
    move-exception v2

    const-string v10, "NetworkNotificationUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "close NullPointerException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_d
    move-exception v2

    const-string v10, "NetworkNotificationUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "close Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_2
    move-exception v9

    move-object v7, v8

    goto/16 :goto_1
.end method

.method private sendDataConnectionIntent(ZZ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DataEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Roaming"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    :cond_0
    return-void
.end method

.method private setDataRoamingEnabled(Z)V
    .locals 4

    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataRoamingEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "data_roaming"

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setRoamingButtonEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showAutoTimeSetDialog()V
    .locals 6

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$25;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$25;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0069

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0406

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0407

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0404

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0405

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    sput-object v1, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showDataSelectionPopUp()V
    .locals 14

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0e0069

    invoke-direct {v3, v11, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v11, "layout_inflater"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v11, 0x7f040068

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v11, 0x7f1000d8

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v5, Lcom/android/phone/NetworkNotificationUI$5;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/NetworkNotificationUI$5;-><init>(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Context;)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "NetworkNotificationUI"

    const-string v12, "dialog without checkbox"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a045a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a045d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0463

    invoke-virtual {v11, v12, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0464

    invoke-virtual {v11, v12, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d3

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v11, -0x2

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setFocusable(Z)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setFocusable(Z)V

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "network_notification_dialog_do_not_show"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    const/4 v9, 0x1

    :goto_1
    const-string v11, "NetworkNotificationUI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dialog with checkbox, showDialog? : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a045a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0a045c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0463

    invoke-virtual {v11, v12, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0464

    invoke-virtual {v11, v12, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f100133

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    sput-object v11, Lcom/android/phone/NetworkNotificationUI;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v11, Lcom/android/phone/NetworkNotificationUI;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v11, Lcom/android/phone/NetworkNotificationUI;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private final showLGTRoamingDataSelectionPopUp2_4()V
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0e0069

    invoke-direct {v2, v9, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v9, "layout_inflater"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v9, 0x7f040061

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v9, 0x7f100128

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0c002a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v12, "#ff"

    const-string v13, "#"

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0a045f

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v0, v13, v11

    invoke-virtual {v9, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v9, 0x7f10012b

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundMsgView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0a046e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v12, 0x7f0a0090

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/phone/NetworkNotificationUI$11;

    invoke-direct {v9, p0}, Lcom/android/phone/NetworkNotificationUI$11;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f10012a

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Switch;

    iput-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    const v9, 0x7f10012c

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v12, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    const-string v9, "data_roaming"

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    invoke-virtual {v12, v9}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;

    check-cast v9, Landroid/widget/Checkable;

    invoke-interface {v9, v11}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_1
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    invoke-virtual {v10}, Landroid/widget/Switch;->isChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundMsgView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    invoke-virtual {v10}, Landroid/widget/Switch;->isChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    new-instance v10, Lcom/android/phone/NetworkNotificationUI$12;

    invoke-direct {v10, p0}, Lcom/android/phone/NetworkNotificationUI$12;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_1
    move v9, v11

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;

    check-cast v9, Landroid/widget/Checkable;

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v10}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1
.end method

.method private showNetworkRegNotiPopUp()V
    .locals 7

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    if-eqz v5, :cond_2

    :cond_0
    sget-boolean v5, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "NetworkNotificationUI"

    const-string v6, "addRTSNotification Sim Absent.. Skip Notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0069

    invoke-direct {v1, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/phone/NetworkNotificationUI$29;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkNotificationUI$29;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0383

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0634

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0090

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a008e

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showNoServiceAndManualSelecionDialog()V
    .locals 6

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0069

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$19;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$19;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0544

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0545

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0404

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0405

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private final showRoamingDataSelectionPopUp()V
    .locals 15

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0e0069

    invoke-direct {v2, v11, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v11, "layout_inflater"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v12, "enterprise_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "NetworkNotificationUI"

    const-string v12, "Roaming Data disabled by admin"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showLGTRoamingDataSelectionPopUp2_4()V

    goto :goto_0

    :cond_2
    const-string v11, "feature_kor_open"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "feature_skt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const v11, 0x7f0400b4

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    const v11, 0x7f100124

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c002a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "#ff"

    const-string v13, "#"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0641

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0643

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0644

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0645

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f100127

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mDataUsage:Landroid/view/View;

    const v11, 0x7f100125

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoUpdate:Landroid/view/View;

    :goto_1
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mRoamDataWarnigListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d3

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const-string v11, "feature_skt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "feature_ktt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mDataUsage:Landroid/view/View;

    iget-object v12, p0, Lcom/android/phone/NetworkNotificationUI;->mCheckableClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoUpdate:Landroid/view/View;

    iget-object v12, p0, Lcom/android/phone/NetworkNotificationUI;->mCheckableClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/phone/NetworkNotificationUI;->setRoamingButtonEnable(Z)V

    :cond_6
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_7
    const-string v11, "feature_ktt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const v11, 0x7f040060

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8
    const v11, 0x7f100124

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c002a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "#ff"

    const-string v13, "#"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0708

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0709

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0644

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0645

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f100127

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mDataUsage:Landroid/view/View;

    const v11, 0x7f100125

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoUpdate:Landroid/view/View;

    goto/16 :goto_1

    :cond_9
    const-string v11, "prompt_to_data_roaming"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const v11, 0x7f0a0383

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0456

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a00f0

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a00f1

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_a
    const v11, 0x7f0a0383

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0458

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a00f0

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a00f1

    iget-object v13, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dataConnectionStateChanged(I)V
    .locals 3

    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsWifiConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m3gwarningPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    :cond_1
    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    return-void
.end method

.method public serviceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 12

    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->VDBG:Z

    if-eqz v8, :cond_0

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceStateChanged-S:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eqz v8, :cond_15

    :cond_1
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_15

    const/4 v2, 0x1

    :goto_0
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iput-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhone.isNetworkRoaming() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "true"

    const-string v9, "persist.sys.restrict_background"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "NetworkNotificationUI"

    const-string v9, "RestrictBackground OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v8, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "ENABLED"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z

    if-nez v8, :cond_4

    :cond_4
    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v2, :cond_6

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "persist_sys_rplmn"

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RPLMN :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , roaming :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "persist_sys_rplmn"

    const-string v9, "domestic"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_1
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "20"

    const-string v9, "ril.simtype"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v2, :cond_7

    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.samsung.intent.action.REGIST_HOME"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "0"

    const-string v9, "ril.IsManualSelection"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_8
    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v8, :cond_9

    const-string v8, "NetworkNotificationUI"

    const-string v9, "Reset mNoservicePopupSelectionNagativeButton for Switching to Automatic Selection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    :cond_a
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    if-nez v8, :cond_c

    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v8, :cond_b

    const-string v8, "NetworkNotificationUI"

    const-string v9, "send EVENT_MANUAL_SELECTION_NO_SVC msg"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x61a8

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "feature_kor_open"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V

    :cond_d
    :goto_2
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_f

    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v8, :cond_e

    const-string v8, "NetworkNotificationUI"

    const-string v9, "mNotifyNetworkRegisteringDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    :cond_f
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_12

    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v8, :cond_11

    const-string v8, "NetworkNotificationUI"

    const-string v9, "mNoServiceAndManualSelectionDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    :cond_12
    const-string v8, "hd_voice_network_prefer"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->checkKTHDVoice()V

    :cond_13
    const-string v8, "lost_phone_lock"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_14

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    iput-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/services/telephony/common/SystemDBInterface;->setLostPhoneLock(Z)V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.phone.Emergencydialer.LOST_PHONE_UNLOCK"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v8, "NetworkNotificationUI"

    const-string v9, "onServiceStateChanged : COMMAND_LOSTPHONE_UNLOCK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_16
    const-string v8, "domestic"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_17
    const-string v8, "persist_sys_rplmn"

    const-string v9, "oversea"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V

    goto/16 :goto_1

    :cond_18
    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_19
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1a

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_d

    :cond_1a
    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    if-nez v8, :cond_d

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    if-nez v8, :cond_d

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    if-nez v8, :cond_d

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V

    goto/16 :goto_2
.end method

.method public updatePhoneStateListeners()V
    .locals 8

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

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

    invoke-direct {p0, v4, v3}, Lcom/android/phone/NetworkNotificationUI;->containsSubId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

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

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v2, Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;-><init>(Lcom/android/phone/NetworkNotificationUI;I)V

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x40

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
